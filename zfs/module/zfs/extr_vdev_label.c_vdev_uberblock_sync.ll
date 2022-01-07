; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_uberblock_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_uberblock_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i32, %struct.TYPE_13__*, %struct.TYPE_14__** }
%struct.TYPE_13__ = type { i32 }

@VDEV_STATE_HEALTHY = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@MMP_BLOCKS_PER_LABEL = common dso_local global i32 0, align 4
@VDEV_LABELS = common dso_local global i32 0, align 4
@vdev_uberblock_sync_done = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_PROPAGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32)* @vdev_uberblock_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_uberblock_sync(i32* %0, i64* %1, %struct.TYPE_15__* %2, %struct.TYPE_14__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %16

16:                                               ; preds = %33, %5
  %17 = load i64, i64* %11, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i32*, i32** %6, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %28, i64 %29
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = load i32, i32* %10, align 4
  call void @vdev_uberblock_sync(i32* %23, i64* %24, %struct.TYPE_15__* %25, %struct.TYPE_14__* %31, i32 %32)
  br label %33

33:                                               ; preds = %22
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %11, align 8
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %123

44:                                               ; preds = %36
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %46 = call i32 @vdev_writeable(%struct.TYPE_14__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %123

49:                                               ; preds = %44
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @B_TRUE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %63 = call i32 @vdev_copy_uberblocks(%struct.TYPE_14__* %62)
  %64 = load i64, i64* @B_FALSE, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %55, %49
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @spa_multihost(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @MMP_BLOCKS_PER_LABEL, align 4
  br label %76

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = call i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_14__* %81)
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %82, %83
  %85 = srem i32 %80, %84
  store i32 %85, i32* %13, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %87 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_14__* %86)
  %88 = load i64, i64* @B_TRUE, align 8
  %89 = call i32* @abd_alloc_for_io(i32 %87, i64 %88)
  store i32* %89, i32** %14, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %92 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_14__* %91)
  %93 = call i32 @abd_zero(i32* %90, i32 %92)
  %94 = load i32*, i32** %14, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %96 = call i32 @abd_copy_from_buf(i32* %94, %struct.TYPE_15__* %95, i32 4)
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %117, %76
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @VDEV_LABELS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load i32*, i32** %14, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_14__* %106, i32 %107)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %110 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_14__* %109)
  %111 = load i32, i32* @vdev_uberblock_sync_done, align 4
  %112 = load i64*, i64** %7, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @ZIO_FLAG_DONT_PROPAGATE, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @vdev_label_write(i32* %102, %struct.TYPE_14__* %103, i32 %104, i32* %105, i32 %108, i32 %110, i32 %111, i64* %112, i32 %115)
  br label %117

117:                                              ; preds = %101
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %97

120:                                              ; preds = %97
  %121 = load i32*, i32** %14, align 8
  %122 = call i32 @abd_free(i32* %121)
  br label %123

123:                                              ; preds = %120, %48, %43
  ret void
}

declare dso_local i32 @vdev_writeable(%struct.TYPE_14__*) #1

declare dso_local i32 @vdev_copy_uberblocks(%struct.TYPE_14__*) #1

declare dso_local i64 @spa_multihost(i32) #1

declare dso_local i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_14__*) #1

declare dso_local i32* @abd_alloc_for_io(i32, i64) #1

declare dso_local i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @abd_zero(i32*, i32) #1

declare dso_local i32 @abd_copy_from_buf(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @vdev_label_write(i32*, %struct.TYPE_14__*, i32, i32*, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @abd_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
