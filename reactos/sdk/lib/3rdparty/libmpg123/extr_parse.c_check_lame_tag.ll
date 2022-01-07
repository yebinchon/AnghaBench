; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_parse.c_check_lame_tag.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_parse.c_check_lame_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i8*, i64, i64, i32, i32**, i64, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64*, float*, i64* }
%struct.TYPE_8__ = type { i32 }

@MPG123_IGNORE_INFOFRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"do we have lame tag?\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"possibly...\00", align 1
@MPG123_VBR = common dso_local global i8* null, align 8
@VERBOSE2 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Note: Xing/Lame/Info header detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Xing: flags 0x%08lx\00", align 1
@MPG123_IGNORE_STREAMLENGTH = common dso_local global i32 0, align 4
@VERBOSE3 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [66 x i8] c"Note: Ignoring Xing frames because of MPG123_IGNORE_STREAMLENGTH\0A\00", align 1
@TRACK_MAX_FRAMES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Note: Xing: %lu frames\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"Note: Ignoring Xing bytes because of MPG123_IGNORE_STREAMLENGTH\0A\00", align 1
@NOQUIET = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [77 x i8] c"Note: Xing stream size %lu differs by %f%% from determined/given file size!\0A\00", align 1
@.str.8 = private unnamed_addr constant [102 x i8] c"Warning: Xing stream size off by more than 1%%, fuzzy seeking may be even more fuzzy than by design!\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Note: Xing: %lu bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Note: Xing: quality = %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Note: Info: Encoder: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"LAME\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%u.%u%s\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"LAME: %u/%u/%s\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"Note: Info: Old LAME detected, using ReplayGain preamp of %f dB.\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Note: Info: Cannot determine LAME version.\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Note: Info: rev %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Note: Info: vbr mode %u\0A\00", align 1
@MPG123_CBR = common dso_local global i64 0, align 8
@MPG123_ABR = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [100 x i8] c"Wow! Is there _really_ a non-zero peak value? Now is it stored as float or int - how should I know?\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Note: Info: peak = %f (I won't use this)\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Note: Info: Radio Gain = %03.1fdB\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"Note: Info: Audiophile Gain = %03.1fdB\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Note: Info: ABR rate = %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Note: Encoder delay = %i; padding = %i\0A\00", align 1
@MPG123_GAPLESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @check_lame_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_lame_tag(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i8, align 1
  %10 = alloca [2 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [10 x i8], align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [6 x i8], align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca float, align 4
  %22 = alloca i16, align 2
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 12
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 17, i32 32
  br label %41

34:                                               ; preds = %1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 12
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 9, i32 17
  br label %41

41:                                               ; preds = %34, %27
  %42 = phi i32 [ %33, %27 ], [ %40, %34 ]
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MPG123_IGNORE_INFOFRAME, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %830

51:                                               ; preds = %41
  %52 = call i32 @debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 8
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %830

60:                                               ; preds = %51
  store i32 2, i32* %4, align 4
  br label %61

61:                                               ; preds = %77, %60
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %830

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %61

80:                                               ; preds = %61
  %81 = call i32 @debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 73
  br i1 %90, label %91, label %125

91:                                               ; preds = %80
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 110
  br i1 %101, label %102, label %125

102:                                              ; preds = %91
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 102
  br i1 %112, label %113, label %125

113:                                              ; preds = %102
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 111
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  br label %175

125:                                              ; preds = %113, %102, %91, %80
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 88
  br i1 %134, label %135, label %173

135:                                              ; preds = %125
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 105
  br i1 %145, label %146, label %173

146:                                              ; preds = %135
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 110
  br i1 %156, label %157, label %173

157:                                              ; preds = %146
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 3
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 103
  br i1 %167, label %168, label %173

168:                                              ; preds = %157
  %169 = load i8*, i8** @MPG123_VBR, align 8
  %170 = ptrtoint i8* %169 to i64
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 3
  store i64 %170, i64* %172, align 8
  br label %174

173:                                              ; preds = %157, %146, %135, %125
  br label %830

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %124
  %176 = load i64, i64* @VERBOSE2, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* @stderr, align 4
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 4
  store i32 %183, i32* %7, align 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @bit_read_long(i8* %186, i32* %7)
  store i64 %187, i64* %5, align 8
  %188 = load i64, i64* %5, align 8
  %189 = call i32 @debug1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %188)
  %190 = load i64, i64* %5, align 8
  %191 = and i64 %190, 1
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %239

193:                                              ; preds = %181
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 4
  %199 = icmp slt i32 %196, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %810

201:                                              ; preds = %193
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 2
  %204 = load i8*, i8** %203, align 8
  %205 = call i64 @bit_read_long(i8* %204, i32* %7)
  store i64 %205, i64* %6, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 9
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @MPG123_IGNORE_STREAMLENGTH, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %201
  %214 = load i64, i64* @VERBOSE3, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* @stderr, align 4
  %218 = call i32 (i32, i8*, ...) @fprintf(i32 %217, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %213
  br label %238

220:                                              ; preds = %201
  %221 = load i64, i64* %6, align 8
  %222 = load i64, i64* @TRACK_MAX_FRAMES, align 8
  %223 = icmp ugt i64 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  br label %227

225:                                              ; preds = %220
  %226 = load i64, i64* %6, align 8
  br label %227

227:                                              ; preds = %225, %224
  %228 = phi i64 [ 0, %224 ], [ %226, %225 ]
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 8
  store i64 %228, i64* %230, align 8
  %231 = load i64, i64* @VERBOSE3, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %227
  %234 = load i32, i32* @stderr, align 4
  %235 = load i64, i64* %6, align 8
  %236 = call i32 (i32, i8*, ...) @fprintf(i32 %234, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %235)
  br label %237

237:                                              ; preds = %233, %227
  br label %238

238:                                              ; preds = %237, %219
  br label %239

239:                                              ; preds = %238, %181
  %240 = load i64, i64* %5, align 8
  %241 = and i64 %240, 2
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %354

243:                                              ; preds = %239
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, 4
  %249 = icmp slt i32 %246, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %810

251:                                              ; preds = %243
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 2
  %254 = load i8*, i8** %253, align 8
  %255 = call i64 @bit_read_long(i8* %254, i32* %7)
  store i64 %255, i64* %6, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @MPG123_IGNORE_STREAMLENGTH, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %251
  %264 = load i64, i64* @VERBOSE3, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32, i32* @stderr, align 4
  %268 = call i32 (i32, i8*, ...) @fprintf(i32 %267, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  br label %269

269:                                              ; preds = %266, %263
  br label %353

270:                                              ; preds = %251
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 11
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp slt i32 %274, 1
  br i1 %275, label %276, label %286

276:                                              ; preds = %270
  %277 = load i64, i64* %6, align 8
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %277, %280
  %282 = trunc i64 %281 to i32
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 11
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  store i32 %282, i32* %285, align 8
  br label %345

286:                                              ; preds = %270
  %287 = load i64, i64* %6, align 8
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 11
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = sext i32 %291 to i64
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = sub nsw i64 %292, %295
  %297 = icmp ne i64 %287, %296
  br i1 %297, label %298, label %344

298:                                              ; preds = %286
  %299 = load i64, i64* @NOQUIET, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %344

301:                                              ; preds = %298
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 11
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = sitofp i32 %305 to double
  %307 = fdiv double 1.000000e+02, %306
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 11
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sext i32 %311 to i64
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = sub nsw i64 %312, %315
  %317 = load i64, i64* %6, align 8
  %318 = sub nsw i64 %316, %317
  %319 = sitofp i64 %318 to double
  %320 = fmul double %307, %319
  store double %320, double* %8, align 8
  %321 = load double, double* %8, align 8
  %322 = fcmp olt double %321, 0.000000e+00
  br i1 %322, label %323, label %326

323:                                              ; preds = %301
  %324 = load double, double* %8, align 8
  %325 = fneg double %324
  store double %325, double* %8, align 8
  br label %326

326:                                              ; preds = %323, %301
  %327 = load i64, i64* @VERBOSE3, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %326
  %330 = load i32, i32* @stderr, align 4
  %331 = load i64, i64* %6, align 8
  %332 = load double, double* %8, align 8
  %333 = call i32 (i32, i8*, ...) @fprintf(i32 %330, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0), i64 %331, double %332)
  br label %334

334:                                              ; preds = %329, %326
  %335 = load double, double* %8, align 8
  %336 = fcmp ogt double %335, 1.000000e+00
  br i1 %336, label %337, label %343

337:                                              ; preds = %334
  %338 = load i64, i64* @NOQUIET, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load i32, i32* @stderr, align 4
  %342 = call i32 (i32, i8*, ...) @fprintf(i32 %341, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.8, i64 0, i64 0))
  br label %343

343:                                              ; preds = %340, %337, %334
  br label %344

344:                                              ; preds = %343, %298, %286
  br label %345

345:                                              ; preds = %344, %276
  %346 = load i64, i64* @VERBOSE3, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %345
  %349 = load i32, i32* @stderr, align 4
  %350 = load i64, i64* %6, align 8
  %351 = call i32 (i32, i8*, ...) @fprintf(i32 %349, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %350)
  br label %352

352:                                              ; preds = %348, %345
  br label %353

353:                                              ; preds = %352, %269
  br label %354

354:                                              ; preds = %353, %239
  %355 = load i64, i64* %5, align 8
  %356 = and i64 %355, 4
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %377

358:                                              ; preds = %354
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %7, align 4
  %363 = add nsw i32 %362, 100
  %364 = icmp slt i32 %361, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %358
  br label %810

366:                                              ; preds = %358
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 2
  %370 = load i8*, i8** %369, align 8
  %371 = load i32, i32* %7, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %370, i64 %372
  %374 = call i32 @frame_fill_toc(%struct.TYPE_11__* %367, i8* %373)
  %375 = load i32, i32* %7, align 4
  %376 = add nsw i32 %375, 100
  store i32 %376, i32* %7, align 4
  br label %377

377:                                              ; preds = %366, %354
  %378 = load i64, i64* %5, align 8
  %379 = and i64 %378, 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %401

381:                                              ; preds = %377
  %382 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* %7, align 4
  %386 = add nsw i32 %385, 4
  %387 = icmp slt i32 %384, %386
  br i1 %387, label %388, label %389

388:                                              ; preds = %381
  br label %810

389:                                              ; preds = %381
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 2
  %392 = load i8*, i8** %391, align 8
  %393 = call i64 @bit_read_long(i8* %392, i32* %7)
  store i64 %393, i64* %6, align 8
  %394 = load i64, i64* @VERBOSE3, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %389
  %397 = load i32, i32* @stderr, align 4
  %398 = load i64, i64* %6, align 8
  %399 = call i32 (i32, i8*, ...) @fprintf(i32 %397, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i64 %398)
  br label %400

400:                                              ; preds = %396, %389
  br label %401

401:                                              ; preds = %400, %377
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %7, align 4
  %406 = add nsw i32 %405, 24
  %407 = icmp slt i32 %404, %406
  br i1 %407, label %408, label %409

408:                                              ; preds = %401
  br label %810

409:                                              ; preds = %401
  %410 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 2
  %412 = load i8*, i8** %411, align 8
  %413 = load i32, i32* %7, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %412, i64 %414
  %416 = load i8, i8* %415, align 1
  %417 = sext i8 %416 to i32
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %809

419:                                              ; preds = %409
  %420 = bitcast [2 x float]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %420, i8 0, i64 8, i1 false)
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  %421 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %422 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 2
  %424 = load i8*, i8** %423, align 8
  %425 = load i32, i32* %7, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, i8* %424, i64 %426
  %428 = call i32 @memcpy(i8* %421, i8* %427, i32 9)
  %429 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 9
  store i8 0, i8* %429, align 1
  %430 = load i64, i64* @VERBOSE3, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %419
  %433 = load i32, i32* @stderr, align 4
  %434 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %435 = call i32 (i32, i8*, ...) @fprintf(i32 %433, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %434)
  br label %436

