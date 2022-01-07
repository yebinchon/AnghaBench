; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_log_spacemap.c_spa_cleanup_old_sm_logs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_log_spacemap.c_spa_cleanup_old_sm_logs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }

@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_LOG_SPACEMAP_ZAP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_cleanup_old_sm_logs(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = call i32* @spa_meta_objset(%struct.TYPE_9__* %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %15 = load i32, i32* @DMU_POOL_LOG_SPACEMAP_ZAP, align 4
  %16 = call i32 @zap_lookup(i32* %13, i32 %14, i32 %15, i32 8, i32 1, i64* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = call i32 @avl_is_empty(i32* %22)
  %24 = call i32 @ASSERT(i32 %23)
  br label %89

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @VERIFY0(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = call i8* @avl_first(i32* %29)
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i64 @metaslab_unflushed_txg(i32* %32)
  store i64 %33, i64* %9, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = call i8* @avl_first(i32* %35)
  %37 = bitcast i8* %36 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %10, align 8
  br label %38

38:                                               ; preds = %84, %25
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp slt i64 %44, %45
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  br i1 %48, label %49, label %89

49:                                               ; preds = %47
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ASSERT0(i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = call i32 @avl_remove(i32* %55, %struct.TYPE_10__* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @space_map_free_obj(i32* %58, i32 %61, i32* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @zap_remove_int(i32* %64, i64 %65, i64 %68, i32* %69)
  %71 = call i32 @VERIFY0(i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %74
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = call i32 @kmem_free(%struct.TYPE_10__* %82, i32 24)
  br label %84

84:                                               ; preds = %49
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = call i8* @avl_first(i32* %86)
  %88 = bitcast i8* %87 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %10, align 8
  br label %38

89:                                               ; preds = %20, %47
  ret void
}

declare dso_local i32* @spa_meta_objset(%struct.TYPE_9__*) #1

declare dso_local i32 @zap_lookup(i32*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @avl_is_empty(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i8* @avl_first(i32*) #1

declare dso_local i64 @metaslab_unflushed_txg(i32*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @avl_remove(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @space_map_free_obj(i32*, i32, i32*) #1

declare dso_local i32 @zap_remove_int(i32*, i64, i64, i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
