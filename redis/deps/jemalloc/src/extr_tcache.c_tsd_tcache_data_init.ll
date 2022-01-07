; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_tcache.c_tsd_tcache_data_init.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_tcache.c_tsd_tcache_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32* }

@stack_nelms = common dso_local global i32 0, align 4
@CACHELINE = common dso_local global i32 0, align 4
@TSDN_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsd_tcache_data_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_7__* @tsd_tcachep_get_unsafe(i32* %8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = call %struct.TYPE_8__* @tcache_small_bin_get(%struct.TYPE_7__* %10, i32 0)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @stack_nelms, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @CACHELINE, align 4
  %22 = call i64 @sz_sa2u(i64 %20, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @tsd_tsdn(i32* %23)
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @CACHELINE, align 4
  %27 = load i32, i32* @TSDN_NULL, align 4
  %28 = call i32* @arena_get(i32 %27, i32 0, i32 1)
  %29 = call i8* @ipallocztm(i32 %24, i64 %25, i32 %26, i32 1, i32* null, i32 1, i32* %28)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %73

33:                                               ; preds = %1
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @tcache_init(i32* %34, %struct.TYPE_7__* %35, i8* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = call i32 (...) @malloc_initialized()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @tsd_tsdn(i32* %43)
  %45 = call i32* @arena_get(i32 %44, i32 0, i32 0)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @tsd_tsdn(i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @tcache_arena_associate(i32 %47, %struct.TYPE_7__* %48, i32* %49)
  br label %65

51:                                               ; preds = %33
  %52 = load i32*, i32** %3, align 8
  %53 = call i32* @arena_choose(i32* %52, i32* null)
  store i32* %53, i32** %7, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @tsd_tsdn(i32* %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @tcache_arena_associate(i32 %60, %struct.TYPE_7__* %61, i32* %62)
  br label %64

64:                                               ; preds = %58, %51
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %66, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %65, %32
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_7__* @tsd_tcachep_get_unsafe(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @tcache_small_bin_get(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @sz_sa2u(i64, i32) #1

declare dso_local i8* @ipallocztm(i32, i64, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32* @arena_get(i32, i32, i32) #1

declare dso_local i32 @tcache_init(i32*, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @malloc_initialized(...) #1

declare dso_local i32 @tcache_arena_associate(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32* @arena_choose(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
