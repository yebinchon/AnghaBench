; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_vdev_add_remove.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_vdev_add_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }

@ztest_shared = common dso_local global %struct.TYPE_8__* null, align 8
@ztest_spa = common dso_local global i32* null, align 8
@ztest_opts = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ztest_vdev_lock = common dso_local global i32 0, align 4
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ztest_name_lock = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"spa_vdev_remove() = %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"spa_vdev_add\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"spa_vdev_add() = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_vdev_add_remove(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ztest_shared, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %5, align 8
  %13 = load i32*, i32** @ztest_spa, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ztest_opts, i32 0, i32 2), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %115

17:                                               ; preds = %2
  %18 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call i32 @MAX(i64 %25, i32 1)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ztest_opts, i32 0, i32 0), align 8
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @SCL_VDEV, align 4
  %31 = load i32, i32* @FTAG, align 4
  %32 = load i32, i32* @RW_READER, align 4
  %33 = call i32 @spa_config_enter(i32* %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @spa_num_top_vdevs(i32* %34)
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ztest_shared, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @spa_has_slogs(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %85

43:                                               ; preds = %17
  %44 = call i64 @ztest_random(i32 4)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %85

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = call %struct.TYPE_11__* @spa_log_class(i32* %47)
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %11, align 8
  br label %51

51:                                               ; preds = %59, %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %11, align 8
  br label %51

63:                                               ; preds = %51
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* @SCL_VDEV, align 4
  %71 = load i32, i32* @FTAG, align 4
  %72 = call i32 @spa_config_exit(i32* %69, i32 %70, i32 %71)
  %73 = call i32 @pthread_rwlock_wrlock(i32* @ztest_name_lock)
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @B_FALSE, align 4
  %77 = call i32 @spa_vdev_remove(i32* %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = call i32 @pthread_rwlock_unlock(i32* @ztest_name_lock)
  %79 = load i32, i32* %10, align 4
  switch i32 %79, label %81 [
    i32 0, label %80
    i32 131, label %80
    i32 132, label %80
    i32 133, label %80
    i32 129, label %80
    i32 128, label %80
  ]

80:                                               ; preds = %63, %63, %63, %63, %63, %63
  br label %84

81:                                               ; preds = %63
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %80
  br label %113

85:                                               ; preds = %43, %17
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @SCL_VDEV, align 4
  %88 = load i32, i32* @FTAG, align 4
  %89 = call i32 @spa_config_exit(i32* %86, i32 %87, i32 %88)
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ztest_opts, i32 0, i32 1), align 4
  %91 = call i64 @ztest_random(i32 4)
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* null
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ztest_opts, i32 0, i32 0), align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32* @make_vdev_root(i32* null, i32* null, i32* null, i32 %90, i32 0, i8* %94, i32 %95, i64 %98, i32 1)
  store i32* %99, i32** %9, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @spa_vdev_add(i32* %100, i32* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @nvlist_free(i32* %103)
  %105 = load i32, i32* %10, align 4
  switch i32 %105, label %109 [
    i32 0, label %106
    i32 130, label %107
  ]

106:                                              ; preds = %85
  br label %112

107:                                              ; preds = %85
  %108 = call i32 @ztest_record_enospc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %112

109:                                              ; preds = %85
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %109, %107, %106
  br label %113

113:                                              ; preds = %112, %84
  %114 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %115

115:                                              ; preds = %113, %16
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local i32 @spa_num_top_vdevs(i32*) #1

declare dso_local i64 @spa_has_slogs(i32*) #1

declare dso_local i64 @ztest_random(i32) #1

declare dso_local %struct.TYPE_11__* @spa_log_class(i32*) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

declare dso_local i32 @pthread_rwlock_wrlock(i32*) #1

declare dso_local i32 @spa_vdev_remove(i32*, i32, i32) #1

declare dso_local i32 @pthread_rwlock_unlock(i32*) #1

declare dso_local i32 @fatal(i32, i8*, i32) #1

declare dso_local i32* @make_vdev_root(i32*, i32*, i32*, i32, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @spa_vdev_add(i32*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @ztest_record_enospc(i8*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
