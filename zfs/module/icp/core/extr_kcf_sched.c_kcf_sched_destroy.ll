; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_sched_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_sched_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@kcf_misc_kstat = common dso_local global i64 0, align 8
@kcfpool = common dso_local global %struct.TYPE_5__* null, align 8
@REQID_TABLES = common dso_local global i32 0, align 4
@kcf_reqid_table = common dso_local global %struct.TYPE_5__** null, align 8
@gswq = common dso_local global %struct.TYPE_5__* null, align 8
@kcf_context_cache = common dso_local global i64 0, align 8
@kcf_areq_cache = common dso_local global i64 0, align 8
@kcf_sreq_cache = common dso_local global i64 0, align 8
@ntfy_list_lock = common dso_local global i32 0, align 4
@ntfy_list_cv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kcf_sched_destroy() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @kcf_misc_kstat, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @kcf_misc_kstat, align 8
  %6 = call i32 @kstat_delete(i64 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kcfpool, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kcfpool, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  %13 = call i32 @mutex_destroy(i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kcfpool, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 5
  %16 = call i32 @cv_destroy(i32* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kcfpool, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = call i32 @mutex_destroy(i32* %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kcfpool, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = call i32 @cv_destroy(i32* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kcfpool, align 8
  %24 = call i32 @kmem_free(%struct.TYPE_5__* %23, i32 4)
  br label %25

25:                                               ; preds = %10, %7
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @REQID_TABLES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @kcf_reqid_table, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %31, i64 %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @kcf_reqid_table, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = call i32 @mutex_destroy(i32* %43)
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @kcf_reqid_table, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %45, i64 %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @kmem_free(%struct.TYPE_5__* %49, i32 4)
  br label %51

51:                                               ; preds = %37, %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %26

55:                                               ; preds = %26
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %57 = icmp ne %struct.TYPE_5__* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = call i32 @mutex_destroy(i32* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @cv_destroy(i32* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %66 = call i32 @kmem_free(%struct.TYPE_5__* %65, i32 4)
  br label %67

67:                                               ; preds = %58, %55
  %68 = load i64, i64* @kcf_context_cache, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* @kcf_context_cache, align 8
  %72 = call i32 @kmem_cache_destroy(i64 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i64, i64* @kcf_areq_cache, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i64, i64* @kcf_areq_cache, align 8
  %78 = call i32 @kmem_cache_destroy(i64 %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i64, i64* @kcf_sreq_cache, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i64, i64* @kcf_sreq_cache, align 8
  %84 = call i32 @kmem_cache_destroy(i64 %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = call i32 @mutex_destroy(i32* @ntfy_list_lock)
  %87 = call i32 @cv_destroy(i32* @ntfy_list_cv)
  ret void
}

declare dso_local i32 @kstat_delete(i64) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kmem_cache_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
