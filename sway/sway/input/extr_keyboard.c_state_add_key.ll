; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_state_add_key.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_state_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_shortcut_state = type { i64, i64*, i64, i64* }

@SWAY_KEYBOARD_PRESSED_KEYS_CAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_shortcut_state*, i64, i64)* @state_add_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @state_add_key(%struct.sway_shortcut_state* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sway_shortcut_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sway_shortcut_state* %0, %struct.sway_shortcut_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %4, align 8
  %10 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SWAY_KEYBOARD_PRESSED_KEYS_CAP, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %91

15:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %4, align 8
  %19 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %4, align 8
  %24 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br label %31

31:                                               ; preds = %22, %16
  %32 = phi i1 [ false, %16 ], [ %30, %22 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %16

36:                                               ; preds = %31
  %37 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %4, align 8
  %38 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %44, %36
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %40
  %45 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %4, align 8
  %46 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %4, align 8
  %53 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %51, i64* %56, align 8
  %57 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %4, align 8
  %58 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %4, align 8
  %65 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %64, i32 0, i32 3
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %63, i64* %68, align 8
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %8, align 8
  br label %40

71:                                               ; preds = %40
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %4, align 8
  %74 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %72, i64* %77, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %4, align 8
  %80 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %79, i32 0, i32 3
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 %78, i64* %83, align 8
  %84 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %4, align 8
  %85 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %4, align 8
  %90 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %71, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
