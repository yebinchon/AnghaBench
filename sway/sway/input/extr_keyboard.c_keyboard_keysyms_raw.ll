; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_keyboard_keysyms_raw.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_keyboard_keysyms_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_keyboard = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wlr_input_device* }
%struct.wlr_input_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sway_keyboard*, i32, i32**, i32*)* @keyboard_keysyms_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @keyboard_keysyms_raw(%struct.sway_keyboard* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.sway_keyboard*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.wlr_input_device*, align 8
  %10 = alloca i32, align 4
  store %struct.sway_keyboard* %0, %struct.sway_keyboard** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %12 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.wlr_input_device*, %struct.wlr_input_device** %16, align 8
  store %struct.wlr_input_device* %17, %struct.wlr_input_device** %9, align 8
  %18 = load %struct.wlr_input_device*, %struct.wlr_input_device** %9, align 8
  %19 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i32 @wlr_keyboard_get_modifiers(%struct.TYPE_6__* %20)
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.wlr_input_device*, %struct.wlr_input_device** %9, align 8
  %24 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @xkb_state_key_get_layout(i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.wlr_input_device*, %struct.wlr_input_device** %9, align 8
  %31 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32**, i32*** %7, align 8
  %38 = call i64 @xkb_keymap_key_get_syms_by_level(i32 %34, i32 %35, i32 %36, i32 0, i32** %37)
  ret i64 %38
}

declare dso_local i32 @wlr_keyboard_get_modifiers(%struct.TYPE_6__*) #1

declare dso_local i32 @xkb_state_key_get_layout(i32, i32) #1

declare dso_local i64 @xkb_keymap_key_get_syms_by_level(i32, i32, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
