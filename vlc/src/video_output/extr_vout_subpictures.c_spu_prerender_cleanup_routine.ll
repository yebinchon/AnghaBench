; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_prerender_cleanup_routine.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_prerender_cleanup_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_prerender_ctx_s = type { i32, i32**, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @spu_prerender_cleanup_routine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_prerender_cleanup_routine(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spu_prerender_ctx_s*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.spu_prerender_ctx_s*
  store %struct.spu_prerender_ctx_s* %5, %struct.spu_prerender_ctx_s** %3, align 8
  %6 = load %struct.spu_prerender_ctx_s*, %struct.spu_prerender_ctx_s** %3, align 8
  %7 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %6, i32 0, i32 3
  %8 = call i32 @video_format_Clean(i32* %7)
  %9 = load %struct.spu_prerender_ctx_s*, %struct.spu_prerender_ctx_s** %3, align 8
  %10 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %9, i32 0, i32 2
  %11 = call i32 @video_format_Clean(i32* %10)
  %12 = load %struct.spu_prerender_ctx_s*, %struct.spu_prerender_ctx_s** %3, align 8
  %13 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  store i32* null, i32** %14, align 8
  %15 = load %struct.spu_prerender_ctx_s*, %struct.spu_prerender_ctx_s** %3, align 8
  %16 = getelementptr inbounds %struct.spu_prerender_ctx_s, %struct.spu_prerender_ctx_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @vlc_mutex_unlock(i32 %17)
  ret void
}

declare dso_local i32 @video_format_Clean(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
