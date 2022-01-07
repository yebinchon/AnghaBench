; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_PrerenderThread.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_PrerenderThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_11__*, i32, i32, i32, i32*, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__** }
%struct.spu_prerender_ctx_s = type { i64*, i32, i32, %struct.TYPE_11__**, i32* }

@SPU_CHROMALIST_COUNT = common dso_local global i64 0, align 8
@spu_prerender_cleanup_routine = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @spu_PrerenderThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @spu_PrerenderThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.spu_prerender_ctx_s, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 4
  store i32* %16, i32** %17, align 8
  %18 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @SPU_CHROMALIST_COUNT, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 2
  %23 = call i32 @video_format_Init(i32* %22, i32 0)
  %24 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 1
  %25 = call i32 @video_format_Init(i32* %24, i32 0)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 3
  store %struct.TYPE_11__** %28, %struct.TYPE_11__*** %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = call i32 @vlc_mutex_lock(i32* %32)
  br label %34

34:                                               ; preds = %117, %1
  %35 = load i32, i32* @spu_prerender_cleanup_routine, align 4
  %36 = call i32 @vlc_cleanup_push(i32 %35, %struct.spu_prerender_ctx_s* %5)
  br label %37

37:                                               ; preds = %55, %34
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %44, %37
  %54 = phi i1 [ true, %37 ], [ %52, %44 ]
  br i1 %54, label %55, label %63

55:                                               ; preds = %53
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = call i32 @vlc_cond_wait(i32* %58, i32* %61)
  br label %37

63:                                               ; preds = %53
  store i64 0, i64* %6, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %68, i64 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %73, align 8
  store i64 1, i64* %7, align 8
  br label %74

74:                                               ; preds = %114, %63
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %75, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %74
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %93, i64 %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %88, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %82
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %105, i64 %106
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %111, align 8
  %112 = load i64, i64* %7, align 8
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %100, %82
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %7, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %7, align 8
  br label %74

117:                                              ; preds = %74
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 6
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @vlc_vector_remove(%struct.TYPE_10__* %120, i64 %121)
  %123 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 5
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @SPU_CHROMALIST_COUNT, align 8
  %129 = call i32 @memcpy(i64** %123, i32* %127, i64 %128)
  %130 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 1
  %131 = call i32 @video_format_Clean(i32* %130)
  %132 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 2
  %133 = call i32 @video_format_Clean(i32* %132)
  %134 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 4
  %138 = call i32 @video_format_Copy(i32* %134, i32* %137)
  %139 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 2
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = call i32 @video_format_Copy(i32* %139, i32* %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = call i32 @vlc_mutex_unlock(i32* %146)
  %148 = call i32 (...) @vlc_cleanup_pop()
  %149 = call i32 (...) @vlc_savecancel()
  store i32 %149, i32* %8, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 2
  %156 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 1
  %157 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %5, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = call i32 @spu_PrerenderText(%struct.TYPE_8__* %150, %struct.TYPE_11__* %154, i32* %155, i32* %156, i64* %158)
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @vlc_restorecancel(i32 %160)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = call i32 @vlc_mutex_lock(i32* %164)
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %168, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = call i32 @vlc_cond_signal(i32* %171)
  br label %34
}

declare dso_local i32 @video_format_Init(i32*, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_cleanup_push(i32, %struct.spu_prerender_ctx_s*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @vlc_vector_remove(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @memcpy(i64**, i32*, i64) #1

declare dso_local i32 @video_format_Clean(i32*) #1

declare dso_local i32 @video_format_Copy(i32*, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @spu_PrerenderText(%struct.TYPE_8__*, %struct.TYPE_11__*, i32*, i32*, i64*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
