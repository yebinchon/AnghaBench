; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_d3d11_pic_context_copy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_d3d11_pic_context_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d11_pic_context = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @d3d11_pic_context_copy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.d3d11_pic_context*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.d3d11_pic_context* @calloc(i32 1, i32 8)
  store %struct.d3d11_pic_context* %5, %struct.d3d11_pic_context** %4, align 8
  %6 = load %struct.d3d11_pic_context*, %struct.d3d11_pic_context** %4, align 8
  %7 = icmp eq %struct.d3d11_pic_context* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.d3d11_pic_context*, %struct.d3d11_pic_context** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.d3d11_pic_context* @D3D11_PICCONTEXT_FROM_PICCTX(i32* %14)
  %16 = bitcast %struct.d3d11_pic_context* %13 to i8*
  %17 = bitcast %struct.d3d11_pic_context* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 8, i1 false)
  %18 = load %struct.d3d11_pic_context*, %struct.d3d11_pic_context** %4, align 8
  %19 = getelementptr inbounds %struct.d3d11_pic_context, %struct.d3d11_pic_context* %18, i32 0, i32 1
  %20 = call i32 @AcquireD3D11PictureSys(i32* %19)
  %21 = load %struct.d3d11_pic_context*, %struct.d3d11_pic_context** %4, align 8
  %22 = getelementptr inbounds %struct.d3d11_pic_context, %struct.d3d11_pic_context* %21, i32 0, i32 0
  store i32* %22, i32** %2, align 8
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i32*, i32** %2, align 8
  ret i32* %24
}

declare dso_local %struct.d3d11_pic_context* @calloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.d3d11_pic_context* @D3D11_PICCONTEXT_FROM_PICCTX(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AcquireD3D11PictureSys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
