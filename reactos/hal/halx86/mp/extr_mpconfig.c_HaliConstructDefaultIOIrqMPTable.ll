; ModuleID = '/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_mpconfig.c_HaliConstructDefaultIOIrqMPTable.c'
source_filename = "/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_mpconfig.c_HaliConstructDefaultIOIrqMPTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i32 }

@MPCTE_INTSRC = common dso_local global i32 0, align 4
@IOAPICMap = common dso_local global %struct.TYPE_5__* null, align 8
@INT_VECTORED = common dso_local global i32 0, align 4
@INT_EXTINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @HaliConstructDefaultIOIrqMPTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HaliConstructDefaultIOIrqMPTable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @MPCTE_INTSRC, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @IOAPICMap, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @INT_VECTORED, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %47, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  switch i32 %21, label %30 [
    i32 2, label %22
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 13
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  br label %47

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %20, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %47

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 2, %42 ]
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = call i32 @HaliMPIntSrcInfo(%struct.TYPE_4__* %4)
  br label %47

47:                                               ; preds = %43, %33, %28
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load i32, i32* @INT_EXTINT, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = call i32 @HaliMPIntSrcInfo(%struct.TYPE_4__* %4)
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @HaliMPIntSrcInfo(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
