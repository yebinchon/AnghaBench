; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_vlc_vaapi.c_vlc_vaapi_CreateConfigChecked.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_vlc_vaapi.c_vlc_vaapi_CreateConfigChecked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"profile(%d) is not supported\00", align 1
@VA_INVALID_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"entrypoint(%d) is not available\00", align 1
@VAConfigAttribRTFormat = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"vaGetConfigAttributes failed\00", align 1
@VA_RT_FORMAT_YUV420 = common dso_local global i32 0, align 4
@VA_RT_FORMAT_YUV420_10BPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"config doesn't support VA_RT_FORMAT_YUV420*\00", align 1
@vaCreateConfig = common dso_local global i32 0, align 4
@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@VASurfaceAttribPixelFormat = common dso_local global i64 0, align 8
@VA_SURFACE_ATTRIB_SETTABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"config doesn't support forced fourcc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vlc_vaapi_CreateConfigChecked(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @vlc_chroma_to_vaapi(i32 %23, i32* %13, i32* %12)
  br label %25

25:                                               ; preds = %22, %5
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @IsVaProfileSupported(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i32*, i8*, ...) @msg_Err(i32* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* @VA_INVALID_ID, align 8
  store i64 %34, i64* %6, align 8
  br label %158

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @IsEntrypointAvailable(i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 (i32*, i8*, ...) @msg_Err(i32* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* @VA_INVALID_ID, align 8
  store i64 %45, i64* %6, align 8
  br label %158

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %49 = load i32, i32* @VAConfigAttribRTFormat, align 4
  store i32 %49, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @vaGetConfigAttributes(i32 %50, i32 %51, i32 %52, %struct.TYPE_13__* %14, i32 1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 (i32*, i8*, ...) @msg_Err(i32* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i64, i64* @VA_INVALID_ID, align 8
  store i64 %58, i64* %6, align 8
  br label %158

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VA_RT_FORMAT_YUV420, align 4
  %63 = load i32, i32* @VA_RT_FORMAT_YUV420_10BPP, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 (i32*, i8*, ...) @msg_Err(i32* %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i64, i64* @VA_INVALID_ID, align 8
  store i64 %70, i64* %6, align 8
  br label %158

71:                                               ; preds = %59
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %16, align 8
  %72 = load i64, i64* @VA_INVALID_ID, align 8
  store i64 %72, i64* %17, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @vaCreateConfig, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @VA_CALL(i32* %73, i32 %74, i32 %75, i32 %76, i32 %77, %struct.TYPE_13__* %14, i32 1, i64* %17)
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i64, i64* %17, align 8
  store i64 %82, i64* %6, align 8
  br label %158

83:                                               ; preds = %71
  %84 = load i32, i32* %8, align 4
  %85 = load i64, i64* %17, align 8
  %86 = call i64 @vaQuerySurfaceAttributes(i32 %84, i64 %85, %struct.TYPE_12__* null, i32* %15)
  %87 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %143

90:                                               ; preds = %83
  %91 = load i32, i32* %15, align 4
  %92 = call %struct.TYPE_12__* @vlc_alloc(i32 %91, i32 16)
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %16, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %94 = icmp eq %struct.TYPE_12__* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %143

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  %98 = load i64, i64* %17, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %100 = call i64 @vaQuerySurfaceAttributes(i32 %97, i64 %98, %struct.TYPE_12__* %99, i32* %15)
  %101 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %143

104:                                              ; preds = %96
  store i32 0, i32* %18, align 4
  br label %105

105:                                              ; preds = %139, %104
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %105
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %111 = load i32, i32* %18, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %112
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %19, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @VASurfaceAttribPixelFormat, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %109
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @VA_SURFACE_ATTRIB_SETTABLE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %119
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %136 = call i32 @free(%struct.TYPE_12__* %135)
  %137 = load i64, i64* %17, align 8
  store i64 %137, i64* %6, align 8
  br label %158

138:                                              ; preds = %126, %119, %109
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %18, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %18, align 4
  br label %105

142:                                              ; preds = %105
  br label %143

143:                                              ; preds = %142, %103, %95, %89
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %145 = call i32 @free(%struct.TYPE_12__* %144)
  %146 = load i64, i64* %17, align 8
  %147 = load i64, i64* @VA_INVALID_ID, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 (i32*, i8*, ...) @msg_Err(i32* %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i64, i64* %17, align 8
  %155 = call i32 @vlc_vaapi_DestroyConfig(i32* %152, i32 %153, i64 %154)
  br label %156

156:                                              ; preds = %149, %143
  %157 = load i64, i64* @VA_INVALID_ID, align 8
  store i64 %157, i64* %6, align 8
  br label %158

158:                                              ; preds = %156, %134, %81, %67, %55, %41, %30
  %159 = load i64, i64* %6, align 8
  ret i64 %159
}

declare dso_local i32 @vlc_chroma_to_vaapi(i32, i32*, i32*) #1

declare dso_local i32 @IsVaProfileSupported(i32, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @IsEntrypointAvailable(i32, i32, i32) #1

declare dso_local i64 @vaGetConfigAttributes(i32, i32, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @VA_CALL(i32*, i32, i32, i32, i32, %struct.TYPE_13__*, i32, i64*) #1

declare dso_local i64 @vaQuerySurfaceAttributes(i32, i64, %struct.TYPE_12__*, i32*) #1

declare dso_local %struct.TYPE_12__* @vlc_alloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_vaapi_DestroyConfig(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
