; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_copy_uberblocks.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_copy_uberblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@SCL_L2ARC = common dso_local global i32 0, align 4
@SCL_ZIO = common dso_local global i32 0, align 4
@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i64 0, align 8
@RW_READER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@VDEV_LABELS = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_PROPAGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @vdev_copy_uberblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_copy_uberblocks(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %11 = load i32, i32* @SCL_L2ARC, align 4
  %12 = load i32, i32* @SCL_ZIO, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %15 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* @SCL_STATE, align 8
  %23 = load i32, i32* @RW_READER, align 4
  %24 = call i64 @spa_config_held(i32 %21, i64 %22, i32 %23)
  %25 = load i64, i64* @SCL_STATE, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @FTAG, align 4
  %40 = load i32, i32* @RW_READER, align 4
  %41 = call i32 @spa_config_enter(i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_10__* %42)
  %44 = load i32, i32* @B_TRUE, align 4
  %45 = call i32* @abd_alloc_linear(i32 %43, i32 %44)
  store i32* %45, i32** %3, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32* @zio_root(i32 %48, i32* null, i32* null, i32 %49)
  store i32* %50, i32** %4, align 8
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %108, %1
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = call i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_10__* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %111

56:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32* @zio_root(i32 %59, i32* null, i32* null, i32 %60)
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_10__* %65, i32 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_10__* %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @vdev_label_read(i32* %62, %struct.TYPE_10__* %63, i32 0, i32* %64, i32 %67, i32 %69, i32* null, i32* null, i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = call i64 @zio_wait(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %56
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @abd_to_buf(i32* %76)
  %78 = call i64 @uberblock_verify(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75, %56
  %81 = load i32*, i32** %3, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_10__* %82)
  %84 = call i32 @abd_zero(i32* %81, i32 %83)
  br label %85

85:                                               ; preds = %80, %75
  store i32 2, i32* %10, align 4
  br label %86

86:                                               ; preds = %104, %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @VDEV_LABELS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %86
  %91 = load i32*, i32** %4, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32*, i32** %3, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_10__* %95, i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %99 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_10__* %98)
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @ZIO_FLAG_DONT_PROPAGATE, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @vdev_label_write(i32* %91, %struct.TYPE_10__* %92, i32 %93, i32* %94, i32 %97, i32 %99, i32* null, i32* null, i32 %102)
  br label %104

104:                                              ; preds = %90
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %86

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %51

111:                                              ; preds = %51
  %112 = load i32*, i32** %4, align 8
  %113 = call i64 @zio_wait(i32* %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @FTAG, align 4
  %119 = call i32 @spa_config_exit(i32 %116, i32 %117, i32 %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @abd_free(i32* %120)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(i32, i64, i32) #1

declare dso_local i32 @spa_config_enter(i32, i32, i32, i32) #1

declare dso_local i32* @abd_alloc_linear(i32, i32) #1

declare dso_local i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32* @zio_root(i32, i32*, i32*, i32) #1

declare dso_local i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_10__*) #1

declare dso_local i32 @vdev_label_read(i32*, %struct.TYPE_10__*, i32, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @zio_wait(i32*) #1

declare dso_local i64 @uberblock_verify(i32) #1

declare dso_local i32 @abd_to_buf(i32*) #1

declare dso_local i32 @abd_zero(i32*, i32) #1

declare dso_local i32 @vdev_label_write(i32*, %struct.TYPE_10__*, i32, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @spa_config_exit(i32, i32, i32) #1

declare dso_local i32 @abd_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
