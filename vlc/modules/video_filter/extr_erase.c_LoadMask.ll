; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_erase.c_LoadMask.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_erase.c_LoadMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@VLC_CODEC_YUVA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Error while loading new mask. Keeping old mask.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Error while loading new mask. No mask available.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @LoadMask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadMask(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* @VLC_CODEC_YUVA, align 4
  %17 = call i32 @video_format_Init(i32* %7, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = call i32* @image_HandlerCreate(%struct.TYPE_6__* %18)
  store i32* %19, i32** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @vlc_path2uri(i8* %20, i32* null)
  store i8* %21, i8** %9, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32* @image_ReadUrl(i32* %22, i8* %23, i32* %7)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @free(i8* %27)
  %29 = call i32 @video_format_Clean(i32* %7)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @picture_Release(i32* %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %54

41:                                               ; preds = %2
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = call i32 @msg_Err(%struct.TYPE_6__* %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %53

50:                                               ; preds = %41
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = call i32 @msg_Err(%struct.TYPE_6__* %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @image_HandlerDelete(i32* %55)
  ret void
}

declare dso_local i32 @video_format_Init(i32*, i32) #1

declare dso_local i32* @image_HandlerCreate(%struct.TYPE_6__*) #1

declare dso_local i8* @vlc_path2uri(i8*, i32*) #1

declare dso_local i32* @image_ReadUrl(i32*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @video_format_Clean(i32*) #1

declare dso_local i32 @picture_Release(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @image_HandlerDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
