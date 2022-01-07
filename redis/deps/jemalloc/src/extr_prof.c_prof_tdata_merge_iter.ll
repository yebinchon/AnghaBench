; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_tdata_merge_iter.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_tdata_merge_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.prof_tdata_merge_iter_arg_s = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%union.anon = type { i32* }

@opt_prof_accum = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, %struct.TYPE_8__*, i8*)* @prof_tdata_merge_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @prof_tdata_merge_iter(i32* %0, %struct.TYPE_8__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.prof_tdata_merge_iter_arg_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.anon, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.prof_tdata_merge_iter_arg_s*
  store %struct.prof_tdata_merge_iter_arg_s* %11, %struct.prof_tdata_merge_iter_arg_s** %7, align 8
  %12 = load %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_tdata_merge_iter_arg_s** %7, align 8
  %13 = getelementptr inbounds %struct.prof_tdata_merge_iter_arg_s, %struct.prof_tdata_merge_iter_arg_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @malloc_mutex_lock(i32 %14, i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %93, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = call i32 @memset(%struct.TYPE_9__* %27, i32 0, i32 4)
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %36, %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = bitcast %union.anon* %9 to i8**
  %33 = call i32 @ckh_iter(i32* %31, i64* %8, i32* null, i8** %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_tdata_merge_iter_arg_s** %7, align 8
  %38 = getelementptr inbounds %struct.prof_tdata_merge_iter_arg_s, %struct.prof_tdata_merge_iter_arg_s* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = bitcast %union.anon* %9 to i32**
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = call i32 @prof_tctx_merge_tdata(i32 %39, i32* %41, %struct.TYPE_8__* %42)
  br label %29

44:                                               ; preds = %29
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_tdata_merge_iter_arg_s** %7, align 8
  %50 = getelementptr inbounds %struct.prof_tdata_merge_iter_arg_s, %struct.prof_tdata_merge_iter_arg_s* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %48
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_tdata_merge_iter_arg_s** %7, align 8
  %61 = getelementptr inbounds %struct.prof_tdata_merge_iter_arg_s, %struct.prof_tdata_merge_iter_arg_s* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %59
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load i64, i64* @opt_prof_accum, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %44
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_tdata_merge_iter_arg_s** %7, align 8
  %75 = getelementptr inbounds %struct.prof_tdata_merge_iter_arg_s, %struct.prof_tdata_merge_iter_arg_s* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %73
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_tdata_merge_iter_arg_s** %7, align 8
  %86 = getelementptr inbounds %struct.prof_tdata_merge_iter_arg_s, %struct.prof_tdata_merge_iter_arg_s* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %84
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  br label %92

92:                                               ; preds = %69, %44
  br label %96

93:                                               ; preds = %3
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %92
  %97 = load %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_tdata_merge_iter_arg_s** %7, align 8
  %98 = getelementptr inbounds %struct.prof_tdata_merge_iter_arg_s, %struct.prof_tdata_merge_iter_arg_s* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @malloc_mutex_unlock(i32 %99, i32 %102)
  ret %struct.TYPE_8__* null
}

declare dso_local i32 @malloc_mutex_lock(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ckh_iter(i32*, i64*, i32*, i8**) #1

declare dso_local i32 @prof_tctx_merge_tdata(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
