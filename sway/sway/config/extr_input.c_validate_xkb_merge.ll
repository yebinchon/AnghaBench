; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_input.c_validate_xkb_merge.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_input.c_validate_xkb_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_config = type { i32 }
%struct.xkb_keymap = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_config*, %struct.input_config*, i8**)* @validate_xkb_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_xkb_merge(%struct.input_config* %0, %struct.input_config* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_config*, align 8
  %6 = alloca %struct.input_config*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.input_config*, align 8
  %9 = alloca %struct.xkb_keymap*, align 8
  store %struct.input_config* %0, %struct.input_config** %5, align 8
  store %struct.input_config* %1, %struct.input_config** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = call %struct.input_config* @new_input_config(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.input_config* %10, %struct.input_config** %8, align 8
  %11 = load %struct.input_config*, %struct.input_config** %5, align 8
  %12 = icmp ne %struct.input_config* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.input_config*, %struct.input_config** %8, align 8
  %15 = load %struct.input_config*, %struct.input_config** %5, align 8
  %16 = call i32 @merge_input_config(%struct.input_config* %14, %struct.input_config* %15)
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.input_config*, %struct.input_config** %8, align 8
  %19 = load %struct.input_config*, %struct.input_config** %6, align 8
  %20 = call i32 @merge_input_config(%struct.input_config* %18, %struct.input_config* %19)
  %21 = load %struct.input_config*, %struct.input_config** %8, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = call %struct.xkb_keymap* @sway_keyboard_compile_keymap(%struct.input_config* %21, i8** %22)
  store %struct.xkb_keymap* %23, %struct.xkb_keymap** %9, align 8
  %24 = load %struct.input_config*, %struct.input_config** %8, align 8
  %25 = call i32 @free_input_config(%struct.input_config* %24)
  %26 = load %struct.xkb_keymap*, %struct.xkb_keymap** %9, align 8
  %27 = icmp ne %struct.xkb_keymap* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %32

29:                                               ; preds = %17
  %30 = load %struct.xkb_keymap*, %struct.xkb_keymap** %9, align 8
  %31 = call i32 @xkb_keymap_unref(%struct.xkb_keymap* %30)
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %28
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.input_config* @new_input_config(i8*) #1

declare dso_local i32 @merge_input_config(%struct.input_config*, %struct.input_config*) #1

declare dso_local %struct.xkb_keymap* @sway_keyboard_compile_keymap(%struct.input_config*, i8**) #1

declare dso_local i32 @free_input_config(%struct.input_config*) #1

declare dso_local i32 @xkb_keymap_unref(%struct.xkb_keymap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
