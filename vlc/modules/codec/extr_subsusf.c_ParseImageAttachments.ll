; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_ParseImageAttachments.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_ParseImageAttachments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, i32, i32*, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_26__ = type { i32*, i32 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_YUVA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sdl_image\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*)* @ParseImageAttachments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseImageAttachments(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_25__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_27__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  store %struct.TYPE_29__* %18, %struct.TYPE_29__** %4, align 8
  %19 = load i64, i64* @VLC_SUCCESS, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %21 = call i64 @decoder_GetInputAttachments(%struct.TYPE_28__* %20, %struct.TYPE_25__*** %5, i32* %6)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %2, align 4
  br label %146

25:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %138, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %141

30:                                               ; preds = %26
  %31 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %31, i64 %33
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  store %struct.TYPE_25__* %35, %struct.TYPE_25__** %8, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @image_Mime2Fourcc(i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %131

42:                                               ; preds = %30
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %131

47:                                               ; preds = %42
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %131

52:                                               ; preds = %47
  store i32* null, i32** %10, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %54 = call i32* @image_HandlerCreate(%struct.TYPE_28__* %53)
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %104

57:                                               ; preds = %52
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call %struct.TYPE_30__* @block_Alloc(i64 %60)
  store %struct.TYPE_30__* %61, %struct.TYPE_30__** %12, align 8
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %63 = icmp ne %struct.TYPE_30__* %62, null
  br i1 %63, label %64, label %101

64:                                               ; preds = %57
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @memcpy(i32 %67, i32* %70, i64 %73)
  %75 = load i32, i32* @VIDEO_ES, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @es_format_Init(%struct.TYPE_27__* %13, i32 %75, i64 %76)
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @VLC_CODEC_YUVA, align 4
  %82 = call i32 @video_format_Init(i32* %14, i32 %81)
  %83 = call i64 @module_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %64
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %87 = load i32, i32* @VLC_VAR_STRING, align 4
  %88 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @var_Create(%struct.TYPE_28__* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %92 = call i32 @var_SetString(%struct.TYPE_28__* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %85, %64
  %94 = load i32*, i32** %11, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %96 = call i32* @image_Read(i32* %94, %struct.TYPE_30__* %95, %struct.TYPE_27__* %13, i32* %14)
  store i32* %96, i32** %10, align 8
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %98 = call i32 @var_Destroy(%struct.TYPE_28__* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %99 = call i32 @es_format_Clean(%struct.TYPE_27__* %13)
  %100 = call i32 @video_format_Clean(i32* %14)
  br label %101

101:                                              ; preds = %93, %57
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @image_HandlerDelete(i32* %102)
  br label %104

104:                                              ; preds = %101, %52
  %105 = load i32*, i32** %10, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %130

107:                                              ; preds = %104
  %108 = call %struct.TYPE_26__* @malloc(i32 16)
  store %struct.TYPE_26__* %108, %struct.TYPE_26__** %15, align 8
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %110 = icmp ne %struct.TYPE_26__* %109, null
  br i1 %110, label %111, label %129

111:                                              ; preds = %107
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @strdup(i32 %114)
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  store i32* %118, i32** %120, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %128 = call i32 @TAB_APPEND(i32 %123, i32 %126, %struct.TYPE_26__* %127)
  br label %129

129:                                              ; preds = %111, %107
  br label %130

130:                                              ; preds = %129, %104
  br label %131

131:                                              ; preds = %130, %47, %42, %30
  %132 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %132, i64 %134
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %135, align 8
  %137 = call i32 @vlc_input_attachment_Delete(%struct.TYPE_25__* %136)
  br label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %26

141:                                              ; preds = %26
  %142 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %143 = call i32 @free(%struct.TYPE_25__** %142)
  %144 = load i64, i64* @VLC_SUCCESS, align 8
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %141, %23
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @decoder_GetInputAttachments(%struct.TYPE_28__*, %struct.TYPE_25__***, i32*) #1

declare dso_local i64 @image_Mime2Fourcc(i32) #1

declare dso_local i32* @image_HandlerCreate(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_30__* @block_Alloc(i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_27__*, i32, i64) #1

declare dso_local i32 @video_format_Init(i32*, i32) #1

declare dso_local i64 @module_exists(i8*) #1

declare dso_local i32 @var_Create(%struct.TYPE_28__*, i8*, i32) #1

declare dso_local i32 @var_SetString(%struct.TYPE_28__*, i8*, i8*) #1

declare dso_local i32* @image_Read(i32*, %struct.TYPE_30__*, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @var_Destroy(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_27__*) #1

declare dso_local i32 @video_format_Clean(i32*) #1

declare dso_local i32 @image_HandlerDelete(i32*) #1

declare dso_local %struct.TYPE_26__* @malloc(i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @TAB_APPEND(i32, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @vlc_input_attachment_Delete(%struct.TYPE_25__*) #1

declare dso_local i32 @free(%struct.TYPE_25__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
