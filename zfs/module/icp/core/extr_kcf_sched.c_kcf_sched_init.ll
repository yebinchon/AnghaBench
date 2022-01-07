; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_sched_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32* }

@.str = private unnamed_addr constant [15 x i8] c"kcf_sreq_cache\00", align 1
@kcf_sreq_cache_constructor = common dso_local global i32 0, align 4
@kcf_sreq_cache_destructor = common dso_local global i32 0, align 4
@kcf_sreq_cache = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"kcf_areq_cache\00", align 1
@kcf_areq_cache_constructor = common dso_local global i32 0, align 4
@kcf_areq_cache_destructor = common dso_local global i32 0, align 4
@kcf_areq_cache = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"kcf_context_cache\00", align 1
@kcf_context_cache_constructor = common dso_local global i32 0, align 4
@kcf_context_cache_destructor = common dso_local global i32 0, align 4
@kcf_context_cache = common dso_local global i8* null, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@gswq = common dso_local global %struct.TYPE_11__* null, align 8
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@CV_DEFAULT = common dso_local global i32 0, align 4
@kcf_maxthreads = common dso_local global i32 0, align 4
@crypto_taskq_maxalloc = common dso_local global i32 0, align 4
@REQID_TABLES = common dso_local global i32 0, align 4
@kcf_reqid_table = common dso_local global %struct.TYPE_9__** null, align 8
@ntfy_list_lock = common dso_local global i32 0, align 4
@ntfy_list_cv = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"kcf\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"framework_stats\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"crypto\00", align 1
@KSTAT_TYPE_NAMED = common dso_local global i32 0, align 4
@KSTAT_FLAG_VIRTUAL = common dso_local global i32 0, align 4
@kcf_misc_kstat = common dso_local global %struct.TYPE_10__* null, align 8
@kcf_ksdata = common dso_local global i32 0, align 4
@kcf_misc_kstat_update = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kcf_sched_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = load i32, i32* @kcf_sreq_cache_constructor, align 4
  %4 = load i32, i32* @kcf_sreq_cache_destructor, align 4
  %5 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 4, i32 64, i32 %3, i32 %4, i32* null, i32* null, i32* null, i32 0)
  store i8* %5, i8** @kcf_sreq_cache, align 8
  %6 = load i32, i32* @kcf_areq_cache_constructor, align 4
  %7 = load i32, i32* @kcf_areq_cache_destructor, align 4
  %8 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 64, i32 %6, i32 %7, i32* null, i32* null, i32* null, i32 0)
  store i8* %8, i8** @kcf_areq_cache, align 8
  %9 = load i32, i32* @kcf_context_cache_constructor, align 4
  %10 = load i32, i32* @kcf_context_cache_destructor, align 4
  %11 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 64, i32 %9, i32 %10, i32* null, i32* null, i32* null, i32 0)
  store i8* %11, i8** @kcf_context_cache, align 8
  %12 = load i32, i32* @KM_SLEEP, align 4
  %13 = call %struct.TYPE_11__* @kmem_alloc(i32 4, i32 %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** @gswq, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @gswq, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  %16 = load i32, i32* @MUTEX_DEFAULT, align 4
  %17 = call i32 @mutex_init(i32* %15, i32* null, i32 %16, i32* null)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @gswq, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  %20 = load i32, i32* @CV_DEFAULT, align 4
  %21 = call i32 @cv_init(i32* %19, i32* null, i32 %20, i32* null)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @gswq, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @kcf_maxthreads, align 4
  %25 = load i32, i32* @crypto_taskq_maxalloc, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @gswq, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @gswq, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @gswq, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %52, %0
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @REQID_TABLES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i32, i32* @KM_SLEEP, align 4
  %39 = call %struct.TYPE_9__* @kmem_zalloc(i32 8, i32 %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %2, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @kcf_reqid_table, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %41, i64 %43
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* @MUTEX_DEFAULT, align 4
  %48 = call i32 @mutex_init(i32* %46, i32* null, i32 %47, i32* null)
  %49 = load i32, i32* %1, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %33

55:                                               ; preds = %33
  %56 = call i32 (...) @kcfpool_alloc()
  %57 = load i32, i32* @MUTEX_DEFAULT, align 4
  %58 = call i32 @mutex_init(i32* @ntfy_list_lock, i32* null, i32 %57, i32* null)
  %59 = load i32, i32* @CV_DEFAULT, align 4
  %60 = call i32 @cv_init(i32* @ntfy_list_cv, i32* null, i32 %59, i32* null)
  %61 = load i32, i32* @KSTAT_TYPE_NAMED, align 4
  %62 = load i32, i32* @KSTAT_FLAG_VIRTUAL, align 4
  %63 = call %struct.TYPE_10__* @kstat_create(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %61, i32 1, i32 %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** @kcf_misc_kstat, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kcf_misc_kstat, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %55
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kcf_misc_kstat, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32* @kcf_ksdata, i32** %68, align 8
  %69 = load i32, i32* @kcf_misc_kstat_update, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kcf_misc_kstat, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kcf_misc_kstat, align 8
  %73 = call i32 @kstat_install(%struct.TYPE_10__* %72)
  br label %74

74:                                               ; preds = %66, %55
  ret void
}

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cv_init(i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @kcfpool_alloc(...) #1

declare dso_local %struct.TYPE_10__* @kstat_create(i8*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @kstat_install(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
