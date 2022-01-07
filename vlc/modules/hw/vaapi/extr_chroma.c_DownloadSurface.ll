; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_chroma.c_DownloadSurface.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_chroma.c_DownloadSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"filter_NewPicture failed\00", align 1
@VA_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_25__* (%struct.TYPE_26__*, %struct.TYPE_25__*)* @DownloadSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_25__* @DownloadSurface(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  store %struct.TYPE_27__* %15, %struct.TYPE_27__** %5, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %17 = call i32 @vlc_vaapi_PicGetDisplay(%struct.TYPE_25__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %19 = call %struct.TYPE_25__* @filter_NewPicture(%struct.TYPE_26__* %18)
  store %struct.TYPE_25__* %19, %struct.TYPE_25__** %9, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %21 = icmp ne %struct.TYPE_25__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %24 = call i32 @msg_Err(%struct.TYPE_26__* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %115

25:                                               ; preds = %2
  %26 = load i64, i64* @VA_INVALID_ID, align 8
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %28 = call i32 @vlc_vaapi_PicGetSurface(%struct.TYPE_25__* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @vaSyncSurface(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %119

34:                                               ; preds = %25
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %41 = call i32 @VLC_OBJECT(%struct.TYPE_26__* %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @vlc_vaapi_DeriveImage(i32 %41, i32 %42, i32 %43, %struct.TYPE_28__* %7)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %85

46:                                               ; preds = %39, %34
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %119

52:                                               ; preds = %46
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @CreateFallbackImage(%struct.TYPE_26__* %55, %struct.TYPE_25__* %56, i32 %57, %struct.TYPE_28__* %12)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  br label %119

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %10, align 8
  %77 = call i64 @vaGetImage(i32 %66, i32 %67, i32 0, i32 0, i32 %71, i32 %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %63
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %119

82:                                               ; preds = %63
  %83 = bitcast %struct.TYPE_28__* %7 to i8*
  %84 = bitcast %struct.TYPE_28__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 16, i1 false)
  br label %85

85:                                               ; preds = %82, %39
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %87 = call i32 @VLC_OBJECT(%struct.TYPE_26__* %86)
  %88 = load i32, i32* %6, align 4
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @vlc_vaapi_MapBuffer(i32 %87, i32 %88, i32 %90, i8** %8)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %119

94:                                               ; preds = %85
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 2
  %99 = call i32 @FillPictureFromVAImage(%struct.TYPE_25__* %95, %struct.TYPE_28__* %7, i8* %96, i32* %98)
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %101 = call i32 @VLC_OBJECT(%struct.TYPE_26__* %100)
  %102 = load i32, i32* %6, align 4
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @vlc_vaapi_UnmapBuffer(i32 %101, i32 %102, i32 %104)
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %107 = call i32 @VLC_OBJECT(%struct.TYPE_26__* %106)
  %108 = load i32, i32* %6, align 4
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @vlc_vaapi_DestroyImage(i32 %107, i32 %108, i64 %110)
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %114 = call i32 @picture_CopyProperties(%struct.TYPE_25__* %112, %struct.TYPE_25__* %113)
  br label %115

115:                                              ; preds = %129, %94, %22
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %117 = call i32 @picture_Release(%struct.TYPE_25__* %116)
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  ret %struct.TYPE_25__* %118

119:                                              ; preds = %93, %79, %60, %51, %33
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* @VA_INVALID_ID, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %125 = call i32 @VLC_OBJECT(%struct.TYPE_26__* %124)
  %126 = load i32, i32* %6, align 4
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @vlc_vaapi_DestroyImage(i32 %125, i32 %126, i64 %127)
  br label %129

129:                                              ; preds = %123, %119
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %131 = call i32 @picture_Release(%struct.TYPE_25__* %130)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %9, align 8
  br label %115
}

declare dso_local i32 @vlc_vaapi_PicGetDisplay(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @filter_NewPicture(%struct.TYPE_26__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @vlc_vaapi_PicGetSurface(%struct.TYPE_25__*) #1

declare dso_local i64 @vaSyncSurface(i32, i32) #1

declare dso_local i64 @vlc_vaapi_DeriveImage(i32, i32, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_26__*) #1

declare dso_local i64 @CreateFallbackImage(%struct.TYPE_26__*, %struct.TYPE_25__*, i32, %struct.TYPE_28__*) #1

declare dso_local i64 @vaGetImage(i32, i32, i32, i32, i32, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vlc_vaapi_MapBuffer(i32, i32, i32, i8**) #1

declare dso_local i32 @FillPictureFromVAImage(%struct.TYPE_25__*, %struct.TYPE_28__*, i8*, i32*) #1

declare dso_local i32 @vlc_vaapi_UnmapBuffer(i32, i32, i32) #1

declare dso_local i32 @vlc_vaapi_DestroyImage(i32, i32, i64) #1

declare dso_local i32 @picture_CopyProperties(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