436:                                              ; preds = %432, %419
  %437 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %438 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %437, i32 4)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %478, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %441, align 1
  %442 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %443 = getelementptr inbounds i8, i8* %442, i64 4
  %444 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %445 = call i32 @sscanf(i8* %443, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32* %16, i32* %17, i8* %444)
  %446 = icmp sge i32 %445, 2
  br i1 %446, label %447, label %470

447:                                              ; preds = %440
  %448 = load i32, i32* %16, align 4
  %449 = load i32, i32* %17, align 4
  %450 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %451 = call i32 @debug3(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %448, i32 %449, i8* %450)
  %452 = load i32, i32* %16, align 4
  %453 = icmp ult i32 %452, 3
  br i1 %453, label %460, label %454

454:                                              ; preds = %447
  %455 = load i32, i32* %16, align 4
  %456 = icmp eq i32 %455, 3
  br i1 %456, label %457, label %469

457:                                              ; preds = %454
  %458 = load i32, i32* %17, align 4
  %459 = icmp ult i32 %458, 95
  br i1 %459, label %460, label %469

460:                                              ; preds = %457, %447
  store float 6.000000e+00, float* %12, align 4
  %461 = load i64, i64* @VERBOSE3, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %468

463:                                              ; preds = %460
  %464 = load i32, i32* @stderr, align 4
  %465 = load float, float* %12, align 4
  %466 = fpext float %465 to double
  %467 = call i32 (i32, i8*, ...) @fprintf(i32 %464, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.15, i64 0, i64 0), double %466)
  br label %468

