; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_fastwrite_mark.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_fastwrite_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32 }

@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @metaslab_fastwrite_mark(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = call i32 @BP_GET_NDVAS(%struct.TYPE_10__* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = call i64 @BP_GET_PSIZE(%struct.TYPE_10__* %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i32 @BP_IS_HOLE(%struct.TYPE_10__* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = call i32 @BP_IS_EMBEDDED(%struct.TYPE_10__* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = icmp sgt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @SCL_VDEV, align 4
  %35 = load i32, i32* @FTAG, align 4
  %36 = load i32, i32* @RW_READER, align 4
  %37 = call i32 @spa_config_enter(i32* %33, i32 %34, i32 %35, i32 %36)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %57, %2
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @DVA_GET_VDEV(i32* %47)
  %49 = call %struct.TYPE_9__* @vdev_lookup_top(i32* %43, i32 %48)
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %9, align 8
  %50 = icmp eq %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %57

52:                                               ; preds = %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @atomic_add_64(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %52, %51
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %38

60:                                               ; preds = %38
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @SCL_VDEV, align 4
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i32 @spa_config_exit(i32* %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @BP_GET_NDVAS(%struct.TYPE_10__*) #1

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_IS_HOLE(%struct.TYPE_10__*) #1

declare dso_local i32 @BP_IS_EMBEDDED(%struct.TYPE_10__*) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @vdev_lookup_top(i32*, i32) #1

declare dso_local i32 @DVA_GET_VDEV(i32*) #1

declare dso_local i32 @atomic_add_64(i32*, i64) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
