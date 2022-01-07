; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_h264_parse_sequence_parameter_set_rbsp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_h264_parse_sequence_parameter_set_rbsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i8*, i8*, i64, i64, i8**, i8*, i8*, i8*, i64, i64, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@H264_SPS_ID_MAX = common dso_local global i64 0, align 8
@PROFILE_H264_HIGH = common dso_local global i32 0, align 4
@PROFILE_H264_HIGH_10 = common dso_local global i32 0, align 4
@PROFILE_H264_HIGH_422 = common dso_local global i32 0, align 4
@PROFILE_H264_HIGH_444 = common dso_local global i32 0, align 4
@PROFILE_H264_HIGH_444_PREDICTIVE = common dso_local global i32 0, align 4
@PROFILE_H264_CAVLC_INTRA = common dso_local global i32 0, align 4
@PROFILE_H264_SVC_BASELINE = common dso_local global i32 0, align 4
@PROFILE_H264_SVC_HIGH = common dso_local global i32 0, align 4
@PROFILE_H264_MVC_MULTIVIEW_HIGH = common dso_local global i32 0, align 4
@PROFILE_H264_MVC_STEREO_HIGH = common dso_local global i32 0, align 4
@PROFILE_H264_MVC_MULTIVIEW_DEPTH_HIGH = common dso_local global i32 0, align 4
@PROFILE_H264_MVC_ENHANCED_MULTIVIEW_DEPTH_HIGH = common dso_local global i32 0, align 4
@PROFILE_H264_MFC_HIGH = common dso_local global i32 0, align 4
@h264_parse_sequence_parameter_set_rbsp.sar = internal constant [17 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 12, i32 11 }, %struct.anon { i32 10, i32 11 }, %struct.anon { i32 16, i32 11 }, %struct.anon { i32 40, i32 33 }, %struct.anon { i32 24, i32 11 }, %struct.anon { i32 20, i32 11 }, %struct.anon { i32 32, i32 11 }, %struct.anon { i32 80, i32 33 }, %struct.anon { i32 18, i32 11 }, %struct.anon { i32 15, i32 11 }, %struct.anon { i32 64, i32 33 }, %struct.anon { i32 160, i32 99 }, %struct.anon { i32 4, i32 3 }, %struct.anon { i32 3, i32 2 }, %struct.anon { i32 2, i32 1 }], align 16
@ISO_23001_8_CP_UNSPECIFIED = common dso_local global i8* null, align 8
@ISO_23001_8_TC_UNSPECIFIED = common dso_local global i8* null, align 8
@ISO_23001_8_MC_UNSPECIFIED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @h264_parse_sequence_parameter_set_rbsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_parse_sequence_parameter_set_rbsp(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @bs_read(i32* %21, i32 8)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @bs_read(i32* %27, i32 8)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 21
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i8* @bs_read(i32* %31, i32 8)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 20
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @bs_read_ue(i32* %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @H264_SPS_ID_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %618

41:                                               ; preds = %2
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 19
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PROFILE_H264_HIGH, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %96, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @PROFILE_H264_HIGH_10, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %96, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @PROFILE_H264_HIGH_422, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %96, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @PROFILE_H264_HIGH_444, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %96, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @PROFILE_H264_HIGH_444_PREDICTIVE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %96, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @PROFILE_H264_CAVLC_INTRA, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %96, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @PROFILE_H264_SVC_BASELINE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %96, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @PROFILE_H264_SVC_HIGH, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %96, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @PROFILE_H264_MVC_MULTIVIEW_HIGH, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %96, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @PROFILE_H264_MVC_STEREO_HIGH, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @PROFILE_H264_MVC_MULTIVIEW_DEPTH_HIGH, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @PROFILE_H264_MVC_ENHANCED_MULTIVIEW_DEPTH_HIGH, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @PROFILE_H264_MFC_HIGH, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %190

96:                                               ; preds = %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %41
  %97 = load i32*, i32** %4, align 8
  %98 = call i64 @bs_read_ue(i32* %97)
  %99 = trunc i64 %98 to i32
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %106, label %111

106:                                              ; preds = %96
  %107 = load i32*, i32** %4, align 8
  %108 = call i64 @bs_read1(i32* %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 18
  store i64 %108, i64* %110, align 8
  br label %114

111:                                              ; preds = %96
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 18
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i32*, i32** %4, align 8
  %116 = call i64 @bs_read_ue(i32* %115)
  %117 = add nsw i64 %116, 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = call i64 @bs_read_ue(i32* %121)
  %123 = add nsw i64 %122, 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @bs_skip(i32* %127, i32 1)
  %129 = load i32*, i32** %4, align 8
  %130 = call i8* @bs_read(i32* %129, i32 1)
  %131 = ptrtoint i8* %130 to i32
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %189

134:                                              ; preds = %114
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %185, %134
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 3, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 8, i32 12
  %143 = icmp slt i32 %136, %142
  br i1 %143, label %144, label %188

144:                                              ; preds = %135
  %145 = load i32*, i32** %4, align 8
  %146 = call i8* @bs_read(i32* %145, i32 1)
  %147 = ptrtoint i8* %146 to i32
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  br label %185

151:                                              ; preds = %144
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %152, 6
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 16, i32 64
  store i32 %155, i32* %10, align 4
  store i32 8, i32* %11, align 4
  store i32 8, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %156

156:                                              ; preds = %181, %151
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %184

160:                                              ; preds = %156
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = load i32*, i32** %4, align 8
  %165 = call i8* @bs_read_se(i32* %164)
  %166 = ptrtoint i8* %165 to i32
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %167, %168
  %170 = add nsw i32 %169, 256
  %171 = srem i32 %170, 256
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %163, %160
  %173 = load i32, i32* %12, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i32, i32* %11, align 4
  br label %179

177:                                              ; preds = %172
  %178 = load i32, i32* %12, align 4
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %179
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  br label %156

184:                                              ; preds = %156
  br label %185

185:                                              ; preds = %184, %150
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %135

188:                                              ; preds = %135
  br label %189

189:                                              ; preds = %188, %114
  br label %197

190:                                              ; preds = %92
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  store i32 1, i32* %192, align 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 2
  store i32 8, i32* %194, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 3
  store i32 8, i32* %196, align 4
  br label %197

197:                                              ; preds = %190, %189
  %198 = load i32*, i32** %4, align 8
  %199 = call i64 @bs_read_ue(i32* %198)
  %200 = trunc i64 %199 to i32
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = icmp sgt i32 %205, 12
  br i1 %206, label %207, label %210

207:                                              ; preds = %197
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 4
  store i32 12, i32* %209, align 8
  br label %210

210:                                              ; preds = %207, %197
  %211 = load i32*, i32** %4, align 8
  %212 = call i64 @bs_read_ue(i32* %211)
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 5
  store i64 %212, i64* %214, align 8
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %210
  %220 = load i32*, i32** %4, align 8
  %221 = call i64 @bs_read_ue(i32* %220)
  %222 = trunc i64 %221 to i32
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = icmp sgt i32 %227, 12
  br i1 %228, label %229, label %232

229:                                              ; preds = %219
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 6
  store i32 12, i32* %231, align 8
  br label %232

232:                                              ; preds = %229, %219
  br label %282

233:                                              ; preds = %210
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %236, 1
  br i1 %237, label %238, label %281

238:                                              ; preds = %233
  %239 = load i32*, i32** %4, align 8
  %240 = call i8* @bs_read(i32* %239, i32 1)
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 17
  store i8* %240, i8** %242, align 8
  %243 = load i32*, i32** %4, align 8
  %244 = call i8* @bs_read_se(i32* %243)
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 16
  store i8* %244, i8** %246, align 8
  %247 = load i32*, i32** %4, align 8
  %248 = call i8* @bs_read_se(i32* %247)
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 15
  store i8* %248, i8** %250, align 8
  %251 = load i32*, i32** %4, align 8
  %252 = call i64 @bs_read_ue(i32* %251)
  %253 = trunc i64 %252 to i32
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 7
  store i32 %253, i32* %255, align 4
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 7
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %258, 255
  br i1 %259, label %260, label %261

260:                                              ; preds = %238
  store i32 0, i32* %3, align 4
  br label %618

261:                                              ; preds = %238
  store i32 0, i32* %14, align 4
  br label %262

262:                                              ; preds = %277, %261
  %263 = load i32, i32* %14, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 4
  %267 = icmp slt i32 %263, %266
  br i1 %267, label %268, label %280

268:                                              ; preds = %262
  %269 = load i32*, i32** %4, align 8
  %270 = call i8* @bs_read_se(i32* %269)
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 14
  %273 = load i8**, i8*** %272, align 8
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %273, i64 %275
  store i8* %270, i8** %276, align 8
  br label %277

277:                                              ; preds = %268
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %14, align 4
  br label %262

280:                                              ; preds = %262
  br label %281

281:                                              ; preds = %280, %233
  br label %282

282:                                              ; preds = %281, %232
  %283 = load i32*, i32** %4, align 8
  %284 = call i64 @bs_read_ue(i32* %283)
  %285 = load i32*, i32** %4, align 8
  %286 = call i32 @bs_skip(i32* %285, i32 1)
  %287 = load i32*, i32** %4, align 8
  %288 = call i64 @bs_read_ue(i32* %287)
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 13
  store i64 %288, i64* %290, align 8
  %291 = load i32*, i32** %4, align 8
  %292 = call i64 @bs_read_ue(i32* %291)
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 12
  store i64 %292, i64* %294, align 8
  %295 = load i32*, i32** %4, align 8
  %296 = call i8* @bs_read(i32* %295, i32 1)
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 11
  store i8* %296, i8** %298, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 11
  %301 = load i8*, i8** %300, align 8
  %302 = icmp ne i8* %301, null
  br i1 %302, label %308, label %303

303:                                              ; preds = %282
  %304 = load i32*, i32** %4, align 8
  %305 = call i8* @bs_read(i32* %304, i32 1)
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 10
  store i8* %305, i8** %307, align 8
  br label %308

308:                                              ; preds = %303, %282
  %309 = load i32*, i32** %4, align 8
  %310 = call i32 @bs_skip(i32* %309, i32 1)
  %311 = load i32*, i32** %4, align 8
  %312 = call i64 @bs_read1(i32* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %335

314:                                              ; preds = %308
  %315 = load i32*, i32** %4, align 8
  %316 = call i64 @bs_read_ue(i32* %315)
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 9
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 3
  store i64 %316, i64* %319, align 8
  %320 = load i32*, i32** %4, align 8
  %321 = call i64 @bs_read_ue(i32* %320)
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 9
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 2
  store i64 %321, i64* %324, align 8
  %325 = load i32*, i32** %4, align 8
  %326 = call i64 @bs_read_ue(i32* %325)
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 9
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 1
  store i64 %326, i64* %329, align 8
  %330 = load i32*, i32** %4, align 8
  %331 = call i64 @bs_read_ue(i32* %330)
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 9
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 0
  store i64 %331, i64* %334, align 8
  br label %335

335:                                              ; preds = %314, %308
  %336 = load i32*, i32** %4, align 8
  %337 = call i8* @bs_read(i32* %336, i32 1)
  %338 = ptrtoint i8* %337 to i32
  store i32 %338, i32* %6, align 4
  %339 = load i32, i32* %6, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %617

341:                                              ; preds = %335
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 0
  store i32 1, i32* %344, align 8
  %345 = load i32*, i32** %4, align 8
  %346 = call i8* @bs_read(i32* %345, i32 1)
  %347 = ptrtoint i8* %346 to i32
  store i32 %347, i32* %6, align 4
  %348 = load i32, i32* %6, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %402

350:                                              ; preds = %341
  %351 = load i32*, i32** %4, align 8
  %352 = call i8* @bs_read(i32* %351, i32 8)
  %353 = ptrtoint i8* %352 to i32
  store i32 %353, i32* %15, align 4
  %354 = load i32, i32* %15, align 4
  %355 = icmp slt i32 %354, 17
  br i1 %355, label %356, label %367

356:                                              ; preds = %350
  %357 = load i32, i32* %15, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [17 x %struct.anon], [17 x %struct.anon]* @h264_parse_sequence_parameter_set_rbsp.sar, i64 0, i64 %358
  %360 = getelementptr inbounds %struct.anon, %struct.anon* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  store i32 %361, i32* %16, align 4
  %362 = load i32, i32* %15, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [17 x %struct.anon], [17 x %struct.anon]* @h264_parse_sequence_parameter_set_rbsp.sar, i64 0, i64 %363
  %365 = getelementptr inbounds %struct.anon, %struct.anon* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %17, align 4
  br label %379

367:                                              ; preds = %350
  %368 = load i32, i32* %15, align 4
  %369 = icmp eq i32 %368, 255
  br i1 %369, label %370, label %377

370:                                              ; preds = %367
  %371 = load i32*, i32** %4, align 8
  %372 = call i8* @bs_read(i32* %371, i32 16)
  %373 = ptrtoint i8* %372 to i32
  store i32 %373, i32* %16, align 4
  %374 = load i32*, i32** %4, align 8
  %375 = call i8* @bs_read(i32* %374, i32 16)
  %376 = ptrtoint i8* %375 to i32
  store i32 %376, i32* %17, align 4
  br label %378

377:                                              ; preds = %367
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %378

378:                                              ; preds = %377, %370
  br label %379

379:                                              ; preds = %378, %356
  %380 = load i32, i32* %16, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %394

382:                                              ; preds = %379
  %383 = load i32, i32* %17, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %394

385:                                              ; preds = %382
  %386 = load i32, i32* %16, align 4
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 8
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 1
  store i32 %386, i32* %389, align 4
  %390 = load i32, i32* %17, align 4
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i32 0, i32 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 2
  store i32 %390, i32* %393, align 8
  br label %401

394:                                              ; preds = %382, %379
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 1
  store i32 1, i32* %397, align 4
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 8
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 2
  store i32 1, i32* %400, align 8
  br label %401

401:                                              ; preds = %394, %385
  br label %402

402:                                              ; preds = %401, %341
  %403 = load i32*, i32** %4, align 8
  %404 = call i8* @bs_read(i32* %403, i32 1)
  %405 = ptrtoint i8* %404 to i32
  store i32 %405, i32* %6, align 4
  %406 = load i32, i32* %6, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %402
  %409 = load i32*, i32** %4, align 8
  %410 = call i8* @bs_read(i32* %409, i32 1)
  br label %411

411:                                              ; preds = %408, %402
  %412 = load i32*, i32** %4, align 8
  %413 = call i8* @bs_read(i32* %412, i32 1)
  %414 = ptrtoint i8* %413 to i32
  store i32 %414, i32* %6, align 4
  %415 = load i32, i32* %6, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %467

417:                                              ; preds = %411
  %418 = load i32*, i32** %4, align 8
  %419 = call i8* @bs_read(i32* %418, i32 3)
  %420 = load i32*, i32** %4, align 8
  %421 = call i8* @bs_read(i32* %420, i32 1)
  %422 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 8
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 13
  %425 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %424, i32 0, i32 3
  store i8* %421, i8** %425, align 8
  %426 = load i32*, i32** %4, align 8
  %427 = call i8* @bs_read(i32* %426, i32 1)
  %428 = ptrtoint i8* %427 to i32
  store i32 %428, i32* %6, align 4
  %429 = load i32, i32* %6, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %450

431:                                              ; preds = %417
  %432 = load i32*, i32** %4, align 8
  %433 = call i8* @bs_read(i32* %432, i32 8)
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 8
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 13
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 2
  store i8* %433, i8** %437, align 8
  %438 = load i32*, i32** %4, align 8
  %439 = call i8* @bs_read(i32* %438, i32 8)
  %440 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %440, i32 0, i32 8
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 13
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i32 0, i32 1
  store i8* %439, i8** %443, align 8
  %444 = load i32*, i32** %4, align 8
  %445 = call i8* @bs_read(i32* %444, i32 8)
  %446 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %446, i32 0, i32 8
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i32 0, i32 13
  %449 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i32 0, i32 0
  store i8* %445, i8** %449, align 8
  br label %466

450:                                              ; preds = %417
  %451 = load i8*, i8** @ISO_23001_8_CP_UNSPECIFIED, align 8
  %452 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %452, i32 0, i32 8
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %453, i32 0, i32 13
  %455 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %454, i32 0, i32 2
  store i8* %451, i8** %455, align 8
  %456 = load i8*, i8** @ISO_23001_8_TC_UNSPECIFIED, align 8
  %457 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %457, i32 0, i32 8
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 13
  %460 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %459, i32 0, i32 1
  store i8* %456, i8** %460, align 8
  %461 = load i8*, i8** @ISO_23001_8_MC_UNSPECIFIED, align 8
  %462 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 8
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 0, i32 13
  %465 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %464, i32 0, i32 0
  store i8* %461, i8** %465, align 8
  br label %466

466:                                              ; preds = %450, %431
  br label %467

467:                                              ; preds = %466, %411
  %468 = load i32*, i32** %4, align 8
  %469 = call i8* @bs_read(i32* %468, i32 1)
  %470 = ptrtoint i8* %469 to i32
  store i32 %470, i32* %6, align 4
  %471 = load i32, i32* %6, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %478

473:                                              ; preds = %467
  %474 = load i32*, i32** %4, align 8
  %475 = call i64 @bs_read_ue(i32* %474)
  %476 = load i32*, i32** %4, align 8
  %477 = call i64 @bs_read_ue(i32* %476)
  br label %478

478:                                              ; preds = %473, %467
  %479 = load i32*, i32** %4, align 8
  %480 = call i8* @bs_read(i32* %479, i32 1)
  %481 = ptrtoint i8* %480 to i32
  %482 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %482, i32 0, i32 8
  %484 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %483, i32 0, i32 3
  store i32 %481, i32* %484, align 4
  %485 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %486 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %485, i32 0, i32 8
  %487 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %486, i32 0, i32 3
  %488 = load i32, i32* %487, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %506

490:                                              ; preds = %478
  %491 = load i32*, i32** %4, align 8
  %492 = call i8* @bs_read(i32* %491, i32 32)
  %493 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %494 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %493, i32 0, i32 8
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 12
  store i8* %492, i8** %495, align 8
  %496 = load i32*, i32** %4, align 8
  %497 = call i8* @bs_read(i32* %496, i32 32)
  %498 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %498, i32 0, i32 8
  %500 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %499, i32 0, i32 11
  store i8* %497, i8** %500, align 8
  %501 = load i32*, i32** %4, align 8
  %502 = call i8* @bs_read(i32* %501, i32 1)
  %503 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %504 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %503, i32 0, i32 8
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %504, i32 0, i32 10
  store i8* %502, i8** %505, align 8
  br label %506

506:                                              ; preds = %490, %478
  %507 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %508 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %507, i32 0, i32 8
  %509 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i32 0, i32 4
  store i32 0, i32* %509, align 8
  store i32 0, i32* %18, align 4
  br label %510

510:                                              ; preds = %569, %506
  %511 = load i32, i32* %18, align 4
  %512 = icmp slt i32 %511, 2
  br i1 %512, label %513, label %572

513:                                              ; preds = %510
  %514 = load i32*, i32** %4, align 8
  %515 = call i8* @bs_read(i32* %514, i32 1)
  %516 = ptrtoint i8* %515 to i32
  store i32 %516, i32* %6, align 4
  %517 = load i32, i32* %6, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %568

519:                                              ; preds = %513
  %520 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 8
  %522 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %521, i32 0, i32 4
  store i32 1, i32* %522, align 8
  %523 = load i32*, i32** %4, align 8
  %524 = call i64 @bs_read_ue(i32* %523)
  %525 = add nsw i64 %524, 1
  store i64 %525, i64* %19, align 8
  %526 = load i64, i64* %19, align 8
  %527 = icmp sgt i64 %526, 31
  br i1 %527, label %528, label %529

528:                                              ; preds = %519
  store i32 0, i32* %3, align 4
  br label %618

529:                                              ; preds = %519
  %530 = load i32*, i32** %4, align 8
  %531 = call i8* @bs_read(i32* %530, i32 4)
  %532 = load i32*, i32** %4, align 8
  %533 = call i8* @bs_read(i32* %532, i32 4)
  store i64 0, i64* %20, align 8
  br label %534

534:                                              ; preds = %550, %529
  %535 = load i64, i64* %20, align 8
  %536 = load i64, i64* %19, align 8
  %537 = icmp slt i64 %535, %536
  br i1 %537, label %538, label %553

538:                                              ; preds = %534
  %539 = load i32*, i32** %4, align 8
  %540 = call i32 @bs_remain(i32* %539)
  %541 = icmp slt i32 %540, 23
  br i1 %541, label %542, label %543

542:                                              ; preds = %538
  store i32 0, i32* %3, align 4
  br label %618

543:                                              ; preds = %538
  %544 = load i32*, i32** %4, align 8
  %545 = call i64 @bs_read_ue(i32* %544)
  %546 = load i32*, i32** %4, align 8
  %547 = call i64 @bs_read_ue(i32* %546)
  %548 = load i32*, i32** %4, align 8
  %549 = call i8* @bs_read(i32* %548, i32 1)
  br label %550

550:                                              ; preds = %543
  %551 = load i64, i64* %20, align 8
  %552 = add nsw i64 %551, 1
  store i64 %552, i64* %20, align 8
  br label %534

553:                                              ; preds = %534
  %554 = load i32*, i32** %4, align 8
  %555 = call i8* @bs_read(i32* %554, i32 5)
  %556 = load i32*, i32** %4, align 8
  %557 = call i8* @bs_read(i32* %556, i32 5)
  %558 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %559 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %558, i32 0, i32 8
  %560 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %559, i32 0, i32 9
  store i8* %557, i8** %560, align 8
  %561 = load i32*, i32** %4, align 8
  %562 = call i8* @bs_read(i32* %561, i32 5)
  %563 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %564 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %563, i32 0, i32 8
  %565 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %564, i32 0, i32 8
  store i8* %562, i8** %565, align 8
  %566 = load i32*, i32** %4, align 8
  %567 = call i8* @bs_read(i32* %566, i32 5)
  br label %568

568:                                              ; preds = %553, %513
  br label %569

569:                                              ; preds = %568
  %570 = load i32, i32* %18, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %18, align 4
  br label %510

572:                                              ; preds = %510
  %573 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %574 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %573, i32 0, i32 8
  %575 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %574, i32 0, i32 4
  %576 = load i32, i32* %575, align 8
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %581

578:                                              ; preds = %572
  %579 = load i32*, i32** %4, align 8
  %580 = call i8* @bs_read(i32* %579, i32 1)
  br label %581

581:                                              ; preds = %578, %572
  %582 = load i32*, i32** %4, align 8
  %583 = call i8* @bs_read(i32* %582, i32 1)
  %584 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %585 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %584, i32 0, i32 8
  %586 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %585, i32 0, i32 7
  store i8* %583, i8** %586, align 8
  %587 = load i32*, i32** %4, align 8
  %588 = call i8* @bs_read(i32* %587, i32 1)
  %589 = ptrtoint i8* %588 to i32
  %590 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %590, i32 0, i32 8
  %592 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %591, i32 0, i32 5
  store i32 %589, i32* %592, align 4
  %593 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %594 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %593, i32 0, i32 8
  %595 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %594, i32 0, i32 5
  %596 = load i32, i32* %595, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %616

598:                                              ; preds = %581
  %599 = load i32*, i32** %4, align 8
  %600 = call i8* @bs_read(i32* %599, i32 1)
  %601 = load i32*, i32** %4, align 8
  %602 = call i64 @bs_read_ue(i32* %601)
  %603 = load i32*, i32** %4, align 8
  %604 = call i64 @bs_read_ue(i32* %603)
  %605 = load i32*, i32** %4, align 8
  %606 = call i64 @bs_read_ue(i32* %605)
  %607 = load i32*, i32** %4, align 8
  %608 = call i64 @bs_read_ue(i32* %607)
  %609 = load i32*, i32** %4, align 8
  %610 = call i64 @bs_read_ue(i32* %609)
  %611 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %612 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %611, i32 0, i32 8
  %613 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %612, i32 0, i32 6
  store i64 %610, i64* %613, align 8
  %614 = load i32*, i32** %4, align 8
  %615 = call i64 @bs_read_ue(i32* %614)
  br label %616

616:                                              ; preds = %598, %581
  br label %617

617:                                              ; preds = %616, %335
  store i32 1, i32* %3, align 4
  br label %618

618:                                              ; preds = %617, %542, %528, %260, %40
  %619 = load i32, i32* %3, align 4
  ret i32 %619
}

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i64 @bs_read_ue(i32*) #1

declare dso_local i64 @bs_read1(i32*) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i8* @bs_read_se(i32*) #1

declare dso_local i32 @bs_remain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