468:                                              ; preds = %463, %460
  br label %469

469:                                              ; preds = %468, %457, %454
  br label %477

470:                                              ; preds = %440
  %471 = load i64, i64* @VERBOSE3, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %470
  %474 = load i32, i32* @stderr, align 4
  %475 = call i32 (i32, i8*, ...) @fprintf(i32 %474, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  br label %476

476:                                              ; preds = %473, %470
  br label %477

477:                                              ; preds = %476, %469
  br label %478

478:                                              ; preds = %477, %436
  %479 = load i32, i32* %7, align 4
  %480 = add nsw i32 %479, 9
  store i32 %480, i32* %7, align 4
  %481 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %482 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %481, i32 0, i32 2
  %483 = load i8*, i8** %482, align 8
  %484 = load i32, i32* %7, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i8, i8* %483, i64 %485
  %487 = load i8, i8* %486, align 1
  %488 = sext i8 %487 to i32
  %489 = and i32 %488, 15
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %9, align 1
  %491 = load i32, i32* %7, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %7, align 4
  %493 = load i64, i64* @VERBOSE3, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %511

495:                                              ; preds = %478
  %496 = load i32, i32* @stderr, align 4
  %497 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %497, i32 0, i32 2
  %499 = load i8*, i8** %498, align 8
  %500 = load i32, i32* %7, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i8, i8* %499, i64 %501
  %503 = load i8, i8* %502, align 1
  %504 = sext i8 %503 to i32
  %505 = ashr i32 %504, 4
  %506 = call i32 (i32, i8*, ...) @fprintf(i32 %496, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %505)
  %507 = load i32, i32* @stderr, align 4
  %508 = load i8, i8* %9, align 1
  %509 = zext i8 %508 to i32
  %510 = call i32 (i32, i8*, ...) @fprintf(i32 %507, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %509)
  br label %511

511:                                              ; preds = %495, %478
  %512 = load i8, i8* %9, align 1
  %513 = zext i8 %512 to i32
  switch i32 %513, label %522 [
    i32 1, label %514
    i32 8, label %514
    i32 2, label %518
    i32 9, label %518
  ]

514:                                              ; preds = %511, %511
  %515 = load i64, i64* @MPG123_CBR, align 8
  %516 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %517 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %516, i32 0, i32 3
  store i64 %515, i64* %517, align 8
  br label %527

518:                                              ; preds = %511, %511
  %519 = load i64, i64* @MPG123_ABR, align 8
  %520 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %521 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %520, i32 0, i32 3
  store i64 %519, i64* %521, align 8
  br label %527

522:                                              ; preds = %511
  %523 = load i8*, i8** @MPG123_VBR, align 8
  %524 = ptrtoint i8* %523 to i64
  %525 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %525, i32 0, i32 3
  store i64 %524, i64* %526, align 8
  br label %527

527:                                              ; preds = %522, %518, %514
  %528 = load i32, i32* %7, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %7, align 4
  %530 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %531 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %530, i32 0, i32 2
  %532 = load i8*, i8** %531, align 8
  %533 = load i32, i32* %7, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i8, i8* %532, i64 %534
  %536 = load i8, i8* %535, align 1
  %537 = sext i8 %536 to i32
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %572, label %539

539:                                              ; preds = %527
  %540 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %540, i32 0, i32 2
  %542 = load i8*, i8** %541, align 8
  %543 = load i32, i32* %7, align 4
  %544 = add nsw i32 %543, 1
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i8, i8* %542, i64 %545
  %547 = load i8, i8* %546, align 1
  %548 = sext i8 %547 to i32
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %572, label %550

550:                                              ; preds = %539
  %551 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %552 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %551, i32 0, i32 2
  %553 = load i8*, i8** %552, align 8
  %554 = load i32, i32* %7, align 4
  %555 = add nsw i32 %554, 2
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i8, i8* %553, i64 %556
  %558 = load i8, i8* %557, align 1
  %559 = sext i8 %558 to i32
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %572, label %561

561:                                              ; preds = %550
  %562 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %563 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %562, i32 0, i32 2
  %564 = load i8*, i8** %563, align 8
  %565 = load i32, i32* %7, align 4
  %566 = add nsw i32 %565, 3
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i8, i8* %564, i64 %567
  %569 = load i8, i8* %568, align 1
  %570 = sext i8 %569 to i32
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %574

572:                                              ; preds = %561, %550, %539, %527
  %573 = call i32 @debug(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.19, i64 0, i64 0))
  br label %574

