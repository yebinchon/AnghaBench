; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_dump_prep.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_dump_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prof_tdata_merge_iter_arg_s = type { i32, i8* }
%struct.prof_gctx_merge_iter_arg_s = type { i64, i8* }
%union.anon = type { i32* }

@bt2gctx = common dso_local global i32 0, align 4
@tdatas_mtx = common dso_local global i32 0, align 4
@tdatas = common dso_local global i32 0, align 4
@prof_tdata_merge_iter = common dso_local global i32 0, align 4
@prof_gctx_merge_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_gctx_merge_iter_arg_s*, i32*)* @prof_dump_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prof_dump_prep(i32* %0, i32* %1, %struct.prof_tdata_merge_iter_arg_s* %2, %struct.prof_gctx_merge_iter_arg_s* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.prof_tdata_merge_iter_arg_s*, align 8
  %9 = alloca %struct.prof_gctx_merge_iter_arg_s*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.anon, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.prof_tdata_merge_iter_arg_s* %2, %struct.prof_tdata_merge_iter_arg_s** %8, align 8
  store %struct.prof_gctx_merge_iter_arg_s* %3, %struct.prof_gctx_merge_iter_arg_s** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @prof_enter(i32* %13, i32* %14)
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @gctx_tree_new(i32* %16)
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %23, %5
  %19 = bitcast %union.anon* %12 to i8**
  %20 = call i32 @ckh_iter(i32* @bt2gctx, i64* %11, i32* null, i8** %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = call i8* @tsd_tsdn(i32* %24)
  %26 = bitcast %union.anon* %12 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @prof_dump_gctx_prep(i8* %25, i32* %27, i32* %28)
  br label %18

30:                                               ; preds = %18
  %31 = load i32*, i32** %6, align 8
  %32 = call i8* @tsd_tsdn(i32* %31)
  %33 = load %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_tdata_merge_iter_arg_s** %8, align 8
  %34 = getelementptr inbounds %struct.prof_tdata_merge_iter_arg_s, %struct.prof_tdata_merge_iter_arg_s* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_tdata_merge_iter_arg_s** %8, align 8
  %36 = getelementptr inbounds %struct.prof_tdata_merge_iter_arg_s, %struct.prof_tdata_merge_iter_arg_s* %35, i32 0, i32 0
  %37 = call i32 @memset(i32* %36, i32 0, i32 4)
  %38 = load i32*, i32** %6, align 8
  %39 = call i8* @tsd_tsdn(i32* %38)
  %40 = call i32 @malloc_mutex_lock(i8* %39, i32* @tdatas_mtx)
  %41 = load i32, i32* @prof_tdata_merge_iter, align 4
  %42 = load %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_tdata_merge_iter_arg_s** %8, align 8
  %43 = bitcast %struct.prof_tdata_merge_iter_arg_s* %42 to i8*
  %44 = call i32 @tdata_tree_iter(i32* @tdatas, i32* null, i32 %41, i8* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i8* @tsd_tsdn(i32* %45)
  %47 = call i32 @malloc_mutex_unlock(i8* %46, i32* @tdatas_mtx)
  %48 = load i32*, i32** %6, align 8
  %49 = call i8* @tsd_tsdn(i32* %48)
  %50 = load %struct.prof_gctx_merge_iter_arg_s*, %struct.prof_gctx_merge_iter_arg_s** %9, align 8
  %51 = getelementptr inbounds %struct.prof_gctx_merge_iter_arg_s, %struct.prof_gctx_merge_iter_arg_s* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.prof_gctx_merge_iter_arg_s*, %struct.prof_gctx_merge_iter_arg_s** %9, align 8
  %53 = getelementptr inbounds %struct.prof_gctx_merge_iter_arg_s, %struct.prof_gctx_merge_iter_arg_s* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* @prof_gctx_merge_iter, align 4
  %56 = load %struct.prof_gctx_merge_iter_arg_s*, %struct.prof_gctx_merge_iter_arg_s** %9, align 8
  %57 = bitcast %struct.prof_gctx_merge_iter_arg_s* %56 to i8*
  %58 = call i32 @gctx_tree_iter(i32* %54, i32* null, i32 %55, i8* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @prof_leave(i32* %59, i32* %60)
  ret void
}

declare dso_local i32 @prof_enter(i32*, i32*) #1

declare dso_local i32 @gctx_tree_new(i32*) #1

declare dso_local i32 @ckh_iter(i32*, i64*, i32*, i8**) #1

declare dso_local i32 @prof_dump_gctx_prep(i8*, i32*, i32*) #1

declare dso_local i8* @tsd_tsdn(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @malloc_mutex_lock(i8*, i32*) #1

declare dso_local i32 @tdata_tree_iter(i32*, i32*, i32, i8*) #1

declare dso_local i32 @malloc_mutex_unlock(i8*, i32*) #1

declare dso_local i32 @gctx_tree_iter(i32*, i32*, i32, i8*) #1

declare dso_local i32 @prof_leave(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
