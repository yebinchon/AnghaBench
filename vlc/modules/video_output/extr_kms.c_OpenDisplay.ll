; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_kms.c_OpenDisplay.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_kms.c_OpenDisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i32, i32 }
%struct.TYPE_15__ = type { i32, i32* }

@KMS_VAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Don't know which DRM device to open\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@DRM_CLIENT_CAP_UNIVERSAL_PLANES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Using VLC chroma '%.4s', DRM chroma '%.4s'\00", align 1
@DRM_CAP_DUMB_BUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Device '%s' does not support dumb buffers\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Didn't get DRM resources\00", align 1
@drvSuccess = common dso_local global i32 0, align 4
@drvTryNext = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Cannot do setup for connector %u:%u\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @OpenDisplay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDisplay(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = load i32, i32* @KMS_VAR, align 4
  %17 = call i8* @var_InheritString(%struct.TYPE_13__* %15, i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %2, align 4
  br label %171

24:                                               ; preds = %1
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @O_RDWR, align 4
  %27 = call i32 @vlc_open(i8* %25, i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %40, i32* %2, align 4
  br label %171

41:                                               ; preds = %24
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DRM_CLIENT_CAP_UNIVERSAL_PLANES, align 4
  %48 = call i32 @drmSetClientCap(i32 %46, i32 %47, i32 1)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = call i32 @ChromaNegotiation(%struct.TYPE_13__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %159

53:                                               ; preds = %41
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = bitcast i32* %56 to i8*
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = bitcast i32* %59 to i8*
  %61 = call i32 @msg_Dbg(%struct.TYPE_13__* %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %57, i8* %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DRM_CAP_DUMB_BUFFER, align 4
  %66 = call i32 @drmGetCap(i32 %64, i32 %65, i32* %7)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69, %53
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  br label %159

76:                                               ; preds = %69
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.TYPE_15__* @drmModeGetResources(i32 %79)
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %9, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = icmp eq %struct.TYPE_15__* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %159

86:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %148, %86
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br label %98

98:                                               ; preds = %93, %87
  %99 = phi i1 [ false, %87 ], [ %97, %93 ]
  br i1 %99, label %100, label %151

100:                                              ; preds = %98
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32* @drmModeGetConnector(i32 %103, i32 %110)
  store i32* %111, i32** %8, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  br label %148

115:                                              ; preds = %100
  store i32 1, i32* %11, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @SetupDevice(%struct.TYPE_13__* %116, %struct.TYPE_15__* %117, i32* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @drvSuccess, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %145

123:                                              ; preds = %115
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @drvTryNext, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %123
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %129, i32 %136)
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 @drmModeFreeConnector(i32* %138)
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %141 = call i32 @drmModeFreeResources(%struct.TYPE_15__* %140)
  br label %159

142:                                              ; preds = %123
  %143 = load i32*, i32** %8, align 8
  %144 = call i32 @drmModeFreeConnector(i32* %143)
  store i32 0, i32* %11, align 4
  br label %148

145:                                              ; preds = %115
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @drmModeFreeConnector(i32* %146)
  br label %148

148:                                              ; preds = %145, %142, %114
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %87

151:                                              ; preds = %98
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %153 = call i32 @drmModeFreeResources(%struct.TYPE_15__* %152)
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  br label %159

157:                                              ; preds = %151
  %158 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %158, i32* %2, align 4
  br label %171

159:                                              ; preds = %156, %127, %83, %72, %52
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @drmDropMaster(i32 %162)
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @vlc_close(i32 %166)
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  store i32 0, i32* %169, align 8
  %170 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %159, %157, %34, %20
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i8* @var_InheritString(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @drmSetClientCap(i32, i32, i32) #1

declare dso_local i32 @ChromaNegotiation(%struct.TYPE_13__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_13__*, i8*, i8*, i8*) #1

declare dso_local i32 @drmGetCap(i32, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @drmModeGetResources(i32) #1

declare dso_local i32* @drmModeGetConnector(i32, i32) #1

declare dso_local i32 @SetupDevice(%struct.TYPE_13__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @drmModeFreeConnector(i32*) #1

declare dso_local i32 @drmModeFreeResources(%struct.TYPE_15__*) #1

declare dso_local i32 @drmDropMaster(i32) #1

declare dso_local i32 @vlc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
