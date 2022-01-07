; ModuleID = '/home/carl/AnghaBench/scrcpy/app/tests/extr_test_control_msg_serialize.c_main.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/tests/extr_test_control_msg_serialize.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @test_serialize_inject_keycode()
  %3 = call i32 (...) @test_serialize_inject_text()
  %4 = call i32 (...) @test_serialize_inject_text_long()
  %5 = call i32 (...) @test_serialize_inject_mouse_event()
  %6 = call i32 (...) @test_serialize_inject_scroll_event()
  %7 = call i32 (...) @test_serialize_back_or_screen_on()
  %8 = call i32 (...) @test_serialize_expand_notification_panel()
  %9 = call i32 (...) @test_serialize_collapse_notification_panel()
  %10 = call i32 (...) @test_serialize_get_clipboard()
  %11 = call i32 (...) @test_serialize_set_clipboard()
  %12 = call i32 (...) @test_serialize_set_screen_power_mode()
  ret i32 0
}

declare dso_local i32 @test_serialize_inject_keycode(...) #1

declare dso_local i32 @test_serialize_inject_text(...) #1

declare dso_local i32 @test_serialize_inject_text_long(...) #1

declare dso_local i32 @test_serialize_inject_mouse_event(...) #1

declare dso_local i32 @test_serialize_inject_scroll_event(...) #1

declare dso_local i32 @test_serialize_back_or_screen_on(...) #1

declare dso_local i32 @test_serialize_expand_notification_panel(...) #1

declare dso_local i32 @test_serialize_collapse_notification_panel(...) #1

declare dso_local i32 @test_serialize_get_clipboard(...) #1

declare dso_local i32 @test_serialize_set_clipboard(...) #1

declare dso_local i32 @test_serialize_set_screen_power_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