574:                                              ; preds = %572, %561
  %575 = load i64, i64* @VERBOSE3, align 8
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %582

577:                                              ; preds = %574
  %578 = load i32, i32* @stderr, align 4
  %579 = load float, float* %11, align 4
  %580 = fpext float %579 to double
  %581 = call i32 (i32, i8*, ...) @fprintf(i32 %578, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), double %580)
  br label %582

582:                                              ; preds = %577, %574
  store float 0.000000e+00, float* %11, align 4
  %583 = load i32, i32* %7, align 4
  %584 = add nsw i32 %583, 4
  store i32 %584, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %585

585:                                              ; preds = %662, %582
  %586 = load i32, i32* %4, align 4
  %587 = icmp slt i32 %586, 2
  br i1 %587, label %588, label %665

588:                                              ; preds = %585
  %589 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %590 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %589, i32 0, i32 2
  %591 = load i8*, i8** %590, align 8
  %592 = load i32, i32* %7, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i8, i8* %591, i64 %593
  %595 = load i8, i8* %594, align 1
  %596 = sext i8 %595 to i32
  %597 = ashr i32 %596, 5
  %598 = trunc i32 %597 to i8
  store i8 %598, i8* %19, align 1
  %599 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %600 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %599, i32 0, i32 2
  %601 = load i8*, i8** %600, align 8
  %602 = load i32, i32* %7, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8, i8* %601, i64 %603
  %605 = load i8, i8* %604, align 1
  %606 = sext i8 %605 to i32
  %607 = ashr i32 %606, 2
  %608 = and i32 %607, 7
  %609 = trunc i32 %608 to i8
  store i8 %609, i8* %20, align 1
  %610 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %611 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %610, i32 0, i32 2
  %612 = load i8*, i8** %611, align 8
  %613 = load i32, i32* %7, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i8, i8* %612, i64 %614
  %616 = load i8, i8* %615, align 1
  %617 = sext i8 %616 to i32
  %618 = and i32 %617, 2
  %619 = icmp ne i32 %618, 0
  %620 = zext i1 %619 to i64
  %621 = select i1 %619, float 0xBFB99999A0000000, float 0x3FB99999A0000000
  store float %621, float* %21, align 4
  %622 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %623 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %622, i32 0, i32 2
  %624 = load i8*, i8** %623, align 8
  %625 = bitcast i8* %624 to i32*
  %626 = call i32 @bit_read_short(i32* %625, i32* %7)
  %627 = and i32 %626, 511
  %628 = trunc i32 %627 to i16
  store i16 %628, i16* %22, align 2
  %629 = load i8, i8* %20, align 1
  %630 = zext i8 %629 to i32
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %640, label %632

