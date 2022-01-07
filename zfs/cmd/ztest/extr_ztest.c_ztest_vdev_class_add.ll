; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_vdev_class_add.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_vdev_class_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@ztest_shared = common dso_local global %struct.TYPE_9__* null, align 8
@ztest_spa = common dso_local global i32* null, align 8
@VDEV_ALLOC_BIAS_SPECIAL = common dso_local global i8* null, align 8
@VDEV_ALLOC_BIAS_DEDUP = common dso_local global i8* null, align 8
@ztest_opts = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ZTEST_VDEV_CLASS_OFF = common dso_local global i64 0, align 8
@ZTEST_VDEV_CLASS_RND = common dso_local global i64 0, align 8
@ztest_vdev_lock = common dso_local global i32 0, align 4
@SPA_FEATURE_ALLOCATION_CLASSES = common dso_local global i32 0, align 4
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"spa_vdev_add\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"spa_vdev_add() = %d\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Enabling special VDEV small blocks\0A\00", align 1
@ZFS_PROP_SPECIAL_SMALL_BLOCKS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Added a %s mirrored vdev (of %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_vdev_class_add(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ztest_shared, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  %13 = load i32*, i32** @ztest_spa, align 8
  store i32* %13, i32** %6, align 8
  %14 = call i64 @ztest_random(i32 2)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i8*, i8** @VDEV_ALLOC_BIAS_SPECIAL, align 8
  br label %20

18:                                               ; preds = %2
  %19 = load i8*, i8** @VDEV_ALLOC_BIAS_DEDUP, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i8* [ %17, %16 ], [ %19, %18 ]
  store i8* %21, i8** %9, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 0), align 8
  %23 = load i64, i64* @ZTEST_VDEV_CLASS_OFF, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 0), align 8
  %27 = load i64, i64* @ZTEST_VDEV_CLASS_RND, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = call i64 @ztest_random(i32 2)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %20
  br label %144

33:                                               ; preds = %29, %25
  %34 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %144

41:                                               ; preds = %33
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @SPA_FEATURE_ALLOCATION_CLASSES, align 4
  %44 = call i32 @spa_feature_is_enabled(i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %144

48:                                               ; preds = %41
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = call i32 @MAX(i64 %56, i32 1)
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 1), align 8
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %7, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @SCL_VDEV, align 4
  %62 = load i32, i32* @FTAG, align 4
  %63 = load i32, i32* @RW_READER, align 4
  %64 = call i32 @spa_config_enter(i32* %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @spa_num_top_vdevs(i32* %65)
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ztest_shared, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @SCL_VDEV, align 4
  %73 = load i32, i32* @FTAG, align 4
  %74 = call i32 @spa_config_exit(i32* %71, i32 %72, i32 %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 3), align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 1), align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32* @make_vdev_root(i32* null, i32* null, i32* null, i32 %75, i32 0, i8* %76, i32 %77, i32 %80, i32 1)
  store i32* %81, i32** %8, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @spa_vdev_add(i32* %82, i32* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @nvlist_free(i32* %85)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @ENOSPC, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %48
  %91 = call i32 @ztest_record_enospc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %99

92:                                               ; preds = %48
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %90
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %99
  %103 = load i32*, i32** %6, align 8
  %104 = call %struct.TYPE_11__* @spa_special_class(i32* %103)
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %123

108:                                              ; preds = %102
  %109 = call i64 @ztest_random(i32 2)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 2), align 4
  %113 = icmp sge i32 %112, 3
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %111
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ZFS_PROP_SPECIAL_SMALL_BLOCKS, align 4
  %121 = load i32, i32* @B_FALSE, align 4
  %122 = call i32 @ztest_dsl_prop_set_uint64(i32 %119, i32 %120, i32 32768, i32 %121)
  br label %123

123:                                              ; preds = %116, %108, %102, %99
  %124 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 2), align 4
  %126 = icmp sge i32 %125, 3
  br i1 %126, label %127, label %144

127:                                              ; preds = %123
  %128 = load i8*, i8** %9, align 8
  %129 = load i8*, i8** @VDEV_ALLOC_BIAS_SPECIAL, align 8
  %130 = call i64 @strcmp(i8* %128, i8* %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32*, i32** %6, align 8
  %134 = call %struct.TYPE_11__* @spa_special_class(i32* %133)
  store %struct.TYPE_11__* %134, %struct.TYPE_11__** %11, align 8
  br label %138

135:                                              ; preds = %127
  %136 = load i32*, i32** %6, align 8
  %137 = call %struct.TYPE_11__* @spa_dedup_class(i32* %136)
  store %struct.TYPE_11__* %137, %struct.TYPE_11__** %11, align 8
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i8*, i8** %9, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %139, i32 %142)
  br label %144

144:                                              ; preds = %32, %39, %46, %138, %123
  ret void
}

declare dso_local i64 @ztest_random(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_feature_is_enabled(i32*, i32) #1

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local i32 @spa_num_top_vdevs(i32*) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

declare dso_local i32* @make_vdev_root(i32*, i32*, i32*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spa_vdev_add(i32*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @ztest_record_enospc(i8*) #1

declare dso_local i32 @fatal(i32, i8*, i32) #1

declare dso_local %struct.TYPE_11__* @spa_special_class(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ztest_dsl_prop_set_uint64(i32, i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_11__* @spa_dedup_class(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
