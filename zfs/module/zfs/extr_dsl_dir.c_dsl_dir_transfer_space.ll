; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_dir_transfer_space.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_dir_transfer_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32* }

@DD_USED_NUM = common dso_local global i64 0, align 8
@DD_FLAG_USED_BREAKDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dir_transfer_space(%struct.TYPE_5__* %0, i32 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @dmu_tx_is_syncing(i32* %11)
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @DD_USED_NUM, align 8
  %16 = icmp ult i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @DD_USED_NUM, align 8
  %21 = icmp ult i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DD_FLAG_USED_BREAKDOWN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26, %5
  br label %102

35:                                               ; preds = %26
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @dmu_buf_will_dirty(i32 %38, i32* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @mutex_enter(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %35
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp sge i32 %53, %54
  %56 = zext i1 %55 to i32
  br label %69

57:                                               ; preds = %35
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp sge i32 %64, %66
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %57, %46
  %70 = phi i32 [ %56, %46 ], [ %68, %57 ]
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @ABS(i32 %76)
  %78 = icmp sge i64 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ASSERT(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, %81
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %90
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = call i32 @mutex_exit(i32* %100)
  br label %102

102:                                              ; preds = %69, %34
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @ABS(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
