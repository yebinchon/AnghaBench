; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_trim.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_trim.c"
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
@.str = private unnamed_addr constant [17 x i8] c"vd %p, guid %llu\00", align 1
@POOL_TRIM_FUNCS = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Cancel TRIM %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c" failed (no TRIM active)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Start TRIM %s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" failed (already active)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" failed (error %d)\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Suspend TRIM %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_trim(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ztest_spa, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %6, align 4
  %18 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = load i32, i32* @SCL_VDEV, align 4
  %21 = load i32, i32* @FTAG, align 4
  %22 = load i32, i32* @RW_READER, align 4
  %23 = call i32 @spa_config_enter(%struct.TYPE_11__* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_10__* @ztest_random_concrete_vdev_leaf(i32 %26)
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %7, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = icmp eq %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = load i32, i32* @SCL_VDEV, align 4
  %33 = load i32, i32* @FTAG, align 4
  %34 = call i32 @spa_config_exit(%struct.TYPE_11__* %31, i32 %32, i32 %33)
  %35 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %138

36:                                               ; preds = %2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @strdup(i32 %42)
  store i8* %43, i8** %9, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %49, i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = load i32, i32* @SCL_VDEV, align 4
  %54 = load i32, i32* @FTAG, align 4
  %55 = call i32 @spa_config_exit(%struct.TYPE_11__* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @POOL_TRIM_FUNCS, align 4
  %57 = call i32 @ztest_random(i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = call i32 @ztest_random(i32 30)
  %59 = shl i32 1, %58
  store i32 %59, i32* %12, align 4
  %60 = call i32 @ztest_random(i32 5)
  %61 = icmp sgt i32 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %13, align 4
  %63 = call i32 @ztest_random(i32 5)
  %64 = icmp sgt i32 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %14, align 4
  %66 = call i32* (...) @fnvlist_alloc()
  store i32* %66, i32** %15, align 8
  %67 = call i32* (...) @fnvlist_alloc()
  store i32* %67, i32** %16, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @fnvlist_add_uint64(i32* %68, i8* %69, i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %16, align 8
  %79 = call i32 @spa_vdev_trim(%struct.TYPE_11__* %72, i32* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @fnvlist_free(i32* %80)
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @fnvlist_free(i32* %82)
  %84 = load i32, i32* %11, align 4
  switch i32 %84, label %134 [
    i32 130, label %85
    i32 129, label %98
    i32 128, label %121
  ]

85:                                               ; preds = %36
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 0), align 4
  %87 = icmp sge i32 %86, 4
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %88
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %85
  br label %134

98:                                               ; preds = %36
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 0), align 4
  %100 = icmp sge i32 %99, 4
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %118

111:                                              ; preds = %106, %101
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %109
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %98
  br label %134

121:                                              ; preds = %36
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 0), align 4
  %123 = icmp sge i32 %122, 4
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %125)
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %124
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %124
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %121
  br label %134

134:                                              ; preds = %36, %133, %120, %97
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @free(i8* %135)
  %137 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %138

138:                                              ; preds = %134, %30
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

declare dso_local i32 @spa_vdev_trim(%struct.TYPE_11__*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
