; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_lookup.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, %struct.TYPE_14__*, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%union.anon = type { %struct.TYPE_13__* }

@config_prof = common dso_local global i32 0, align 4
@prof_tctx_state_initializing = common dso_local global i32 0, align 4
@prof_tctx_state_nominal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @prof_lookup(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @config_prof, align 4
  %14 = call i32 @cassert(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_12__* @prof_tdata_get(i32* %15, i32 0)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = icmp eq %struct.TYPE_12__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %180

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @tsd_tsdn(i32* %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @malloc_mutex_lock(i32 %22, i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32*, i32** %5, align 8
  %30 = bitcast %union.anon* %6 to i8**
  %31 = call i32 @ckh_search(i32* %28, i32* %29, i32* null, i8** %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %20
  %35 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %20
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @tsd_tsdn(i32* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @malloc_mutex_unlock(i32 %40, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %177

47:                                               ; preds = %38
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = call i64 @prof_lookup_global(i32* %48, i32* %49, %struct.TYPE_12__* %50, i8** %9, %struct.TYPE_14__** %10, i32* %11)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %180

54:                                               ; preds = %47
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @tsd_tsdn(i32* %55)
  %57 = call i32 @sz_size2index(i32 48)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @arena_ichoose(i32* %58, i32* null)
  %60 = call i8* @iallocztm(i32 %56, i32 48, i32 %57, i32 0, i32* null, i32 1, i32 %59, i32 1)
  %61 = bitcast %union.anon* %6 to i8**
  store i8* %60, i8** %61, align 8
  %62 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = icmp eq %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = call i32 @prof_gctx_try_destroy(i32* %69, %struct.TYPE_12__* %70, %struct.TYPE_14__* %71, %struct.TYPE_12__* %72)
  br label %74

74:                                               ; preds = %68, %65
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %180

75:                                               ; preds = %54
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 7
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %79, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 6
  store i32 %82, i32* %85, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 5
  store i32 %88, i32* %91, align 4
  %92 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 4
  %95 = call i32 @memset(i32* %94, i32 0, i32 4)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %99, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = sext i32 %102 to i64
  %105 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  store i64 %104, i64* %107, align 8
  %108 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load i32, i32* @prof_tctx_state_initializing, align 4
  %112 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @tsd_tsdn(i32* %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @malloc_mutex_lock(i32 %116, i32 %119)
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i8*, i8** %9, align 8
  %125 = bitcast %union.anon* %6 to i8**
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @ckh_insert(i32* %121, i32* %123, i8* %124, i8* %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @tsd_tsdn(i32* %128)
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @malloc_mutex_unlock(i32 %129, i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %75
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32*, i32** %4, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %144 = call i32 @prof_gctx_try_destroy(i32* %140, %struct.TYPE_12__* %141, %struct.TYPE_14__* %142, %struct.TYPE_12__* %143)
  br label %145

145:                                              ; preds = %139, %136
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @tsd_tsdn(i32* %146)
  %148 = bitcast %union.anon* %6 to i8**
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @idalloctm(i32 %147, i8* %149, i32* null, i32* null, i32 1, i32 1)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %180

151:                                              ; preds = %75
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @tsd_tsdn(i32* %152)
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @malloc_mutex_lock(i32 %153, i32 %156)
  %158 = load i32, i32* @prof_tctx_state_nominal, align 4
  %159 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  store i32 %158, i32* %161, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 2
  %164 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = call i32 @tctx_tree_insert(i32* %163, %struct.TYPE_13__* %165)
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %168, align 4
  %171 = load i32*, i32** %4, align 8
  %172 = call i32 @tsd_tsdn(i32* %171)
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @malloc_mutex_unlock(i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %151, %38
  %178 = bitcast %union.anon* %6 to %struct.TYPE_13__**
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %178, align 8
  store %struct.TYPE_13__* %179, %struct.TYPE_13__** %3, align 8
  br label %180

180:                                              ; preds = %177, %145, %74, %53, %19
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %181
}

declare dso_local i32 @cassert(i32) #1

declare dso_local %struct.TYPE_12__* @prof_tdata_get(i32*, i32) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @ckh_search(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32) #1

declare dso_local i64 @prof_lookup_global(i32*, i32*, %struct.TYPE_12__*, i8**, %struct.TYPE_14__**, i32*) #1

declare dso_local i8* @iallocztm(i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @sz_size2index(i32) #1

declare dso_local i32 @arena_ichoose(i32*, i32*) #1

declare dso_local i32 @prof_gctx_try_destroy(i32*, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ckh_insert(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @idalloctm(i32, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @tctx_tree_insert(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
