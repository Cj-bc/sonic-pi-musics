use_bpm 100

in_thread(name: :bass) do
  loop do
    sample :drum_bass_hard, amp: 0.7
    sleep 0.5
    sample :drum_bass_hard, amp: 0.6
    sleep 1
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 1
    sample :drum_bass_hard
    sleep 0.5
  end
end

in_thread(name: :snare) do
  loop do
    sleep 1
    sample :drum_snare_soft
    sleep 0.8
    sample :drum_snare_soft
    sleep 0.5
    sample :drum_snare_soft, amp: 0.7
    sleep 0.7
    sample :drum_snare_soft
    sleep 0.8
    sample :drum_snare_soft
    sleep 0.2
  end
end

in_thread do
  use_synth :mod_fm
  play :d4
end

# vim: ft=ruby
