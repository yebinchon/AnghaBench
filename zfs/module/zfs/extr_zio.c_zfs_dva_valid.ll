; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zfs_dva_valid.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zfs_dva_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, i32* }

@B_FALSE = common dso_local global i32 0, align 4
@vdev_hole_ops = common dso_local global i32 0, align 4
@vdev_missing_ops = common dso_local global i32 0, align 4
@SPA_GANGBLOCKSIZE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_dva_valid(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @DVA_GET_VDEV(i32* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %14, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @B_FALSE, align 4
  store i32 %22, i32* %4, align 4
  br label %74

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %28, i64 %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %9, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = icmp eq %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @B_FALSE, align 4
  store i32 %35, i32* %4, align 4
  br label %74

36:                                               ; preds = %23
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, @vdev_hole_ops
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @B_FALSE, align 4
  store i32 %42, i32* %4, align 4
  br label %74

43:                                               ; preds = %36
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, @vdev_missing_ops
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @B_FALSE, align 4
  store i32 %49, i32* %4, align 4
  br label %74

50:                                               ; preds = %43
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @DVA_GET_OFFSET(i32* %51)
  store i64 %52, i64* %10, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i64 @DVA_GET_ASIZE(i32* %53)
  store i64 %54, i64* %11, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @BP_IS_GANG(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %61 = call i64 @vdev_psize_to_asize(%struct.TYPE_7__* %59, i32 %60)
  store i64 %61, i64* %11, align 8
  br label %62

62:                                               ; preds = %58, %50
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %63, %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ugt i64 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @B_FALSE, align 4
  store i32 %71, i32* %4, align 4
  br label %74

72:                                               ; preds = %62
  %73 = load i32, i32* @B_TRUE, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %70, %48, %41, %34, %21
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @DVA_GET_VDEV(i32*) #1

declare dso_local i64 @DVA_GET_OFFSET(i32*) #1

declare dso_local i64 @DVA_GET_ASIZE(i32*) #1

declare dso_local i64 @BP_IS_GANG(i32*) #1

declare dso_local i64 @vdev_psize_to_asize(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
