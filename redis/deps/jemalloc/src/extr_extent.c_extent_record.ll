; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_record.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@extent_state_dirty = common dso_local global i64 0, align 8
@extent_state_muzzy = common dso_local global i64 0, align 8
@NSIZES = common dso_local global i32 0, align 4
@extents_rtree = common dso_local global i32 0, align 4
@LARGE_MINCLASS = common dso_local global i64 0, align 8
@extent_state_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32**, %struct.TYPE_6__*, i32*, i32)* @extent_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extent_record(i32* %0, i32* %1, i32** %2, %struct.TYPE_6__* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32** %2, i32*** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @tsdn_rtree_ctx(i32* %17, i32* %13)
  store i32* %18, i32** %14, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = call i64 @extents_state_get(%struct.TYPE_6__* %19)
  %21 = load i64, i64* @extent_state_dirty, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %6
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = call i64 @extents_state_get(%struct.TYPE_6__* %24)
  %26 = load i64, i64* @extent_state_muzzy, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23, %6
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @extent_zeroed_get(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ true, %23 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @malloc_mutex_lock(i32* %37, i32* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = load i32**, i32*** %9, align 8
  %43 = call i32 @extent_hooks_assure_initialized(i32* %41, i32** %42)
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @NSIZES, align 4
  %46 = call i32 @extent_szind_set(i32* %44, i32 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = call i64 @extent_slab_get(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %33
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @extent_interior_deregister(i32* %51, i32* %52, i32* %53)
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @extent_slab_set(i32* %55, i32 0)
  br label %57

57:                                               ; preds = %50, %33
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i64 @extent_base_get(i32* %60)
  %62 = call i32* @rtree_extent_read(i32* %58, i32* @extents_rtree, i32* %59, i64 %61, i32 1)
  %63 = load i32*, i32** %11, align 8
  %64 = icmp eq i32* %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %57
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32**, i32*** %9, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32* @extent_try_coalesce(i32* %72, i32* %73, i32** %74, i32* %75, %struct.TYPE_6__* %76, i32* %77, i32* null, i32 %78)
  store i32* %79, i32** %11, align 8
  br label %117

80:                                               ; preds = %57
  %81 = load i32*, i32** %11, align 8
  %82 = call i64 @extent_size_get(i32* %81)
  %83 = load i64, i64* @LARGE_MINCLASS, align 8
  %84 = icmp uge i64 %82, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %113, %85
  %87 = load i32*, i32** %11, align 8
  %88 = call i64 @extent_size_get(i32* %87)
  store i64 %88, i64* %16, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = call i64 @extent_state_get(i32* %89)
  %91 = load i64, i64* @extent_state_active, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load i32**, i32*** %9, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32* @extent_try_coalesce(i32* %95, i32* %96, i32** %97, i32* %98, %struct.TYPE_6__* %99, i32* %100, i32* %15, i32 %101)
  store i32* %102, i32** %11, align 8
  br label %103

103:                                              ; preds = %86
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32*, i32** %11, align 8
  %108 = call i64 @extent_size_get(i32* %107)
  %109 = load i64, i64* %16, align 8
  %110 = load i64, i64* @LARGE_MINCLASS, align 8
  %111 = add i64 %109, %110
  %112 = icmp uge i64 %108, %111
  br label %113

113:                                              ; preds = %106, %103
  %114 = phi i1 [ false, %103 ], [ %112, %106 ]
  br i1 %114, label %86, label %115

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %115, %80
  br label %117

117:                                              ; preds = %116, %71
  %118 = load i32*, i32** %7, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @extent_deactivate_locked(i32* %118, i32* %119, %struct.TYPE_6__* %120, i32* %121)
  %123 = load i32*, i32** %7, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = call i32 @malloc_mutex_unlock(i32* %123, i32* %125)
  ret void
}

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extents_state_get(%struct.TYPE_6__*) #1

declare dso_local i32 @extent_zeroed_get(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(i32*, i32**) #1

declare dso_local i32 @extent_szind_set(i32*, i32) #1

declare dso_local i64 @extent_slab_get(i32*) #1

declare dso_local i32 @extent_interior_deregister(i32*, i32*, i32*) #1

declare dso_local i32 @extent_slab_set(i32*, i32) #1

declare dso_local i32* @rtree_extent_read(i32*, i32*, i32*, i64, i32) #1

declare dso_local i64 @extent_base_get(i32*) #1

declare dso_local i32* @extent_try_coalesce(i32*, i32*, i32**, i32*, %struct.TYPE_6__*, i32*, i32*, i32) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i64 @extent_state_get(i32*) #1

declare dso_local i32 @extent_deactivate_locked(i32*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
