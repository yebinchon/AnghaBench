; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_state_erase_key.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_state_erase_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_shortcut_state = type { i64, i64*, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_shortcut_state*, i64)* @state_erase_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_erase_key(%struct.sway_shortcut_state* %0, i64 %1) #0 {
  %3 = alloca %struct.sway_shortcut_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sway_shortcut_state* %0, %struct.sway_shortcut_state** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %55, %2
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %11 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %20 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %19, i32 0, i32 3
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %26 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %25, i32 0, i32 3
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 %24, i64* %29, align 8
  %30 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %31 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %37 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %35, i64* %40, align 8
  br label %41

41:                                               ; preds = %18, %14
  %42 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %43 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %54

53:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %50
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %8

58:                                               ; preds = %8
  br label %59

59:                                               ; preds = %65, %58
  %60 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %61 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %67 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %71 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %70, i32 0, i32 3
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %74 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  store i64 0, i64* %76, align 8
  %77 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %78 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %81 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  store i64 0, i64* %83, align 8
  br label %59

84:                                               ; preds = %59
  %85 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %3, align 8
  %86 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
