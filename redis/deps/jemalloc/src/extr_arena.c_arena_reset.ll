; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_arena.c_arena_reset.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_arena.c_arena_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32, i32, i32* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i32 }

@extents_rtree = common dso_local global i32 0, align 4
@NSIZES = common dso_local global i64 0, align 8
@config_stats = common dso_local global i64 0, align 8
@config_prof = common dso_local global i64 0, align 8
@opt_prof = common dso_local global i64 0, align 8
@NBINS = common dso_local global i32 0, align 4
@ATOMIC_RELAXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arena_reset(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @tsd_tsdn(i32* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = call i32 @malloc_mutex_lock(i32 %14, i32* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = call i32* @extent_list_first(i32* %19)
  store i32* %20, i32** %5, align 8
  br label %21

21:                                               ; preds = %89, %2
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %93

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = call i8* @extent_base_get(i32* %25)
  store i8* %26, i8** %6, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @tsd_tsdn(i32* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = call i32 @malloc_mutex_unlock(i32 %28, i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32* @tsd_rtree_ctx(i32* %32)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @tsd_tsdn(i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %41 = call i32 @rtree_szind_slab_read(i32 %35, i32* @extents_rtree, i32* %36, i64 %38, i32 1, i64* %39, i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NSIZES, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i64, i64* @config_stats, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %24
  %51 = load i64, i64* @config_prof, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i64, i64* @opt_prof, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53, %24
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @sz_index2size(i64 %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @tsd_tsdn(i32* %61)
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @isalloc(i32 %62, i8* %63)
  %65 = icmp eq i64 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  br label %68

68:                                               ; preds = %56, %53, %50
  %69 = load i64, i64* @config_prof, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i64, i64* @opt_prof, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32*, i32** %3, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @prof_free(i32* %75, i8* %76, i64 %77, %struct.TYPE_13__* %8)
  br label %79

79:                                               ; preds = %74, %71, %68
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @tsd_tsdn(i32* %80)
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @large_dalloc(i32 %81, i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @tsd_tsdn(i32* %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = call i32 @malloc_mutex_lock(i32 %85, i32* %87)
  br label %89

89:                                               ; preds = %79
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 3
  %92 = call i32* @extent_list_first(i32* %91)
  store i32* %92, i32** %5, align 8
  br label %21

93:                                               ; preds = %21
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @tsd_tsdn(i32* %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = call i32 @malloc_mutex_unlock(i32 %95, i32* %97)
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %209, %93
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @NBINS, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %212

103:                                              ; preds = %99
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %108
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %12, align 8
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @tsd_tsdn(i32* %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = call i32 @malloc_mutex_lock(i32 %111, i32* %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %140

119:                                              ; preds = %103
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %11, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 4
  store i32* null, i32** %124, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @tsd_tsdn(i32* %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = call i32 @malloc_mutex_unlock(i32 %126, i32* %128)
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 @tsd_tsdn(i32* %130)
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = call i32 @arena_slab_dalloc(i32 %131, %struct.TYPE_12__* %132, i32* %133)
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 @tsd_tsdn(i32* %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = call i32 @malloc_mutex_lock(i32 %136, i32* %138)
  br label %140

140:                                              ; preds = %119, %103
  br label %141

141:                                              ; preds = %146, %140
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 3
  %144 = call i32* @extent_heap_remove_first(i32* %143)
  store i32* %144, i32** %11, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %162

146:                                              ; preds = %141
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @tsd_tsdn(i32* %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = call i32 @malloc_mutex_unlock(i32 %148, i32* %150)
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @tsd_tsdn(i32* %152)
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = call i32 @arena_slab_dalloc(i32 %153, %struct.TYPE_12__* %154, i32* %155)
  %157 = load i32*, i32** %3, align 8
  %158 = call i32 @tsd_tsdn(i32* %157)
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = call i32 @malloc_mutex_lock(i32 %158, i32* %160)
  br label %141

162:                                              ; preds = %141
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = call i32* @extent_list_first(i32* %164)
  store i32* %165, i32** %11, align 8
  br label %166

166:                                              ; preds = %189, %162
  %167 = load i32*, i32** %11, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %193

169:                                              ; preds = %166
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %172 = load i32*, i32** %11, align 8
  %173 = call i32 @arena_bin_slabs_full_remove(%struct.TYPE_12__* %170, %struct.TYPE_11__* %171, i32* %172)
  %174 = load i32*, i32** %3, align 8
  %175 = call i32 @tsd_tsdn(i32* %174)
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = call i32 @malloc_mutex_unlock(i32 %175, i32* %177)
  %179 = load i32*, i32** %3, align 8
  %180 = call i32 @tsd_tsdn(i32* %179)
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %182 = load i32*, i32** %11, align 8
  %183 = call i32 @arena_slab_dalloc(i32 %180, %struct.TYPE_12__* %181, i32* %182)
  %184 = load i32*, i32** %3, align 8
  %185 = call i32 @tsd_tsdn(i32* %184)
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = call i32 @malloc_mutex_lock(i32 %185, i32* %187)
  br label %189

189:                                              ; preds = %169
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 2
  %192 = call i32* @extent_list_first(i32* %191)
  store i32* %192, i32** %11, align 8
  br label %166

193:                                              ; preds = %166
  %194 = load i64, i64* @config_stats, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %193
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  store i64 0, i64* %199, align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %196, %193
  %204 = load i32*, i32** %3, align 8
  %205 = call i32 @tsd_tsdn(i32* %204)
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = call i32 @malloc_mutex_unlock(i32 %205, i32* %207)
  br label %209

209:                                              ; preds = %203
  %210 = load i32, i32* %10, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %99

212:                                              ; preds = %99
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i32, i32* @ATOMIC_RELAXED, align 4
  %216 = call i32 @atomic_store_zu(i32* %214, i32 0, i32 %215)
  ret void
}

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32* @extent_list_first(i32*) #1

declare dso_local i8* @extent_base_get(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

declare dso_local i32* @tsd_rtree_ctx(i32*) #1

declare dso_local i32 @rtree_szind_slab_read(i32, i32*, i32*, i64, i32, i64*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sz_index2size(i64) #1

declare dso_local i64 @isalloc(i32, i8*) #1

declare dso_local i32 @prof_free(i32*, i8*, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @large_dalloc(i32, i32*) #1

declare dso_local i32 @arena_slab_dalloc(i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32* @extent_heap_remove_first(i32*) #1

declare dso_local i32 @arena_bin_slabs_full_remove(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @atomic_store_zu(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
