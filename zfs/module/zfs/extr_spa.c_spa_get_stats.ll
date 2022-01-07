; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_get_stats.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@FTAG = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_LOADED_TIME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ERRCOUNT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SUSPENDED = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SUSPENDED_REASON = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_get_stats(i8* %0, i32** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca [2 x i32], align 4
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32**, i32*** %6, align 8
  store i32* null, i32** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @FTAG, align 4
  %15 = load i32**, i32*** %6, align 8
  %16 = call i32 @spa_open_common(i8* %13, %struct.TYPE_15__** %10, i32 %14, i32* null, i32** %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %94

19:                                               ; preds = %4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = load i32, i32* @SCL_CONFIG, align 4
  %22 = load i32, i32* @FTAG, align 4
  %23 = load i32, i32* @RW_READER, align 4
  %24 = call i32 @spa_config_enter(%struct.TYPE_15__* %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32**, i32*** %6, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %93

28:                                               ; preds = %19
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %37, i32* %38, align 4
  %39 = load i32**, i32*** %6, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @ZPOOL_CONFIG_LOADED_TIME, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %43 = call i64 @nvlist_add_uint64_array(i32* %40, i32 %41, i32* %42, i32 2)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @VERIFY(i32 %45)
  %47 = load i32**, i32*** %6, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @ZPOOL_CONFIG_ERRCOUNT, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %51 = call i32 @spa_get_errlog_size(%struct.TYPE_15__* %50)
  %52 = call i64 @nvlist_add_uint64(i32* %48, i32 %49, i32 %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @VERIFY(i32 %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %57 = call i64 @spa_suspended(%struct.TYPE_15__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %28
  %60 = load i32**, i32*** %6, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @ZPOOL_CONFIG_SUSPENDED, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @nvlist_add_uint64(i32* %61, i32 %62, i32 %65)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @VERIFY(i32 %68)
  %70 = load i32**, i32*** %6, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @ZPOOL_CONFIG_SUSPENDED_REASON, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @nvlist_add_uint64(i32* %71, i32 %72, i32 %75)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @VERIFY(i32 %78)
  br label %80

80:                                               ; preds = %59, %28
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %82 = load i32**, i32*** %6, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @spa_add_spares(%struct.TYPE_15__* %81, i32* %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %86 = load i32**, i32*** %6, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @spa_add_l2cache(%struct.TYPE_15__* %85, i32* %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %90 = load i32**, i32*** %6, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @spa_add_feature_stats(%struct.TYPE_15__* %89, i32* %91)
  br label %93

93:                                               ; preds = %80, %19
  br label %94

94:                                               ; preds = %93, %4
  %95 = load i8*, i8** %7, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %122

97:                                               ; preds = %94
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %99 = icmp eq %struct.TYPE_15__* %98, null
  br i1 %99, label %100, label %116

100:                                              ; preds = %97
  %101 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %102 = load i8*, i8** %5, align 8
  %103 = call %struct.TYPE_15__* @spa_lookup(i8* %102)
  store %struct.TYPE_15__* %103, %struct.TYPE_15__** %10, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %105 = icmp ne %struct.TYPE_15__* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @spa_altroot(%struct.TYPE_15__* %107, i8* %108, i64 %109)
  br label %114

111:                                              ; preds = %100
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  store i8 0, i8* %113, align 1
  br label %114

114:                                              ; preds = %111, %106
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  %115 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %121

116:                                              ; preds = %97
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @spa_altroot(%struct.TYPE_15__* %117, i8* %118, i64 %119)
  br label %121

121:                                              ; preds = %116, %114
  br label %122

122:                                              ; preds = %121, %94
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %124 = icmp ne %struct.TYPE_15__* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %127 = load i32, i32* @SCL_CONFIG, align 4
  %128 = load i32, i32* @FTAG, align 4
  %129 = call i32 @spa_config_exit(%struct.TYPE_15__* %126, i32 %127, i32 %128)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %131 = load i32, i32* @FTAG, align 4
  %132 = call i32 @spa_close(%struct.TYPE_15__* %130, i32 %131)
  br label %133

133:                                              ; preds = %125, %122
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local i32 @spa_open_common(i8*, %struct.TYPE_15__**, i32, i32*, i32**) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_uint64_array(i32*, i32, i32*, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @spa_get_errlog_size(%struct.TYPE_15__*) #1

declare dso_local i64 @spa_suspended(%struct.TYPE_15__*) #1

declare dso_local i32 @spa_add_spares(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @spa_add_l2cache(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @spa_add_feature_stats(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_15__* @spa_lookup(i8*) #1

declare dso_local i32 @spa_altroot(%struct.TYPE_15__*, i8*, i64) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @spa_close(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