632:                                              ; preds = %588
  %633 = load i8, i8* %19, align 1
  %634 = zext i8 %633 to i32
  %635 = icmp slt i32 %634, 1
  br i1 %635, label %640, label %636

636:                                              ; preds = %632
  %637 = load i8, i8* %19, align 1
  %638 = zext i8 %637 to i32
  %639 = icmp sgt i32 %638, 2
  br i1 %639, label %640, label %641

640:                                              ; preds = %636, %632, %588
  br label %662

641:                                              ; preds = %636
  %642 = load i8, i8* %19, align 1
  %643 = add i8 %642, -1
  store i8 %643, i8* %19, align 1
  %644 = load float, float* %21, align 4
  %645 = load i16, i16* %22, align 2
  %646 = uitofp i16 %645 to float
  %647 = fmul float %644, %646
  %648 = load i8, i8* %19, align 1
  %649 = zext i8 %648 to i64
  %650 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 %649
  store float %647, float* %650, align 4
  %651 = load i8, i8* %20, align 1
  %652 = zext i8 %651 to i32
  %653 = icmp eq i32 %652, 3
  br i1 %653, label %654, label %661

654:                                              ; preds = %641
  %655 = load float, float* %12, align 4
  %656 = load i8, i8* %19, align 1
  %657 = zext i8 %656 to i64
  %658 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 %657
  %659 = load float, float* %658, align 4
  %660 = fadd float %659, %655
  store float %660, float* %658, align 4
  br label %661

