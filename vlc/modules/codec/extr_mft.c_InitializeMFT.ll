; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_InitializeMFT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_InitializeMFT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64, i64, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i32, i64, i32 }

@E_NOTIMPL = common dso_local global i64 0, align 8
@MF_TRANSFORM_ASYNC = common dso_local global i32 0, align 4
@MF_E_ATTRIBUTENOTFOUND = common dso_local global i64 0, align 8
@MF_TRANSFORM_ASYNC_UNLOCK = common dso_local global i32 0, align 4
@IID_IMFMediaEventGenerator = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"MFT decoder should have 1 input stream and 1 output stream.\00", align 1
@MFT_MESSAGE_NOTIFY_BEGIN_STREAMING = common dso_local global i32 0, align 4
@MFT_MESSAGE_NOTIFY_START_OF_STREAM = common dso_local global i32 0, align 4
@VLC_CODEC_H264 = common dso_local global i64 0, align 8
@CODECAPI_AVLowLatencyMode = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error in InitializeMFT()\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @InitializeMFT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitializeMFT(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %4, align 8
  store i32* null, i32** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @IMFTransform_GetAttributes(i32 %17, i32** %6)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @E_NOTIMPL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @FAILED(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %232

27:                                               ; preds = %22, %1
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @SUCCEEDED(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @IMFAttributes_GetUINT32(i32* %32, i32* @MF_TRANSFORM_ASYNC, i32* %7)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @MF_E_ATTRIBUTENOTFOUND, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @FAILED(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %232

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %42
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @IMFAttributes_SetUINT32(i32* %51, i32* @MF_TRANSFORM_ASYNC_UNLOCK, i32 1)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @FAILED(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %232

57:                                               ; preds = %50
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 7
  %63 = bitcast i32* %62 to i8**
  %64 = call i64 @IMFTransform_QueryInterface(i32 %60, i32* @IID_IMFMediaEventGenerator, i8** %63)
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i64 @FAILED(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %232

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %42
  br label %71

71:                                               ; preds = %70, %27
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @IMFTransform_GetStreamCount(i32 %74, i32* %8, i32* %9)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i64 @FAILED(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %232

80:                                               ; preds = %71
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83, %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = call i32 @msg_Err(%struct.TYPE_10__* %87, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %232

89:                                               ; preds = %83
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 6
  %97 = call i64 @IMFTransform_GetStreamIDs(i32 %92, i32 1, i64* %94, i32 1, i64* %96)
  store i64 %97, i64* %5, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @E_NOTIMPL, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %89
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 4
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 6
  store i64 0, i64* %105, align 8
  br label %112

106:                                              ; preds = %89
  %107 = load i64, i64* %5, align 8
  %108 = call i64 @FAILED(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %232

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %101
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = call i64 @SetInputType(%struct.TYPE_10__* %113, i64 %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %232

122:                                              ; preds = %112
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 5
  %129 = call i64 @SetOutputType(%struct.TYPE_10__* %123, i64 %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %232

132:                                              ; preds = %122
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %153, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 3
  %144 = call i64 @SetInputType(%struct.TYPE_10__* %138, i64 %141, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %137
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %146, %137
  br label %232

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152, %132
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @MFT_MESSAGE_NOTIFY_BEGIN_STREAMING, align 4
  %158 = call i64 @IMFTransform_ProcessMessage(i32 %156, i32 %157, i32 0)
  store i64 %158, i64* %5, align 8
  %159 = load i64, i64* %5, align 8
  %160 = call i64 @FAILED(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %232

163:                                              ; preds = %153
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @MFT_MESSAGE_NOTIFY_START_OF_STREAM, align 4
  %168 = call i64 @IMFTransform_ProcessMessage(i32 %166, i32 %167, i32 0)
  store i64 %168, i64* %5, align 8
  %169 = load i64, i64* %5, align 8
  %170 = call i64 @FAILED(i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %232

173:                                              ; preds = %163
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @VLC_CODEC_H264, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %230

180:                                              ; preds = %173
  %181 = load i32*, i32** %6, align 8
  %182 = call i64 @IMFAttributes_SetUINT32(i32* %181, i32* @CODECAPI_AVLowLatencyMode, i32 1)
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %229

188:                                              ; preds = %180
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @h264_isavcC(i32* %192, i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %228

199:                                              ; preds = %188
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = call i32* @h264_avcC_to_AnnexB_NAL(i32* %203, i64 %207, i64* %10, i32* %209)
  store i32* %210, i32** %11, align 8
  %211 = load i32*, i32** %11, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %227

213:                                              ; preds = %199
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @free(i32* %217)
  %219 = load i32*, i32** %11, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 2
  store i32* %219, i32** %222, align 8
  %223 = load i64, i64* %10, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  store i64 %223, i64* %226, align 8
  br label %227

227:                                              ; preds = %213, %199
  br label %228

228:                                              ; preds = %227, %188
  br label %229

229:                                              ; preds = %228, %180
  br label %230

230:                                              ; preds = %229, %173
  %231 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %231, i32* %2, align 4
  br label %238

232:                                              ; preds = %172, %162, %151, %131, %121, %110, %86, %79, %68, %56, %41, %26
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %234 = call i32 @msg_Err(%struct.TYPE_10__* %233, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %236 = call i32 @DestroyMFT(%struct.TYPE_10__* %235)
  %237 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %237, i32* %2, align 4
  br label %238

238:                                              ; preds = %232, %230
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local i64 @IMFTransform_GetAttributes(i32, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IMFAttributes_GetUINT32(i32*, i32*, i32*) #1

declare dso_local i64 @IMFAttributes_SetUINT32(i32*, i32*, i32) #1

declare dso_local i64 @IMFTransform_QueryInterface(i32, i32*, i8**) #1

declare dso_local i64 @IMFTransform_GetStreamCount(i32, i32*, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IMFTransform_GetStreamIDs(i32, i32, i64*, i32, i64*) #1

declare dso_local i64 @SetInputType(%struct.TYPE_10__*, i64, i32*) #1

declare dso_local i64 @SetOutputType(%struct.TYPE_10__*, i64, i32*) #1

declare dso_local i64 @IMFTransform_ProcessMessage(i32, i32, i32) #1

declare dso_local i64 @h264_isavcC(i32*, i64) #1

declare dso_local i32* @h264_avcC_to_AnnexB_NAL(i32*, i64, i64*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @DestroyMFT(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
