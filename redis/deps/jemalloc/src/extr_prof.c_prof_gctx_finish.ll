; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_gctx_finish.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_gctx_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@prof_tctx_finish_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @prof_gctx_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prof_gctx_finish(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @prof_tdata_get(i32* %9, i32 0)
  store i32* %10, i32** %5, align 8
  br label %11

11:                                               ; preds = %85, %2
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.TYPE_6__* @gctx_tree_first(i32* %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %86

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = call i32 @gctx_tree_remove(i32* %16, %struct.TYPE_6__* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @tsd_tsdn(i32* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @malloc_mutex_lock(i64 %20, i32 %23)
  store i32* null, i32** %7, align 8
  br label %25

25:                                               ; preds = %51, %15
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @prof_tctx_finish_iter, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @tsd_tsdn(i32* %30)
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32* @tctx_tree_iter(i32* %27, i32* %28, i32 %29, i8* %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %25
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @tctx_tree_next(i32* %38, i32* %39)
  store i32* %40, i32** %7, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @tctx_tree_remove(i32* %42, i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i64 @tsd_tsdn(i32* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @idalloctm(i64 %46, i32* %47, i32* null, i32* null, i32 1, i32 1)
  br label %50

49:                                               ; preds = %25
  store i32* null, i32** %7, align 8
  br label %50

50:                                               ; preds = %49, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %25, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = call i64 @prof_gctx_should_destroy(%struct.TYPE_6__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = call i64 @tsd_tsdn(i32* %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @malloc_mutex_unlock(i64 %68, i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @prof_gctx_try_destroy(i32* %73, i32* %74, %struct.TYPE_6__* %75, i32* %76)
  br label %85

78:                                               ; preds = %54
  %79 = load i32*, i32** %3, align 8
  %80 = call i64 @tsd_tsdn(i32* %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @malloc_mutex_unlock(i64 %80, i32 %83)
  br label %85

85:                                               ; preds = %78, %62
  br label %11

86:                                               ; preds = %11
  ret void
}

declare dso_local i32* @prof_tdata_get(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @gctx_tree_first(i32*) #1

declare dso_local i32 @gctx_tree_remove(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @malloc_mutex_lock(i64, i32) #1

declare dso_local i64 @tsd_tsdn(i32*) #1

declare dso_local i32* @tctx_tree_iter(i32*, i32*, i32, i8*) #1

declare dso_local i32* @tctx_tree_next(i32*, i32*) #1

declare dso_local i32 @tctx_tree_remove(i32*, i32*) #1

declare dso_local i32 @idalloctm(i64, i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @prof_gctx_should_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @malloc_mutex_unlock(i64, i32) #1

declare dso_local i32 @prof_gctx_try_destroy(i32*, i32*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
