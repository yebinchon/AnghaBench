; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_uberblock_sync_list.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_uberblock_sync_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_uberblock_sync_list(%struct.TYPE_6__** %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %14, i64 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32* @zio_root(i32* %19, i32* null, i32* null, i32 %20)
  store i32* %21, i32** %10, align 8
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %36, %4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @vdev_uberblock_sync(i32* %27, i32* %11, i32* %28, %struct.TYPE_6__* %33, i32 %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @zio_wait(i32* %40)
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32* @zio_root(i32* %42, i32* null, i32* null, i32 %43)
  store i32* %44, i32** %10, align 8
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %66, %39
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i64 @vdev_writeable(%struct.TYPE_6__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load i32*, i32** %10, align 8
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @zio_flush(i32* %58, %struct.TYPE_6__* %63)
  br label %65

65:                                               ; preds = %57, %49
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %45

69:                                               ; preds = %45
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @zio_wait(i32* %70)
  %72 = load i32, i32* %11, align 4
  %73 = icmp sge i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @EIO, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i32 [ 0, %74 ], [ %76, %75 ]
  ret i32 %78
}

declare dso_local i32* @zio_root(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vdev_uberblock_sync(i32*, i32*, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i64 @vdev_writeable(%struct.TYPE_6__*) #1

declare dso_local i32 @zio_flush(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
