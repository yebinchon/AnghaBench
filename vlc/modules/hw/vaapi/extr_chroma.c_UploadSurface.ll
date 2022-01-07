; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_chroma.c_UploadSurface.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_chroma.c_UploadSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"cannot retrieve picture from the dest pics pool\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32*)* @UploadSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @UploadSurface(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @picture_pool_Wait(i32 %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i32 @msg_Err(%struct.TYPE_9__* %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %71

25:                                               ; preds = %2
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @vlc_vaapi_PicAttachContext(i32* %26)
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @picture_CopyProperties(i32* %28, i32* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = call i32 @VLC_OBJECT(%struct.TYPE_9__* %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @vlc_vaapi_PicGetSurface(i32* %34)
  %36 = call i64 @vlc_vaapi_DeriveImage(i32 %32, i32 %33, i32 %35, %struct.TYPE_11__* %7)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %25
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = call i32 @VLC_OBJECT(%struct.TYPE_9__* %39)
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @vlc_vaapi_MapBuffer(i32 %40, i32 %41, i32 %43, i8** %8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %25
  br label %75

47:                                               ; preds = %38
  %48 = load i8*, i8** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = call i32 @FillVAImageFromPicture(%struct.TYPE_11__* %7, i8* %48, i32* %49, i32* %50, i32* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = call i32 @VLC_OBJECT(%struct.TYPE_9__* %54)
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @vlc_vaapi_UnmapBuffer(i32 %55, i32 %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %47
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = call i32 @VLC_OBJECT(%struct.TYPE_9__* %62)
  %64 = load i32, i32* %6, align 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @vlc_vaapi_DestroyImage(i32 %63, i32 %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61, %47
  br label %75

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %75, %70, %22
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @picture_Release(i32* %72)
  %74 = load i32*, i32** %9, align 8
  ret i32* %74

75:                                               ; preds = %69, %46
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @picture_Release(i32* %76)
  store i32* null, i32** %9, align 8
  br label %71
}

declare dso_local i32* @picture_pool_Wait(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @vlc_vaapi_PicAttachContext(i32*) #1

declare dso_local i32 @picture_CopyProperties(i32*, i32*) #1

declare dso_local i64 @vlc_vaapi_DeriveImage(i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_9__*) #1

declare dso_local i32 @vlc_vaapi_PicGetSurface(i32*) #1

declare dso_local i64 @vlc_vaapi_MapBuffer(i32, i32, i32, i8**) #1

declare dso_local i32 @FillVAImageFromPicture(%struct.TYPE_11__*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @vlc_vaapi_UnmapBuffer(i32, i32, i32) #1

declare dso_local i64 @vlc_vaapi_DestroyImage(i32, i32, i32) #1

declare dso_local i32 @picture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
