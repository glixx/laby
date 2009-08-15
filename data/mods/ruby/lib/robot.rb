class Robot
  laby_name_Void = 0
  laby_name_Wall = 1
  laby_name_Rock = 2
  laby_name_Web = 3
  laby_name_Exit = 4

  def initialize
    perform "start"
    laby_name_ant
  end

  def output s
    puts s
    $stdout.flush
  end

  def input
    gets rescue ""
  end

  def perform action
    output action
    input
  end

  def laby_name_look
    tile = perform('look')
    self.class.const_get tile rescue "unknown tile : #{tile}"
  end

  def laby_name_left; perform 'left'; end
  def laby_name_right; perform 'right'; end
  def laby_name_forward; perform 'forward'; end
  def laby_name_take; perform 'take'; end
  def laby_name_drop; perform 'drop'; end
  def laby_name_door_open; perform 'open'; end
end