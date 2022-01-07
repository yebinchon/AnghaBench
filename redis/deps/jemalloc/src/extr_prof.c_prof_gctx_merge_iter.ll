; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_gctx_merge_iter.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_gctx_merge_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.prof_gctx_merge_iter_arg_s = type { i64, i32 }

@prof_tctx_merge_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, %struct.TYPE_6__*, i8*)* @prof_gctx_merge_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @prof_gctx_merge_iter(i32* %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.prof_gctx_merge_iter_arg_s*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.prof_gctx_merge_iter_arg_s*
  store %struct.prof_gctx_merge_iter_arg_s* %9, %struct.prof_gctx_merge_iter_arg_s** %7, align 8
  %10 = load %struct.prof_gctx_merge_iter_arg_s*, %struct.prof_gctx_merge_iter_arg_s** %7, align 8
  %11 = getelementptr inbounds %struct.prof_gctx_merge_iter_arg_s, %struct.prof_gctx_merge_iter_arg_s* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @malloc_mutex_lock(i64 %12, i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* @prof_tctx_merge_iter, align 4
  %20 = load %struct.prof_gctx_merge_iter_arg_s*, %struct.prof_gctx_merge_iter_arg_s** %7, align 8
  %21 = getelementptr inbounds %struct.prof_gctx_merge_iter_arg_s, %struct.prof_gctx_merge_iter_arg_s* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @tctx_tree_iter(i32* %18, i32* null, i32 %19, i8* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.prof_gctx_merge_iter_arg_s*, %struct.prof_gctx_merge_iter_arg_s** %7, align 8
  %32 = getelementptr inbounds %struct.prof_gctx_merge_iter_arg_s, %struct.prof_gctx_merge_iter_arg_s* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %30, %3
  %36 = load %struct.prof_gctx_merge_iter_arg_s*, %struct.prof_gctx_merge_iter_arg_s** %7, align 8
  %37 = getelementptr inbounds %struct.prof_gctx_merge_iter_arg_s, %struct.prof_gctx_merge_iter_arg_s* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @malloc_mutex_unlock(i64 %38, i32 %41)
  ret %struct.TYPE_6__* null
}

declare dso_local i32 @malloc_mutex_lock(i64, i32) #1

declare dso_local i32 @tctx_tree_iter(i32*, i32*, i32, i8*) #1

declare dso_local i32 @malloc_mutex_unlock(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
