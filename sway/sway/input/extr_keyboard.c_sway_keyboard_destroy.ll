; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_sway_keyboard_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_sway_keyboard_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_keyboard = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sway_keyboard_destroy(%struct.sway_keyboard* %0) #0 {
  %2 = alloca %struct.sway_keyboard*, align 8
  store %struct.sway_keyboard* %0, %struct.sway_keyboard** %2, align 8
  %3 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %4 = icmp ne %struct.sway_keyboard* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %8 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %13 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @xkb_keymap_unref(i64 %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %18 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @wl_list_remove(i32* %19)
  %21 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %22 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @wl_list_remove(i32* %23)
  %25 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %26 = call i32 @sway_keyboard_disarm_key_repeat(%struct.sway_keyboard* %25)
  %27 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %28 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @wl_event_source_remove(i32 %29)
  %31 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %32 = call i32 @free(%struct.sway_keyboard* %31)
  br label %33

33:                                               ; preds = %16, %5
  ret void
}

declare dso_local i32 @xkb_keymap_unref(i64) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @sway_keyboard_disarm_key_repeat(%struct.sway_keyboard*) #1

declare dso_local i32 @wl_event_source_remove(i32) #1

declare dso_local i32 @free(%struct.sway_keyboard*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
