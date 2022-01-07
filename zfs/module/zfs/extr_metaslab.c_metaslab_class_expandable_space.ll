; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_class_expandable_space.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_class_expandable_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i64, i64, %struct.TYPE_9__*, %struct.TYPE_8__** }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metaslab_class_expandable_space(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = load i32, i32* @SCL_VDEV, align 4
  %17 = load i32, i32* @FTAG, align 4
  %18 = load i32, i32* @RW_READER, align 4
  %19 = call i32 @spa_config_enter(%struct.TYPE_11__* %15, i32 %16, i32 %17, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %69, %1
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %29, i64 %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %6, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %7, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = call i32 @vdev_is_concrete(%struct.TYPE_8__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %26
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = icmp ne %struct.TYPE_10__* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %40, %26
  br label %69

52:                                               ; preds = %45
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = shl i64 1, %62
  %64 = call i64 @P2ALIGN(i64 %59, i64 %63)
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %52, %51
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %20

72:                                               ; preds = %20
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load i32, i32* @SCL_VDEV, align 4
  %77 = load i32, i32* @FTAG, align 4
  %78 = call i32 @spa_config_exit(%struct.TYPE_11__* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @spa_config_enter(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_8__*) #1

declare dso_local i64 @P2ALIGN(i64, i64) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
