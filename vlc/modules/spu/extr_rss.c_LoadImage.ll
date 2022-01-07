; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_rss.c_LoadImage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_rss.c_LoadImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }

@VLC_CODEC_YUVA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unable to read image %s\00", align 1
@Y_PLANE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Error while converting %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_25__* (%struct.TYPE_26__*, i8*)* @LoadImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_25__* @LoadImage(%struct.TYPE_26__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_24__, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %13, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %8, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %15 = call i32* @image_HandlerCreate(%struct.TYPE_26__* %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32, i32* @VLC_CODEC_YUVA, align 4
  %17 = call i32 @video_format_Init(%struct.TYPE_24__* %6, i32 %16)
  %18 = load i32*, i32** %9, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call %struct.TYPE_25__* @image_ReadUrl(i32* %18, i8* %19, %struct.TYPE_24__* %6)
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %7, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %22 = icmp ne %struct.TYPE_25__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @msg_Warn(%struct.TYPE_26__* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %96

27:                                               ; preds = %2
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %93

34:                                               ; preds = %27
  %35 = call i32 @video_format_Copy(%struct.TYPE_24__* %10, %struct.TYPE_24__* %6)
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %39 = load i64, i64* @Y_PLANE, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %45, align 8
  %47 = load i64, i64* @Y_PLANE, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = load i64, i64* @Y_PLANE, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %58, %63
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = load i64, i64* @Y_PLANE, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %64, %71
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %82 = call %struct.TYPE_25__* @image_Convert(i32* %80, %struct.TYPE_25__* %81, %struct.TYPE_24__* %10, %struct.TYPE_24__* %6)
  store %struct.TYPE_25__* %82, %struct.TYPE_25__** %8, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %84 = call i32 @picture_Release(%struct.TYPE_25__* %83)
  %85 = call i32 @video_format_Clean(%struct.TYPE_24__* %10)
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %87 = icmp ne %struct.TYPE_25__* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %34
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @msg_Warn(%struct.TYPE_26__* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %34
  br label %95

93:                                               ; preds = %27
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_25__* %94, %struct.TYPE_25__** %8, align 8
  br label %95

95:                                               ; preds = %93, %92
  br label %96

96:                                               ; preds = %95, %23
  %97 = call i32 @video_format_Clean(%struct.TYPE_24__* %6)
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @image_HandlerDelete(i32* %98)
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  ret %struct.TYPE_25__* %100
}

declare dso_local i32* @image_HandlerCreate(%struct.TYPE_26__*) #1

declare dso_local i32 @video_format_Init(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_25__* @image_ReadUrl(i32*, i8*, %struct.TYPE_24__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @video_format_Copy(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @image_Convert(i32*, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_25__*) #1

declare dso_local i32 @video_format_Clean(%struct.TYPE_24__*) #1

declare dso_local i32 @image_HandlerDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
