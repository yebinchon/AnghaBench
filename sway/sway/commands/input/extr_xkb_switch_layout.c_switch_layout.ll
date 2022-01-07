; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/input/extr_xkb_switch_layout.c_switch_layout.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/input/extr_xkb_switch_layout.c_switch_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlr_keyboard = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlr_keyboard*, i64)* @switch_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_layout(%struct.wlr_keyboard* %0, i64 %1) #0 {
  %3 = alloca %struct.wlr_keyboard*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.wlr_keyboard* %0, %struct.wlr_keyboard** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %3, align 8
  %7 = getelementptr inbounds %struct.wlr_keyboard, %struct.wlr_keyboard* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @xkb_keymap_num_layouts(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %3, align 8
  %16 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %3, align 8
  %17 = getelementptr inbounds %struct.wlr_keyboard, %struct.wlr_keyboard* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %3, align 8
  %21 = getelementptr inbounds %struct.wlr_keyboard, %struct.wlr_keyboard* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %3, align 8
  %25 = getelementptr inbounds %struct.wlr_keyboard, %struct.wlr_keyboard* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @wlr_keyboard_notify_modifiers(%struct.wlr_keyboard* %15, i32 %19, i32 %23, i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @xkb_keymap_num_layouts(i32) #1

declare dso_local i32 @wlr_keyboard_notify_modifiers(%struct.wlr_keyboard*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