661:                                              ; preds = %654, %641
  br label %662

662:                                              ; preds = %661, %640
  %663 = load i32, i32* %4, align 4
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %4, align 4
  br label %585

665:                                              ; preds = %585
  %666 = load i64, i64* @VERBOSE3, align 8
  %667 = icmp ne i64 %666, 0
  br i1 %667, label %668, label %679

668:                                              ; preds = %665
  %669 = load i32, i32* @stderr, align 4
  %670 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 0
  %671 = load float, float* %670, align 4
  %672 = fpext float %671 to double
  %673 = call i32 (i32, i8*, ...) @fprintf(i32 %669, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), double %672)
  %674 = load i32, i32* @stderr, align 4
  %675 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 1
  %676 = load float, float* %675, align 4
  %677 = fpext float %676 to double
  %678 = call i32 (i32, i8*, ...) @fprintf(i32 %674, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), double %677)
  br label %679

679:                                              ; preds = %668, %665
  store i32 0, i32* %4, align 4
  br label %680

680:                                              ; preds = %720, %679
  %681 = load i32, i32* %4, align 4
  %682 = icmp slt i32 %681, 2
  br i1 %682, label %683, label %723

683:                                              ; preds = %680
  %684 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %685 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %684, i32 0, i32 10
  %686 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %685, i32 0, i32 0
  %687 = load i64*, i64** %686, align 8
  %688 = load i32, i32* %4, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds i64, i64* %687, i64 %689
  %691 = load i64, i64* %690, align 8
  %692 = icmp sle i64 %691, 0
  br i1 %692, label %693, label %719

693:                                              ; preds = %683
  %694 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %695 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %694, i32 0, i32 10
  %696 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %695, i32 0, i32 2
  %697 = load i64*, i64** %696, align 8
  %698 = load i32, i32* %4, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i64, i64* %697, i64 %699
  store i64 0, i64* %700, align 8
  %701 = load i32, i32* %4, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 %702
  %704 = load float, float* %703, align 4
  %705 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %706 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %705, i32 0, i32 10
  %707 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %706, i32 0, i32 1
  %708 = load float*, float** %707, align 8
  %709 = load i32, i32* %4, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds float, float* %708, i64 %710
  store float %704, float* %711, align 4
  %712 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %713 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %712, i32 0, i32 10
  %714 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %713, i32 0, i32 0
  %715 = load i64*, i64** %714, align 8
  %716 = load i32, i32* %4, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i64, i64* %715, i64 %717
  store i64 0, i64* %718, align 8
  br label %719

719:                                              ; preds = %693, %683
  br label %720

720:                                              ; preds = %719
  %721 = load i32, i32* %4, align 4
  %722 = add nsw i32 %721, 1
  store i32 %722, i32* %4, align 4
  br label %680

723:                                              ; preds = %680
  %724 = load i32, i32* %7, align 4
  %725 = add nsw i32 %724, 1
  store i32 %725, i32* %7, align 4
  %726 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %727 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %726, i32 0, i32 3
  %728 = load i64, i64* %727, align 8
  %729 = load i64, i64* @MPG123_ABR, align 8
  %730 = icmp eq i64 %728, %729
  br i1 %730, label %731, label %751

731:                                              ; preds = %723
  %732 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %733 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %732, i32 0, i32 2
  %734 = load i8*, i8** %733, align 8
  %735 = load i32, i32* %7, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds i8, i8* %734, i64 %736
  %738 = load i8, i8* %737, align 1
  %739 = sext i8 %738 to i32
  %740 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %741 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %740, i32 0, i32 5
  store i32 %739, i32* %741, align 8
  %742 = load i64, i64* @VERBOSE3, align 8
  %743 = icmp ne i64 %742, 0
  br i1 %743, label %744, label %750

744:                                              ; preds = %731
  %745 = load i32, i32* @stderr, align 4
  %746 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %747 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %746, i32 0, i32 5
  %748 = load i32, i32* %747, align 8
  %749 = call i32 (i32, i8*, ...) @fprintf(i32 %745, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i32 %748)
  br label %750

