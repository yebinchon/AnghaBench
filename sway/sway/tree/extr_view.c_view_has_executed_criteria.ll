; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_has_executed_criteria.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_has_executed_criteria.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.criteria** }
%struct.criteria = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_view*, %struct.criteria*)* @view_has_executed_criteria to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @view_has_executed_criteria(%struct.sway_view* %0, %struct.criteria* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_view*, align 8
  %5 = alloca %struct.criteria*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.criteria*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %4, align 8
  store %struct.criteria* %1, %struct.criteria** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %11 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %8
  %17 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %18 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.criteria**, %struct.criteria*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.criteria*, %struct.criteria** %21, i64 %23
  %25 = load %struct.criteria*, %struct.criteria** %24, align 8
  store %struct.criteria* %25, %struct.criteria** %7, align 8
  %26 = load %struct.criteria*, %struct.criteria** %7, align 8
  %27 = load %struct.criteria*, %struct.criteria** %5, align 8
  %28 = icmp eq %struct.criteria* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %35

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %8

34:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
