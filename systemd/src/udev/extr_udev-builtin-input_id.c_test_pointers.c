
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_SLOT ;
 int ABS_PRESSURE ;
 int ABS_RX ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int BTN_DIGI ;
 int BTN_DPAD_RIGHT ;
 int BTN_DPAD_UP ;
 int BTN_JOYSTICK ;
 int BTN_MOUSE ;
 int BTN_STYLUS ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_PEN ;
 int BTN_TOUCH ;
 int BTN_TRIGGER_HAPPY1 ;
 int BTN_TRIGGER_HAPPY40 ;
 int EV_KEY ;
 int EV_REL ;
 int INPUT_PROP_ACCELEROMETER ;
 int INPUT_PROP_DIRECT ;
 int INPUT_PROP_POINTING_STICK ;
 int REL_X ;
 int REL_Y ;
 int test_bit (int,unsigned long const*) ;
 int udev_builtin_add_property (int *,int,char*,char*) ;

__attribute__((used)) static bool test_pointers(sd_device *dev,
                          const unsigned long* bitmask_ev,
                          const unsigned long* bitmask_abs,
                          const unsigned long* bitmask_key,
                          const unsigned long* bitmask_rel,
                          const unsigned long* bitmask_props,
                          bool test) {
        int button, axis;
        bool has_abs_coordinates = 0;
        bool has_rel_coordinates = 0;
        bool has_mt_coordinates = 0;
        bool has_joystick_axes_or_buttons = 0;
        bool is_direct = 0;
        bool has_touch = 0;
        bool has_3d_coordinates = 0;
        bool has_keys = 0;
        bool stylus_or_pen = 0;
        bool finger_but_no_pen = 0;
        bool has_mouse_button = 0;
        bool is_mouse = 0;
        bool is_touchpad = 0;
        bool is_touchscreen = 0;
        bool is_tablet = 0;
        bool is_joystick = 0;
        bool is_accelerometer = 0;
        bool is_pointing_stick= 0;

        has_keys = test_bit(EV_KEY, bitmask_ev);
        has_abs_coordinates = test_bit(ABS_X, bitmask_abs) && test_bit(ABS_Y, bitmask_abs);
        has_3d_coordinates = has_abs_coordinates && test_bit(ABS_Z, bitmask_abs);
        is_accelerometer = test_bit(INPUT_PROP_ACCELEROMETER, bitmask_props);

        if (!has_keys && has_3d_coordinates)
                is_accelerometer = 1;

        if (is_accelerometer) {
                udev_builtin_add_property(dev, test, "ID_INPUT_ACCELEROMETER", "1");
                return 1;
        }

        is_pointing_stick = test_bit(INPUT_PROP_POINTING_STICK, bitmask_props);
        stylus_or_pen = test_bit(BTN_STYLUS, bitmask_key) || test_bit(BTN_TOOL_PEN, bitmask_key);
        finger_but_no_pen = test_bit(BTN_TOOL_FINGER, bitmask_key) && !test_bit(BTN_TOOL_PEN, bitmask_key);
        for (button = BTN_MOUSE; button < BTN_JOYSTICK && !has_mouse_button; button++)
                has_mouse_button = test_bit(button, bitmask_key);
        has_rel_coordinates = test_bit(EV_REL, bitmask_ev) && test_bit(REL_X, bitmask_rel) && test_bit(REL_Y, bitmask_rel);
        has_mt_coordinates = test_bit(ABS_MT_POSITION_X, bitmask_abs) && test_bit(ABS_MT_POSITION_Y, bitmask_abs);


        if (has_mt_coordinates && test_bit(ABS_MT_SLOT, bitmask_abs) && test_bit(ABS_MT_SLOT - 1, bitmask_abs))
                has_mt_coordinates = 0;
        is_direct = test_bit(INPUT_PROP_DIRECT, bitmask_props);
        has_touch = test_bit(BTN_TOUCH, bitmask_key);
        if (!test_bit(BTN_JOYSTICK - 1, bitmask_key)) {
                for (button = BTN_JOYSTICK; button < BTN_DIGI && !has_joystick_axes_or_buttons; button++)
                        has_joystick_axes_or_buttons = test_bit(button, bitmask_key);
                for (button = BTN_TRIGGER_HAPPY1; button <= BTN_TRIGGER_HAPPY40 && !has_joystick_axes_or_buttons; button++)
                        has_joystick_axes_or_buttons = test_bit(button, bitmask_key);
                for (button = BTN_DPAD_UP; button <= BTN_DPAD_RIGHT && !has_joystick_axes_or_buttons; button++)
                        has_joystick_axes_or_buttons = test_bit(button, bitmask_key);
        }
        for (axis = ABS_RX; axis < ABS_PRESSURE && !has_joystick_axes_or_buttons; axis++)
                has_joystick_axes_or_buttons = test_bit(axis, bitmask_abs);

        if (has_abs_coordinates) {
                if (stylus_or_pen)
                        is_tablet = 1;
                else if (finger_but_no_pen && !is_direct)
                        is_touchpad = 1;
                else if (has_mouse_button)


                        is_mouse = 1;
                else if (has_touch || is_direct)
                        is_touchscreen = 1;
                else if (has_joystick_axes_or_buttons)
                        is_joystick = 1;
        } else if (has_joystick_axes_or_buttons) {
                is_joystick = 1;
        }

        if (has_mt_coordinates) {
                if (stylus_or_pen)
                        is_tablet = 1;
                else if (finger_but_no_pen && !is_direct)
                        is_touchpad = 1;
                else if (has_touch || is_direct)
                        is_touchscreen = 1;
        }

        if (!is_tablet && !is_touchpad && !is_joystick &&
            has_mouse_button &&
            (has_rel_coordinates ||
            !has_abs_coordinates))
                is_mouse = 1;

        if (is_pointing_stick)
                udev_builtin_add_property(dev, test, "ID_INPUT_POINTINGSTICK", "1");
        if (is_mouse)
                udev_builtin_add_property(dev, test, "ID_INPUT_MOUSE", "1");
        if (is_touchpad)
                udev_builtin_add_property(dev, test, "ID_INPUT_TOUCHPAD", "1");
        if (is_touchscreen)
                udev_builtin_add_property(dev, test, "ID_INPUT_TOUCHSCREEN", "1");
        if (is_joystick)
                udev_builtin_add_property(dev, test, "ID_INPUT_JOYSTICK", "1");
        if (is_tablet)
                udev_builtin_add_property(dev, test, "ID_INPUT_TABLET", "1");

        return is_tablet || is_mouse || is_touchpad || is_touchscreen || is_joystick || is_pointing_stick;
}