750:                                              ; preds = %744, %731
  br label %751

751:                                              ; preds = %750, %723
  %752 = load i32, i32* %7, align 4
  %753 = add nsw i32 %752, 1
  store i32 %753, i32* %7, align 4
  %754 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %755 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %754, i32 0, i32 2
  %756 = load i8*, i8** %755, align 8
  %757 = load i32, i32* %7, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds i8, i8* %756, i64 %758
  %760 = load i8, i8* %759, align 1
  %761 = sext i8 %760 to i32
  %762 = shl i32 %761, 4
  %763 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %764 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %763, i32 0, i32 2
  %765 = load i8*, i8** %764, align 8
  %766 = load i32, i32* %7, align 4
  %767 = add nsw i32 %766, 1
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds i8, i8* %765, i64 %768
  %770 = load i8, i8* %769, align 1
  %771 = sext i8 %770 to i32
  %772 = ashr i32 %771, 4
  %773 = or i32 %762, %772
  %774 = sext i32 %773 to i64
  store i64 %774, i64* %14, align 8
  %775 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %776 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %775, i32 0, i32 2
  %777 = load i8*, i8** %776, align 8
  %778 = load i32, i32* %7, align 4
  %779 = add nsw i32 %778, 1
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds i8, i8* %777, i64 %780
  %782 = load i8, i8* %781, align 1
  %783 = sext i8 %782 to i32
  %784 = shl i32 %783, 8
  %785 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %786 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %785, i32 0, i32 2
  %787 = load i8*, i8** %786, align 8
  %788 = load i32, i32* %7, align 4
  %789 = add nsw i32 %788, 2
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds i8, i8* %787, i64 %790
  %792 = load i8, i8* %791, align 1
  %793 = sext i8 %792 to i32
  %794 = or i32 %784, %793
  %795 = and i32 %794, 4095
  %796 = sext i32 %795 to i64
  store i64 %796, i64* %15, align 8
  %797 = load i32, i32* %7, align 4
  %798 = add nsw i32 %797, 3
  store i32 %798, i32* %7, align 4
  %799 = load i64, i64* @VERBOSE3, align 8
  %800 = icmp ne i64 %799, 0
  br i1 %800, label %801, label %808

801:                                              ; preds = %751
  %802 = load i32, i32* @stderr, align 4
  %803 = load i64, i64* %14, align 8
  %804 = trunc i64 %803 to i32
  %805 = load i64, i64* %15, align 8
  %806 = trunc i64 %805 to i32
  %807 = call i32 (i32, i8*, ...) @fprintf(i32 %802, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i32 %804, i32 %806)
  br label %808

808:                                              ; preds = %801, %751
  br label %809

809:                                              ; preds = %808, %409
  br label %810

810:                                              ; preds = %809, %408, %388, %365, %250, %200
  %811 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %812 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %811, i32 0, i32 6
  %813 = load i32**, i32*** %812, align 8
  %814 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %815 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %814, i32 0, i32 7
  %816 = load i64, i64* %815, align 8
  %817 = getelementptr inbounds i32*, i32** %813, i64 %816
  %818 = load i32*, i32** %817, align 8
  %819 = getelementptr inbounds i32, i32* %818, i64 512
  %820 = bitcast i32* %819 to i8*
  %821 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %822 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %821, i32 0, i32 2
  store i8* %820, i8** %822, align 8
  %823 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %824 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %823, i32 0, i32 7
  %825 = load i64, i64* %824, align 8
  %826 = add i64 %825, 1
  %827 = and i64 %826, 1
  %828 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %829 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %828, i32 0, i32 7
  store i64 %827, i64* %829, align 8
  store i32 1, i32* %2, align 4
  br label %831

830:                                              ; preds = %173, %75, %59, %50
  store i32 0, i32* %2, align 4
  br label %831

831:                                              ; preds = %830, %810
  %832 = load i32, i32* %2, align 4
  ret i32 %832
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @bit_read_long(i8*, i32*) #1

declare dso_local i32 @debug1(i8*, i64) #1

declare dso_local i32 @frame_fill_toc(%struct.TYPE_11__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i8*) #1

declare dso_local i32 @debug3(i8*, i32, i32, i8*) #1

declare dso_local i32 @bit_read_short(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
