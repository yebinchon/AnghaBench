; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_initialize.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i32 }

@ztest_spa = common dso_local global %struct.TYPE_11__* null, align 8
@ztest_vdev_lock = common dso_local global i32 0, align 4
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vd %px, guid %llu\00", align 1
@POOL_INITIALIZE_FUNCS = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Cancel initialize %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c" failed (no initialize active)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Start initialize %s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" failed (already active)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" failed (error %d)\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Suspend initialize %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_initialize(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ztest_spa, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = load i32, i32* @SCL_VDEV, align 4
  %18 = load i32, i32* @FTAG, align 4
  %19 = load i32, i32* @RW_READER, align 4
  %20 = call i32 @spa_config_enter(%struct.TYPE_11__* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_10__* @ztest_random_concrete_vdev_leaf(i32 %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %7, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = icmp eq %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = load i32, i32* @SCL_VDEV, align 4
  %30 = load i32, i32* @FTAG, align 4
  %31 = call i32 @spa_config_exit(%struct.TYPE_11__* %28, i32 %29, i32 %30)
  %32 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %124

33:                                               ; preds = %2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @strdup(i32 %39)
  store i8* %40, i8** %9, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %46, i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = load i32, i32* @SCL_VDEV, align 4
  %51 = load i32, i32* @FTAG, align 4
  %52 = call i32 @spa_config_exit(%struct.TYPE_11__* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @POOL_INITIALIZE_FUNCS, align 4
  %54 = call i32 @ztest_random(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = call i32* (...) @fnvlist_alloc()
  store i32* %55, i32** %12, align 8
  %56 = call i32* (...) @fnvlist_alloc()
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @fnvlist_add_uint64(i32* %57, i8* %58, i32 %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @spa_vdev_initialize(%struct.TYPE_11__* %61, i32* %62, i32 %63, i32* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @fnvlist_free(i32* %66)
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @fnvlist_free(i32* %68)
  %70 = load i32, i32* %11, align 4
  switch i32 %70, label %120 [
    i32 130, label %71
    i32 129, label %84
    i32 128, label %107
  ]

71:                                               ; preds = %33
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 0), align 4
  %73 = icmp sge i32 %72, 4
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %71
  br label %120

84:                                               ; preds = %33
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 0), align 4
  %86 = icmp sge i32 %85, 4
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %104

97:                                               ; preds = %92, %87
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %95
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %84
  br label %120

107:                                              ; preds = %33
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 0), align 4
  %109 = icmp sge i32 %108, 4
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %111)
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %110
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %107
  br label %120

120:                                              ; preds = %33, %119, %106, %83
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 @free(i8* %121)
  %123 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %124

124:                                              ; preds = %120, %27
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @ztest_random_concrete_vdev_leaf(i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ztest_random(i32) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i32 @spa_vdev_initialize(%struct.TYPE_11__*, i32*, i32, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
