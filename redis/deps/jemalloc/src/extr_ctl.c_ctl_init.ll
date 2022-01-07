; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ctl.c_ctl_init.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ctl.c_ctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@ctl_mtx = common dso_local global i32 0, align 4
@ctl_initialized = common dso_local global i32 0, align 4
@ctl_arenas = common dso_local global %struct.TYPE_6__* null, align 8
@QUANTUM = common dso_local global i32 0, align 4
@config_stats = common dso_local global i64 0, align 8
@ctl_stats = common dso_local global i32* null, align 8
@MALLCTL_ARENAS_ALL = common dso_local global i32 0, align 4
@MALLCTL_ARENAS_DESTROYED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @tsd_tsdn(i32* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @malloc_mutex_lock(i32* %10, i32* @ctl_mtx)
  %12 = load i32, i32* @ctl_initialized, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %85, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctl_arenas, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 (...) @b0get()
  %20 = load i32, i32* @QUANTUM, align 4
  %21 = call i64 @base_alloc(i32* %18, i32 %19, i32 8, i32 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** @ctl_arenas, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctl_arenas, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %86

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %14
  %28 = load i64, i64* @config_stats, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32*, i32** @ctl_stats, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 (...) @b0get()
  %36 = load i32, i32* @QUANTUM, align 4
  %37 = call i64 @base_alloc(i32* %34, i32 %35, i32 4, i32 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** @ctl_stats, align 8
  %39 = load i32*, i32** @ctl_stats, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %86

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %30, %27
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @MALLCTL_ARENAS_ALL, align 4
  %46 = call %struct.TYPE_7__* @arenas_i_impl(i32* %44, i32 %45, i32 0, i32 1)
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %5, align 8
  %47 = icmp eq %struct.TYPE_7__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %86

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* @MALLCTL_ARENAS_DESTROYED, align 4
  %54 = call %struct.TYPE_7__* @arenas_i_impl(i32* %52, i32 %53, i32 0, i32 1)
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %6, align 8
  %55 = icmp eq %struct.TYPE_7__* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %86

57:                                               ; preds = %49
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = call i32 @ctl_arena_clear(%struct.TYPE_7__* %58)
  %60 = call i32 (...) @narenas_total_get()
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctl_arenas, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %76, %57
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctl_arenas, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ult i32 %64, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call %struct.TYPE_7__* @arenas_i_impl(i32* %70, i32 %71, i32 0, i32 1)
  %73 = icmp eq %struct.TYPE_7__* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %86

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %63

79:                                               ; preds = %63
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctl_arenas, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = call i32 @ql_new(i32* %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @ctl_refresh(i32* %83)
  store i32 1, i32* @ctl_initialized, align 4
  br label %85

85:                                               ; preds = %79, %1
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %74, %56, %48, %41, %25
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @malloc_mutex_unlock(i32* %87, i32* @ctl_mtx)
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32* @tsd_tsdn(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i64 @base_alloc(i32*, i32, i32, i32) #1

declare dso_local i32 @b0get(...) #1

declare dso_local %struct.TYPE_7__* @arenas_i_impl(i32*, i32, i32, i32) #1

declare dso_local i32 @ctl_arena_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @narenas_total_get(...) #1

declare dso_local i32 @ql_new(i32*) #1

declare dso_local i32 @ctl_refresh(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
