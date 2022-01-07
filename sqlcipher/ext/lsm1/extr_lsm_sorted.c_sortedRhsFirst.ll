; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedRhsFirst.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedRhsFirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_13__*)* @sortedRhsFirst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sortedRhsFirst(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %11 = call i32 @segmentPtrEnd(%struct.TYPE_14__* %9, %struct.TYPE_13__* %10, i32 0)
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %52, %3
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @LSM_OK, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ false, %12 ], [ %20, %17 ]
  br i1 %22, label %23, label %56

23:                                               ; preds = %21
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @rtTopic(i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sortedKeyCompare(i32 %28, i32 %31, i32 %34, i32 %37, i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %23
  br label %56

52:                                               ; preds = %23
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = call i32 @segmentPtrAdvance(%struct.TYPE_14__* %53, %struct.TYPE_13__* %54, i32 0)
  store i32 %55, i32* %7, align 4
  br label %12

56:                                               ; preds = %51, %21
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @segmentPtrEnd(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @sortedKeyCompare(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtTopic(i32) #1

declare dso_local i32 @segmentPtrAdvance(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
