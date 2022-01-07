; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_zap_allocation_data.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_zap_allocation_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@VDEV_BIAS_NONE = common dso_local global i64 0, align 8
@VDEV_BIAS_LOG = common dso_local global i64 0, align 8
@VDEV_ALLOC_BIAS_LOG = common dso_local global i8* null, align 8
@VDEV_BIAS_SPECIAL = common dso_local global i64 0, align 8
@VDEV_ALLOC_BIAS_SPECIAL = common dso_local global i8* null, align 8
@VDEV_BIAS_DEDUP = common dso_local global i64 0, align 8
@VDEV_ALLOC_BIAS_DEDUP = common dso_local global i8* null, align 8
@VDEV_TOP_ZAP_ALLOCATION_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @vdev_zap_allocation_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_zap_allocation_data(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @VDEV_BIAS_NONE, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @VDEV_BIAS_LOG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i8*, i8** @VDEV_ALLOC_BIAS_LOG, align 8
  br label %45

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @VDEV_BIAS_SPECIAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8*, i8** @VDEV_ALLOC_BIAS_SPECIAL, align 8
  br label %43

34:                                               ; preds = %28
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @VDEV_BIAS_DEDUP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i8*, i8** @VDEV_ALLOC_BIAS_DEDUP, align 8
  br label %41

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8* [ %39, %38 ], [ null, %40 ]
  br label %43

43:                                               ; preds = %41, %32
  %44 = phi i8* [ %33, %32 ], [ %42, %41 ]
  br label %45

45:                                               ; preds = %43, %26
  %46 = phi i8* [ %27, %26 ], [ %44, %43 ]
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VDEV_TOP_ZAP_ALLOCATION_BIAS, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @strlen(i8* %56)
  %58 = add nsw i64 %57, 1
  %59 = load i8*, i8** %8, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @zap_add(i32* %51, i32 %54, i32 %55, i32 1, i64 %58, i8* %59, i32* %60)
  %62 = call i32 @VERIFY0(i32 %61)
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @VDEV_BIAS_SPECIAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %45
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @VDEV_BIAS_DEDUP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66, %45
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @spa_activate_allocation_classes(%struct.TYPE_6__* %71, i32* %72)
  br label %74

74:                                               ; preds = %70, %66
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_add(i32*, i32, i32, i32, i64, i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @spa_activate_allocation_classes(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
