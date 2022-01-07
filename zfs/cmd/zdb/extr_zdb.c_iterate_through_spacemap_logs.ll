; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_iterate_through_spacemap_logs.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_iterate_through_spacemap_logs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32, %struct.TYPE_14__* }

@SPA_FEATURE_LOG_SPACEMAP = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@SPA_MINBLOCKSHIFT = common dso_local global i32 0, align 4
@iterate_through_spacemap_logs_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i8*)* @iterate_through_spacemap_logs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iterate_through_spacemap_logs(%struct.TYPE_14__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = load i32, i32* @SPA_FEATURE_LOG_SPACEMAP, align 4
  %12 = call i32 @spa_feature_is_active(%struct.TYPE_14__* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %65

15:                                               ; preds = %3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = load i32, i32* @SCL_CONFIG, align 4
  %18 = load i32, i32* @FTAG, align 4
  %19 = load i32, i32* @RW_READER, align 4
  %20 = call i32 @spa_config_enter(%struct.TYPE_14__* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = call %struct.TYPE_15__* @avl_first(i32* %22)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %7, align 8
  br label %24

24:                                               ; preds = %55, %15
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = icmp ne %struct.TYPE_15__* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %24
  store i32* null, i32** %8, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = call i32 @spa_meta_objset(%struct.TYPE_14__* %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UINT64_MAX, align 4
  %34 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %35 = call i32 @space_map_open(i32** %8, i32 %29, i32 %32, i32 0, i32 %33, i32 %34)
  %36 = call i32 @VERIFY0(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %41, align 4
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 3
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %45, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @space_map_length(i32* %48)
  %50 = load i32, i32* @iterate_through_spacemap_logs_cb, align 4
  %51 = call i32 @space_map_iterate(i32* %47, i32 %49, i32 %50, %struct.TYPE_13__* %9)
  %52 = call i32 @VERIFY0(i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @space_map_close(i32* %53)
  br label %55

55:                                               ; preds = %27
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = call %struct.TYPE_15__* @AVL_NEXT(i32* %57, %struct.TYPE_15__* %58)
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %7, align 8
  br label %24

60:                                               ; preds = %24
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = load i32, i32* @SCL_CONFIG, align 4
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i32 @spa_config_exit(%struct.TYPE_14__* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %14
  ret void
}

declare dso_local i32 @spa_feature_is_active(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @avl_first(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @space_map_open(i32**, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spa_meta_objset(%struct.TYPE_14__*) #1

declare dso_local i32 @space_map_iterate(i32*, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @space_map_length(i32*) #1

declare dso_local i32 @space_map_close(i32*) #1

declare dso_local %struct.TYPE_15__* @AVL_NEXT(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
