; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_state_add_button.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_state_add_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seatop_default_event = type { i64, i64* }

@SWAY_CURSOR_PRESSED_BUTTONS_CAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seatop_default_event*, i64)* @state_add_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @state_add_button(%struct.seatop_default_event* %0, i64 %1) #0 {
  %3 = alloca %struct.seatop_default_event*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.seatop_default_event* %0, %struct.seatop_default_event** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %8 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SWAY_CURSOR_PRESSED_BUTTONS_CAP, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %68

13:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %17 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %22 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp slt i64 %26, %27
  br label %29

29:                                               ; preds = %20, %14
  %30 = phi i1 [ false, %14 ], [ %28, %20 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %14

34:                                               ; preds = %29
  %35 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %36 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %42, %34
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %44 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %51 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 %49, i64* %54, align 8
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %6, align 8
  br label %38

57:                                               ; preds = %38
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %60 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64 %58, i64* %63, align 8
  %64 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %65 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %57, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
