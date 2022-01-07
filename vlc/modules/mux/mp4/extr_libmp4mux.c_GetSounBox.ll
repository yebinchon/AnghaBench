; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetSounBox.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetSounBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64, i64, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32* }

@VLC_CODEC_MPGA = common dso_local global i64 0, align 8
@VLC_CODEC_MP3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mp4a\00", align 1
@VLC_CODEC_A52 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"ac-3\00", align 1
@VLC_CODEC_EAC3 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"ec-3\00", align 1
@VLC_CODEC_DTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"DTS \00", align 1
@VLC_CODEC_WMAP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"wma \00", align 1
@VLC_CODEC_MP4A = common dso_local global i64 0, align 8
@VLC_CODEC_AMR_NB = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"dac3\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"dec3\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"wfex\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_11__*, i32)* @GetSounBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetSounBox(i32* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @VLC_UNUSED(i32* %16)
  store i32 1, i32* %8, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @VLC_CODEC_MPGA, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @VLC_CODEC_MP3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25, %3
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %34 = call i32 @memcpy(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %38

35:                                               ; preds = %29
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %37 = call i32 @memcpy(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %38

38:                                               ; preds = %35, %32
  br label %75

39:                                               ; preds = %25
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @VLC_CODEC_A52, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %45 = call i32 @memcpy(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %74

46:                                               ; preds = %39
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @VLC_CODEC_EAC3, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %52 = call i32 @memcpy(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  br label %73

53:                                               ; preds = %46
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @VLC_CODEC_DTS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %59 = call i32 @memcpy(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  br label %72

60:                                               ; preds = %53
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @VLC_CODEC_WMAP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %66 = call i32 @memcpy(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  br label %71

67:                                               ; preds = %60
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %70 = call i32 @vlc_fourcc_to_char(i64 %68, i8* %69)
  br label %71

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71, %57
  br label %73

73:                                               ; preds = %72, %50
  br label %74

74:                                               ; preds = %73, %43
  br label %75

75:                                               ; preds = %74, %38
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %77 = call i32* @box_new(i8* %76)
  store i32* %77, i32** %11, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store i32* null, i32** %4, align 8
  br label %262

81:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %88, %81
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 6
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @bo_add_8(i32* %86, i32 0)
  br label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %82

91:                                               ; preds = %82
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @bo_add_16be(i32* %92, i32 1)
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @VLC_CODEC_MP4A, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @bo_add_16be(i32* %101, i32 1)
  br label %106

103:                                              ; preds = %96, %91
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @bo_add_16be(i32* %104, i32 0)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @bo_add_16be(i32* %107, i32 0)
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @bo_add_32be(i32* %109, i32 0)
  %111 = load i32*, i32** %11, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @bo_add_16be(i32* %111, i32 %116)
  %118 = load i32*, i32** %11, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %106
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  br label %132

131:                                              ; preds = %106
  br label %132

132:                                              ; preds = %131, %125
  %133 = phi i32 [ %130, %125 ], [ 16, %131 ]
  %134 = call i32 @bo_add_16be(i32* %118, i32 %133)
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 @bo_add_16be(i32* %135, i32 -2)
  %137 = load i32*, i32** %11, align 8
  %138 = call i32 @bo_add_16be(i32* %137, i32 0)
  %139 = load i32*, i32** %11, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @bo_add_16be(i32* %139, i32 %144)
  %146 = load i32*, i32** %11, align 8
  %147 = call i32 @bo_add_16be(i32* %146, i32 0)
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %132
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @VLC_CODEC_MP4A, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %150
  %158 = load i32*, i32** %11, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @bo_add_32be(i32* %158, i32 %163)
  %165 = load i32*, i32** %11, align 8
  %166 = call i32 @bo_add_32be(i32* %165, i32 1536)
  %167 = load i32*, i32** %11, align 8
  %168 = call i32 @bo_add_32be(i32* %167, i32 2)
  %169 = load i32*, i32** %11, align 8
  %170 = call i32 @bo_add_32be(i32* %169, i32 2)
  br label %171

171:                                              ; preds = %157, %150, %132
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %260

174:                                              ; preds = %171
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %14, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %15, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %174
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  store i32* %192, i32** %14, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %15, align 8
  br label %197

197:                                              ; preds = %188, %174
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load i64, i64* %9, align 8
  %202 = load i64, i64* @VLC_CODEC_MP4A, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %206 = call i32* @GetWaveTag(%struct.TYPE_11__* %205)
  store i32* %206, i32** %13, align 8
  br label %252

207:                                              ; preds = %200, %197
  %208 = load i64, i64* %9, align 8
  %209 = load i64, i64* @VLC_CODEC_AMR_NB, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = call i32* @GetDamrTag(%struct.TYPE_12__* %213)
  store i32* %214, i32** %13, align 8
  br label %251

215:                                              ; preds = %207
  %216 = load i64, i64* %9, align 8
  %217 = load i64, i64* @VLC_CODEC_A52, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %215
  %220 = load i64, i64* %15, align 8
  %221 = icmp uge i64 %220, 3
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load i32*, i32** %14, align 8
  %224 = load i64, i64* %15, align 8
  %225 = call i32* @GetxxxxTag(i32* %223, i64 %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32* %225, i32** %13, align 8
  br label %250

226:                                              ; preds = %219, %215
  %227 = load i64, i64* %9, align 8
  %228 = load i64, i64* @VLC_CODEC_EAC3, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %226
  %231 = load i64, i64* %15, align 8
  %232 = icmp uge i64 %231, 5
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i32*, i32** %14, align 8
  %235 = load i64, i64* %15, align 8
  %236 = call i32* @GetxxxxTag(i32* %234, i64 %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32* %236, i32** %13, align 8
  br label %249

237:                                              ; preds = %230, %226
  %238 = load i64, i64* %9, align 8
  %239 = load i64, i64* @VLC_CODEC_WMAP, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = call i32* @GetWaveFormatExTag(%struct.TYPE_12__* %243, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i32* %244, i32** %13, align 8
  br label %248

245:                                              ; preds = %237
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %247 = call i32* @GetESDS(%struct.TYPE_11__* %246)
  store i32* %247, i32** %13, align 8
  br label %248

248:                                              ; preds = %245, %241
  br label %249

249:                                              ; preds = %248, %233
  br label %250

250:                                              ; preds = %249, %222
  br label %251

251:                                              ; preds = %250, %211
  br label %252

252:                                              ; preds = %251, %204
  %253 = load i32*, i32** %13, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load i32*, i32** %11, align 8
  %257 = load i32*, i32** %13, align 8
  %258 = call i32 @box_gather(i32* %256, i32* %257)
  br label %259

259:                                              ; preds = %255, %252
  br label %260

260:                                              ; preds = %259, %171
  %261 = load i32*, i32** %11, align 8
  store i32* %261, i32** %4, align 8
  br label %262

262:                                              ; preds = %260, %80
  %263 = load i32*, i32** %4, align 8
  ret i32* %263
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vlc_fourcc_to_char(i64, i8*) #1

declare dso_local i32* @box_new(i8*) #1

declare dso_local i32 @bo_add_8(i32*, i32) #1

declare dso_local i32 @bo_add_16be(i32*, i32) #1

declare dso_local i32 @bo_add_32be(i32*, i32) #1

declare dso_local i32* @GetWaveTag(%struct.TYPE_11__*) #1

declare dso_local i32* @GetDamrTag(%struct.TYPE_12__*) #1

declare dso_local i32* @GetxxxxTag(i32*, i64, i8*) #1

declare dso_local i32* @GetWaveFormatExTag(%struct.TYPE_12__*, i8*) #1

declare dso_local i32* @GetESDS(%struct.TYPE_11__*) #1

declare dso_local i32 @box_gather(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
