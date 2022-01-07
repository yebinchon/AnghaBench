; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_keypress.c_toggleKeyCode.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_keypress.c_toggleKeyCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KEYEVENTF_KEYUP = common dso_local global i32 0, align 4
@K_ALT = common dso_local global i32 0, align 4
@K_CONTROL = common dso_local global i32 0, align 4
@K_META = common dso_local global i32 0, align 4
@K_SHIFT = common dso_local global i32 0, align 4
@MOD_ALT = common dso_local global i32 0, align 4
@MOD_CONTROL = common dso_local global i32 0, align 4
@MOD_META = common dso_local global i32 0, align 4
@MOD_SHIFT = common dso_local global i32 0, align 4
@NX_KEYDOWN = common dso_local global i32 0, align 4
@NX_KEYUP = common dso_local global i32 0, align 4
@NX_SUBTYPE_AUX_CONTROL_BUTTONS = common dso_local global i32 0, align 4
@NX_SYSDEFINED = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@kCGEventKeyDown = common dso_local global i32 0, align 4
@kCGEventKeyUp = common dso_local global i32 0, align 4
@kCGSessionEventTap = common dso_local global i32 0, align 4
@kNXEventDataVersion = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @toggleKeyCode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
