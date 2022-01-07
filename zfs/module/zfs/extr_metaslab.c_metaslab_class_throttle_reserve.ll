; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_class_throttle_reserve.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_class_throttle_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@METASLAB_MUST_RESERVE = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_ALLOCATING = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metaslab_class_throttle_reserve(%struct.TYPE_7__* %0, i32 %1, i32 %2, %struct.TYPE_6__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %16 = load i32, i32* @B_FALSE, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = call i32 @mutex_enter(i32* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i64 @zfs_refcount_count(i32* %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %5
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %41, %5
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %11, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @GANG_ALLOCATION(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @METASLAB_MUST_RESERVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %54, %50, %45
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %73, %59
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = call i64 @zfs_refcount_add(i32* %70, %struct.TYPE_6__* %71)
  store i64 %72, i64* %14, align 8
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %60

76:                                               ; preds = %60
  %77 = load i32, i32* @ZIO_FLAG_IO_ALLOCATING, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @B_TRUE, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %76, %54
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = call i32 @mutex_exit(i32* %85)
  %87 = load i32, i32* %12, align 4
  ret i32 %87
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @zfs_refcount_count(i32*) #1

declare dso_local i64 @GANG_ALLOCATION(i32) #1

declare dso_local i64 @zfs_refcount_add(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
