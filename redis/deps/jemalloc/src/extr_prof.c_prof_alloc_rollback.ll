; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_alloc_rollback.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_alloc_rollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@config_prof = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prof_alloc_rollback(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @config_prof, align 4
  %9 = call i32 @cassert(i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @prof_tdata_get(i32* %13, i32 1)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @prof_sample_threshold_update(i32* %18)
  br label %20

20:                                               ; preds = %17, %12
  br label %21

21:                                               ; preds = %20, %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = ptrtoint %struct.TYPE_7__* %22 to i64
  %24 = icmp ugt i64 %23, 1
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @tsd_tsdn(i32* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @malloc_mutex_lock(i32 %27, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @tsd_tsdn(i32* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = call i64 @prof_tctx_should_destroy(i32 %37, %struct.TYPE_7__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %25
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = call i32 @prof_tctx_destroy(i32* %42, %struct.TYPE_7__* %43)
  br label %54

45:                                               ; preds = %25
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @tsd_tsdn(i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @malloc_mutex_unlock(i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %45, %41
  br label %55

55:                                               ; preds = %54, %21
  ret void
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i32* @prof_tdata_get(i32*, i32) #1

declare dso_local i32 @prof_sample_threshold_update(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i64 @prof_tctx_should_destroy(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @prof_tctx_destroy(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
