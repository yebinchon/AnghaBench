; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_UserPmt.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_UserPmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32, i64 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_28__* }
%struct.TYPE_25__ = type { %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32, i64, i32, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"user pmt specified (pid=%lu,number=%d)\00", align 1
@TYPE_PMT = common dso_local global i32 0, align 4
@TS_USER_PMT_NUMBER = common dso_local global i32 0, align 4
@PMTCallBack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pcr\00", align 1
@TYPE_FREE = common dso_local global i64 0, align 8
@TYPE_STREAM = common dso_local global i32 0, align 4
@UNKNOWN_ES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@AUDIO_ES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"spu\00", align 1
@SPU_ES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"  * es pid=%lu fcc=%4.4s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UserPmt(%struct.TYPE_31__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  store %struct.TYPE_32__* %23, %struct.TYPE_32__** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strdup(i8* %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %30, i32* %3, align 4
  br label %328

31:                                               ; preds = %2
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @strtoul(i8* %32, i8** %8, i32 0)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ult i64 %34, 2
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %10, align 8
  %38 = icmp uge i64 %37, 8192
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %31
  br label %324

40:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 58
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = call i8* @strtol(i8* %47, i8** %8, i32 0)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call %struct.TYPE_29__* @GetPID(%struct.TYPE_32__* %51, i64 %52)
  store %struct.TYPE_29__* %53, %struct.TYPE_29__** %11, align 8
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (%struct.TYPE_31__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_31__* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %55, i32 %56)
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %59 = load i32, i32* @TYPE_PMT, align 4
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %62 = call %struct.TYPE_29__* @GetPID(%struct.TYPE_32__* %61, i64 0)
  %63 = call i32 @PIDSetup(%struct.TYPE_31__* %58, i32 %59, %struct.TYPE_29__* %60, %struct.TYPE_29__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %50
  br label %324

66:                                               ; preds = %50
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %69, align 8
  store %struct.TYPE_28__* %70, %struct.TYPE_28__** %12, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  br label %77

75:                                               ; preds = %66
  %76 = load i32, i32* @TS_USER_PMT_NUMBER, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @TS_USER_PMT_NUMBER, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %9, align 4
  br label %90

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 1, %89 ]
  %92 = load i32, i32* @PMTCallBack, align 4
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %94 = call i32 @dvbpsi_pmt_attach(i32 %83, i32 %91, i32 %92, %struct.TYPE_31__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %99 = call i32 @PIDRelease(%struct.TYPE_31__* %97, %struct.TYPE_29__* %98)
  br label %324

100:                                              ; preds = %90
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %102 = call %struct.TYPE_29__* @GetPID(%struct.TYPE_32__* %101, i64 0)
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %109 = call i32 @ARRAY_APPEND(i32 %107, %struct.TYPE_29__* %108)
  %110 = load i8*, i8** %8, align 8
  %111 = call i8* @strchr(i8* %110, i8 signext 61)
  store i8* %111, i8** %8, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %100
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %8, align 8
  br label %117

117:                                              ; preds = %114, %100
  br label %118

118:                                              ; preds = %316, %186, %117
  %119 = load i8*, i8** %8, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i8*, i8** %8, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br label %126

126:                                              ; preds = %121, %118
  %127 = phi i1 [ false, %118 ], [ %125, %121 ]
  br i1 %127, label %128, label %318

128:                                              ; preds = %126
  %129 = load i8*, i8** %8, align 8
  %130 = call i8* @strchr(i8* %129, i8 signext 44)
  store i8* %130, i8** %13, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i8*, i8** %13, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %13, align 8
  store i8 0, i8* %134, align 1
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i8*, i8** %8, align 8
  %138 = call i64 @strtoul(i8* %137, i8** %8, i32 0)
  store i64 %138, i64* %10, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 58
  br i1 %142, label %149, label %143

143:                                              ; preds = %136
  %144 = load i64, i64* %10, align 8
  %145 = icmp ult i64 %144, 2
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i64, i64* %10, align 8
  %148 = icmp uge i64 %147, 8192
  br i1 %148, label %149, label %150

149:                                              ; preds = %146, %143, %136
  br label %316

150:                                              ; preds = %146
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  store i8* %152, i8** %14, align 8
  %153 = load i8*, i8** %14, align 8
  %154 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %150
  %157 = load i64, i64* %10, align 8
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  br label %315

160:                                              ; preds = %150
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %162 = load i64, i64* %10, align 8
  %163 = call %struct.TYPE_29__* @GetPID(%struct.TYPE_32__* %161, i64 %162)
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @TYPE_FREE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %314

168:                                              ; preds = %160
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %170 = load i64, i64* %10, align 8
  %171 = call %struct.TYPE_29__* @GetPID(%struct.TYPE_32__* %169, i64 %170)
  store %struct.TYPE_29__* %171, %struct.TYPE_29__** %15, align 8
  %172 = load i8*, i8** %14, align 8
  %173 = call i8* @strchr(i8* %172, i8 signext 61)
  store i8* %173, i8** %16, align 8
  %174 = load i8*, i8** %16, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load i8*, i8** %16, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %16, align 8
  store i8 0, i8* %177, align 1
  br label %179

179:                                              ; preds = %176, %168
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %181 = load i32, i32* @TYPE_STREAM, align 4
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %184 = call i32 @PIDSetup(%struct.TYPE_31__* %180, i32 %181, %struct.TYPE_29__* %182, %struct.TYPE_29__* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %179
  br label %118

187:                                              ; preds = %179
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %192 = call i32 @ARRAY_APPEND(i32 %190, %struct.TYPE_29__* %191)
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ule i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %187
  %198 = load i64, i64* %10, align 8
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %197, %187
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 1
  store %struct.TYPE_30__* %208, %struct.TYPE_30__** %17, align 8
  %209 = load i8*, i8** %16, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %256

211:                                              ; preds = %201
  %212 = load i8*, i8** %16, align 8
  %213 = call i32 @strlen(i8* %212)
  %214 = icmp eq i32 %213, 4
  br i1 %214, label %215, label %256

215:                                              ; preds = %211
  %216 = load i8*, i8** %16, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 0
  %218 = load i8, i8* %217, align 1
  %219 = load i8*, i8** %16, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  %221 = load i8, i8* %220, align 1
  %222 = load i8*, i8** %16, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 2
  %224 = load i8, i8* %223, align 1
  %225 = load i8*, i8** %16, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 3
  %227 = load i8, i8* %226, align 1
  %228 = call i32 @VLC_FOURCC(i8 signext %218, i8 signext %221, i8 signext %224, i8 signext %227)
  store i32 %228, i32* %18, align 4
  %229 = load i32, i32* @UNKNOWN_ES, align 4
  store i32 %229, i32* %19, align 4
  %230 = load i8*, i8** %14, align 8
  %231 = call i32 @strcmp(i8* %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %215
  %234 = load i32, i32* @VIDEO_ES, align 4
  store i32 %234, i32* %19, align 4
  br label %249

235:                                              ; preds = %215
  %236 = load i8*, i8** %14, align 8
  %237 = call i32 @strcmp(i8* %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  %240 = load i32, i32* @AUDIO_ES, align 4
  store i32 %240, i32* %19, align 4
  br label %248

241:                                              ; preds = %235
  %242 = load i8*, i8** %14, align 8
  %243 = call i32 @strcmp(i8* %242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %241
  %246 = load i32, i32* @SPU_ES, align 4
  store i32 %246, i32* %19, align 4
  br label %247

247:                                              ; preds = %245, %241
  br label %248

248:                                              ; preds = %247, %239
  br label %249

249:                                              ; preds = %248, %233
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %251 = load i32, i32* %19, align 4
  %252 = load i32, i32* %18, align 4
  %253 = call i32 @es_format_Change(%struct.TYPE_30__* %250, i32 %251, i32 %252)
  %254 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %254, i32 0, i32 0
  store i32 0, i32* %255, align 8
  br label %272

256:                                              ; preds = %211, %201
  %257 = load i8*, i8** %14, align 8
  %258 = call i8* @strtol(i8* %257, i8** null, i32 0)
  %259 = ptrtoint i8* %258 to i32
  store i32 %259, i32* %20, align 4
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %261 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %263, align 8
  %265 = load i32, i32* %20, align 4
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %267 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 1
  %271 = call i32 @PIDFillFormat(%struct.TYPE_31__* %260, %struct.TYPE_25__* %264, i32 %265, i32* %270)
  br label %272

272:                                              ; preds = %256, %249
  %273 = load i32, i32* %9, align 4
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 4
  %276 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %272
  %281 = load i64, i64* %10, align 8
  %282 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %283 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %282, i32 0, i32 2
  store i64 %281, i64* %283, align 8
  br label %284

284:                                              ; preds = %280, %272
  %285 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %286 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @UNKNOWN_ES, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %313

290:                                              ; preds = %284
  %291 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %292 = load i64, i64* %10, align 8
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 4
  %295 = bitcast i32* %294 to i8*
  %296 = call i32 (%struct.TYPE_31__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_31__* %291, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %292, i8* %295)
  %297 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %301 = call i32 @es_out_Add(i32 %299, %struct.TYPE_30__* %300)
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i32 0, i32 0
  store i32 %301, i32* %308, align 8
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %310, align 4
  br label %313

313:                                              ; preds = %290, %284
  br label %314

314:                                              ; preds = %313, %160
  br label %315

315:                                              ; preds = %314, %156
  br label %316

316:                                              ; preds = %315, %149
  %317 = load i8*, i8** %13, align 8
  store i8* %317, i8** %8, align 8
  br label %118

318:                                              ; preds = %126
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %319, i32 0, i32 0
  store i32 1, i32* %320, align 8
  %321 = load i8*, i8** %7, align 8
  %322 = call i32 @free(i8* %321)
  %323 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %323, i32* %3, align 4
  br label %328

324:                                              ; preds = %96, %65, %39
  %325 = load i8*, i8** %7, align 8
  %326 = call i32 @free(i8* %325)
  %327 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %327, i32* %3, align 4
  br label %328

328:                                              ; preds = %324, %318, %29
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local %struct.TYPE_29__* @GetPID(%struct.TYPE_32__*, i64) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_31__*, i8*, i64, ...) #1

declare dso_local i32 @PIDSetup(%struct.TYPE_31__*, i32, %struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i32 @dvbpsi_pmt_attach(i32, i32, i32, %struct.TYPE_31__*) #1

declare dso_local i32 @PIDRelease(%struct.TYPE_31__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ARRAY_APPEND(i32, %struct.TYPE_29__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @es_format_Change(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @PIDFillFormat(%struct.TYPE_31__*, %struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @es_out_Add(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
