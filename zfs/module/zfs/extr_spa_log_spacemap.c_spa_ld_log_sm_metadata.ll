; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_log_spacemap.c_spa_ld_log_sm_metadata.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_log_spacemap.c_spa_ld_log_sm_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_LOG_SPACEMAP_ZAP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"spa_ld_log_sm_metadata(): failed at zap_lookup(DMU_POOL_DIRECTORY_OBJECT) [error %d]\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"spa_ld_log_sm_metadata(): failed at zap_cursor_retrieve(spacemap_zap) [error %d]\00", align 1
@.str.2 = private unnamed_addr constant [94 x i8] c"spa_ld_log_sm_metadata(): bug encountered: could not find log spacemap for TXG %ld [error %d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @spa_ld_log_sm_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_log_sm_metadata(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = call i32 @avl_is_empty(i32* %14)
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = call i32 @spa_meta_objset(%struct.TYPE_13__* %17)
  %19 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %20 = load i32, i32* @DMU_POOL_LOG_SPACEMAP_ZAP, align 4
  %21 = call i32 @zap_lookup(i32 %18, i32 %19, i32 %20, i32 4, i32 1, i32* %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %106

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @spa_load_failed(%struct.TYPE_13__* %30, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %106

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = call i32 @spa_meta_objset(%struct.TYPE_13__* %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @zap_cursor_init(i32* %6, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %55, %35
  %41 = call i32 @zap_cursor_retrieve(i32* %6, %struct.TYPE_12__* %7)
  store i32 %41, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @zfs_strtonum(i32 %45, i32* null)
  store i32 %46, i32* %8, align 4
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.TYPE_14__* @spa_log_sm_alloc(i32 %48, i32 %49)
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %9, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = call i32 @avl_add(i32* %52, %struct.TYPE_14__* %53)
  br label %55

55:                                               ; preds = %43
  %56 = call i32 @zap_cursor_advance(i32* %6)
  br label %40

57:                                               ; preds = %40
  %58 = call i32 @zap_cursor_fini(i32* %6)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @ENOENT, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @spa_load_failed(%struct.TYPE_13__* %63, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %106

67:                                               ; preds = %57
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = call i32* @avl_first(i32* %69)
  store i32* %70, i32** %10, align 8
  br label %71

71:                                               ; preds = %100, %67
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %105

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 0, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @metaslab_unflushed_txg(i32* %77)
  store i32 %78, i32* %76, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = call %struct.TYPE_14__* @avl_find(i32* %80, %struct.TYPE_14__* %11, i32* null)
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %12, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %83 = icmp ne %struct.TYPE_14__* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i32 @ASSERT(i32 %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %87 = icmp eq %struct.TYPE_14__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %74
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @metaslab_unflushed_txg(i32* %90)
  %92 = load i32, i32* @ENOENT, align 4
  %93 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @spa_load_failed(%struct.TYPE_13__* %89, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* @ENOENT, align 4
  store i32 %94, i32* %2, align 4
  br label %106

95:                                               ; preds = %74
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i32*, i32** %10, align 8
  %104 = call i32* @AVL_NEXT(i32* %102, i32* %103)
  store i32* %104, i32** %10, align 8
  br label %71

105:                                              ; preds = %71
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %88, %62, %29, %25
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @avl_is_empty(i32*) #1

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @spa_meta_objset(%struct.TYPE_13__*) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_13__*, i8*, i32, ...) #1

declare dso_local i32 @zap_cursor_init(i32*, i32, i32) #1

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @zfs_strtonum(i32, i32*) #1

declare dso_local %struct.TYPE_14__* @spa_log_sm_alloc(i32, i32) #1

declare dso_local i32 @avl_add(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32* @avl_first(i32*) #1

declare dso_local i32 @metaslab_unflushed_txg(i32*) #1

declare dso_local %struct.TYPE_14__* @avl_find(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32* @AVL_NEXT(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
