; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_state_erase_button.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_state_erase_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seatop_default_event = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seatop_default_event*, i64)* @state_erase_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @state_erase_button(%struct.seatop_default_event* %0, i64 %1) #0 {
  %3 = alloca %struct.seatop_default_event*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.seatop_default_event* %0, %struct.seatop_default_event** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %10 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %7
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %19 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %25 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 %23, i64* %28, align 8
  br label %29

29:                                               ; preds = %17, %13
  %30 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %31 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %38, %29
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %7

45:                                               ; preds = %7
  br label %46

46:                                               ; preds = %52, %45
  %47 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %48 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %54 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %58 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %61 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  store i64 0, i64* %63, align 8
  br label %46

64:                                               ; preds = %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
