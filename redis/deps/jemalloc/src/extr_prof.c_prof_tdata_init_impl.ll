; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_tdata_init_impl.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_tdata_init_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64, i8*, i8*, i32 }

@config_prof = common dso_local global i32 0, align 4
@TSDN_NULL = common dso_local global i32 0, align 4
@PROF_CKH_MINITEMS = common dso_local global i32 0, align 4
@prof_bt_hash = common dso_local global i32 0, align 4
@prof_bt_keycomp = common dso_local global i32 0, align 4
@tdatas_mtx = common dso_local global i32 0, align 4
@tdatas = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, i8*, i8*, i8*, i32)* @prof_tdata_init_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @prof_tdata_init_impl(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @config_prof, align 4
  %14 = call i32 @cassert(i32 %13)
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @tsd_tsdn(i32* %15)
  %17 = call i32 @sz_size2index(i32 88)
  %18 = load i32, i32* @TSDN_NULL, align 4
  %19 = call i32 @arena_get(i32 %18, i32 0, i32 1)
  %20 = call i64 @iallocztm(i32 %16, i32 88, i32 %17, i32 0, i32* null, i32 1, i32 %19, i32 1)
  %21 = inttoptr i64 %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %12, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %86

25:                                               ; preds = %5
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @prof_tdata_mutex_choose(i8* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 12
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 11
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 0, i32* %42, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 10
  store i64 0, i64* %44, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 9
  %48 = load i32, i32* @PROF_CKH_MINITEMS, align 4
  %49 = load i32, i32* @prof_bt_hash, align 4
  %50 = load i32, i32* @prof_bt_keycomp, align 4
  %51 = call i64 @ckh_new(i32* %45, i32* %47, i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %25
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @tsd_tsdn(i32* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %57 = call i32 @idalloctm(i32 %55, %struct.TYPE_6__* %56, i32* null, i32* null, i32 1, i32 1)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %86

58:                                               ; preds = %25
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %60 = ptrtoint %struct.TYPE_6__* %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 8
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %65 = call i32 @prof_sample_threshold_update(%struct.TYPE_6__* %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store i32 0, i32* %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  store i32 0, i32* %69, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 5
  store i32 0, i32* %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 6
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @tsd_tsdn(i32* %77)
  %79 = call i32 @malloc_mutex_lock(i32 %78, i32* @tdatas_mtx)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %81 = call i32 @tdata_tree_insert(i32* @tdatas, %struct.TYPE_6__* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @tsd_tsdn(i32* %82)
  %84 = call i32 @malloc_mutex_unlock(i32 %83, i32* @tdatas_mtx)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %6, align 8
  br label %86

86:                                               ; preds = %58, %53, %24
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %87
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i64 @iallocztm(i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @sz_size2index(i32) #1

declare dso_local i32 @arena_get(i32, i32, i32) #1

declare dso_local i32 @prof_tdata_mutex_choose(i8*) #1

declare dso_local i64 @ckh_new(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @idalloctm(i32, %struct.TYPE_6__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @prof_sample_threshold_update(%struct.TYPE_6__*) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tdata_tree_insert(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
