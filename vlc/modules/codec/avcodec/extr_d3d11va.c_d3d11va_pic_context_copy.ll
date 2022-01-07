; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_d3d11va.c_d3d11va_pic_context_copy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_d3d11va.c_d3d11va_pic_context_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d11va_pic_context = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }

@D3D11_MAX_SHADER_VIEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @d3d11va_pic_context_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @d3d11va_pic_context_copy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.d3d11va_pic_context*, align 8
  %5 = alloca %struct.d3d11va_pic_context*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.d3d11va_pic_context* @D3D11VA_PICCONTEXT_FROM_PICCTX(i32* %7)
  store %struct.d3d11va_pic_context* %8, %struct.d3d11va_pic_context** %4, align 8
  %9 = call %struct.d3d11va_pic_context* @malloc(i32 32)
  store %struct.d3d11va_pic_context* %9, %struct.d3d11va_pic_context** %5, align 8
  %10 = load %struct.d3d11va_pic_context*, %struct.d3d11va_pic_context** %5, align 8
  %11 = icmp eq %struct.d3d11va_pic_context* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %75

16:                                               ; preds = %1
  %17 = load %struct.d3d11va_pic_context*, %struct.d3d11va_pic_context** %5, align 8
  %18 = load %struct.d3d11va_pic_context*, %struct.d3d11va_pic_context** %4, align 8
  %19 = bitcast %struct.d3d11va_pic_context* %17 to i8*
  %20 = bitcast %struct.d3d11va_pic_context* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false)
  %21 = load %struct.d3d11va_pic_context*, %struct.d3d11va_pic_context** %5, align 8
  %22 = getelementptr inbounds %struct.d3d11va_pic_context, %struct.d3d11va_pic_context* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @va_surface_AddRef(i32 %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %64, %16
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %25
  %30 = load %struct.d3d11va_pic_context*, %struct.d3d11va_pic_context** %4, align 8
  %31 = getelementptr inbounds %struct.d3d11va_pic_context, %struct.d3d11va_pic_context* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.d3d11va_pic_context*, %struct.d3d11va_pic_context** %5, align 8
  %40 = getelementptr inbounds %struct.d3d11va_pic_context, %struct.d3d11va_pic_context* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %38, i32* %46, align 4
  %47 = load %struct.d3d11va_pic_context*, %struct.d3d11va_pic_context** %4, align 8
  %48 = getelementptr inbounds %struct.d3d11va_pic_context, %struct.d3d11va_pic_context* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.d3d11va_pic_context*, %struct.d3d11va_pic_context** %5, align 8
  %57 = getelementptr inbounds %struct.d3d11va_pic_context, %struct.d3d11va_pic_context* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %55, i32* %63, align 4
  br label %64

64:                                               ; preds = %29
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %25

67:                                               ; preds = %25
  %68 = load %struct.d3d11va_pic_context*, %struct.d3d11va_pic_context** %5, align 8
  %69 = getelementptr inbounds %struct.d3d11va_pic_context, %struct.d3d11va_pic_context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = call i32 @AcquireD3D11PictureSys(%struct.TYPE_4__* %70)
  %72 = load %struct.d3d11va_pic_context*, %struct.d3d11va_pic_context** %5, align 8
  %73 = getelementptr inbounds %struct.d3d11va_pic_context, %struct.d3d11va_pic_context* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32* %74, i32** %2, align 8
  br label %75

75:                                               ; preds = %67, %15
  %76 = load i32*, i32** %2, align 8
  ret i32* %76
}

declare dso_local %struct.d3d11va_pic_context* @D3D11VA_PICCONTEXT_FROM_PICCTX(i32*) #1

declare dso_local %struct.d3d11va_pic_context* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @va_surface_AddRef(i32) #1

declare dso_local i32 @AcquireD3D11PictureSys(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
