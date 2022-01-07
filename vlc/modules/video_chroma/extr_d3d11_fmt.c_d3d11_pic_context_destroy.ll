; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_d3d11_pic_context_destroy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_d3d11_pic_context_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d11_pic_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d3d11_pic_context_destroy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.d3d11_pic_context*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.d3d11_pic_context* @D3D11_PICCONTEXT_FROM_PICCTX(i32* %4)
  store %struct.d3d11_pic_context* %5, %struct.d3d11_pic_context** %3, align 8
  %6 = load %struct.d3d11_pic_context*, %struct.d3d11_pic_context** %3, align 8
  %7 = getelementptr inbounds %struct.d3d11_pic_context, %struct.d3d11_pic_context* %6, i32 0, i32 0
  %8 = call i32 @ReleaseD3D11PictureSys(i32* %7)
  %9 = load %struct.d3d11_pic_context*, %struct.d3d11_pic_context** %3, align 8
  %10 = call i32 @free(%struct.d3d11_pic_context* %9)
  ret void
}

declare dso_local %struct.d3d11_pic_context* @D3D11_PICCONTEXT_FROM_PICCTX(i32*) #1

declare dso_local i32 @ReleaseD3D11PictureSys(i32*) #1

declare dso_local i32 @free(%struct.d3d11_pic_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
