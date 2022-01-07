; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Eia608TextLine.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Eia608TextLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.eia608_screen = type { i8**, i64**, i32** }

@EIA608_COLOR_DEFAULT = common dso_local global i64 0, align 8
@EIA608_FONT_REGULAR = common dso_local global i32 0, align 4
@EIA608_SCREEN_COLUMNS = common dso_local global i32 0, align 4
@STYLE_NO_DEFAULTS = common dso_local global i32 0, align 4
@STYLE_MONOSPACED = common dso_local global i32 0, align 4
@EIA608_FONT_ITALICS = common dso_local global i32 0, align 4
@STYLE_ITALIC = common dso_local global i32 0, align 4
@STYLE_HAS_FLAGS = common dso_local global i32 0, align 4
@EIA608_FONT_UNDERLINE = common dso_local global i32 0, align 4
@STYLE_UNDERLINE = common dso_local global i32 0, align 4
@rgi_eia608_colors = common dso_local global i32* null, align 8
@STYLE_HAS_FONT_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.eia608_screen*, i32)* @Eia608TextLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @Eia608TextLine(%struct.eia608_screen* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.eia608_screen*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.eia608_screen* %0, %struct.eia608_screen** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %24 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %6, align 8
  %30 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %31 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %30, i32 0, i32 1
  %32 = load i64**, i64*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64*, i64** %32, i64 %34
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %7, align 8
  %37 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %38 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %8, align 8
  %44 = load i64, i64* @EIA608_COLOR_DEFAULT, align 8
  store i64 %44, i64* %12, align 8
  %45 = load i32, i32* @EIA608_FONT_REGULAR, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* @EIA608_SCREEN_COLUMNS, align 4
  %47 = mul nsw i32 4, %46
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %16, align 8
  %53 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %17, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %54, align 16
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %69, %2
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @EIA608_SCREEN_COLUMNS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 32
  br label %67

67:                                               ; preds = %59, %55
  %68 = phi i1 [ false, %55 ], [ %66, %59 ]
  br i1 %68, label %69, label %76

69:                                               ; preds = %67
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %71 = call i32 @Eia608TextUtf8(i8* %70, i8 signext -119)
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %73 = call i32 @CAT(i8* %72)
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %55

76:                                               ; preds = %67
  %77 = load i32, i32* @EIA608_SCREEN_COLUMNS, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %93, %76
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 32
  br label %91

91:                                               ; preds = %83, %79
  %92 = phi i1 [ false, %79 ], [ %90, %83 ]
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %10, align 4
  br label %79

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %18, align 4
  br label %282

101:                                              ; preds = %96
  %102 = call i8* @text_segment_New(i32* null)
  %103 = bitcast i8* %102 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %20, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %105 = icmp ne %struct.TYPE_6__* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %18, align 4
  br label %282

107:                                              ; preds = %101
  %108 = load i32, i32* @STYLE_NO_DEFAULTS, align 4
  %109 = call i8* @text_style_Create(i32 %108)
  %110 = bitcast i8* %109 to %struct.TYPE_5__*
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store %struct.TYPE_5__* %110, %struct.TYPE_5__** %112, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = icmp ne %struct.TYPE_5__* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %107
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %119 = call i32 @text_segment_Delete(%struct.TYPE_6__* %118)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %18, align 4
  br label %282

120:                                              ; preds = %107
  %121 = load i32, i32* @STYLE_MONOSPACED, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %121
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %262, %120
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %265

133:                                              ; preds = %129
  %134 = load i64*, i64** %7, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %21, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %22, align 4
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %133
  %148 = load i64, i64* %21, align 8
  %149 = load i64, i64* %12, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %250

151:                                              ; preds = %147, %133
  %152 = call i32 @EnsureUTF8(i8* %53)
  %153 = call i8* @strdup(i8* %53)
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %156, align 16
  %157 = call i8* @text_segment_New(i32* null)
  %158 = bitcast i8* %157 to %struct.TYPE_6__*
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  store %struct.TYPE_6__* %158, %struct.TYPE_6__** %160, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  store %struct.TYPE_6__* %163, %struct.TYPE_6__** %19, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %165 = icmp ne %struct.TYPE_6__* %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %151
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %167, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %18, align 4
  br label %282

168:                                              ; preds = %151
  %169 = load i32, i32* @STYLE_NO_DEFAULTS, align 4
  %170 = call i8* @text_style_Create(i32 %169)
  %171 = bitcast i8* %170 to %struct.TYPE_5__*
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  store %struct.TYPE_5__* %171, %struct.TYPE_5__** %173, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = icmp ne %struct.TYPE_5__* %176, null
  br i1 %177, label %182, label %178

178:                                              ; preds = %168
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %180 = call i32 @text_segment_Delete(%struct.TYPE_6__* %179)
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %181, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %18, align 4
  br label %282

182:                                              ; preds = %168
  %183 = load i32, i32* @STYLE_MONOSPACED, align 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %183
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* %22, align 4
  %191 = load i32, i32* @EIA608_FONT_ITALICS, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %209

194:                                              ; preds = %182
  %195 = load i32, i32* @STYLE_ITALIC, align 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %195
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %202
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %194, %182
  %210 = load i32, i32* %22, align 4
  %211 = load i32, i32* @EIA608_FONT_UNDERLINE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %209
  %215 = load i32, i32* @STYLE_UNDERLINE, align 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %215
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %222
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %214, %209
  %230 = load i64, i64* %21, align 8
  %231 = load i64, i64* @EIA608_COLOR_DEFAULT, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %249

233:                                              ; preds = %229
  %234 = load i32*, i32** @rgi_eia608_colors, align 8
  %235 = load i64, i64* %21, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 1
  store i32 %237, i32* %241, align 4
  %242 = load i32, i32* @STYLE_HAS_FONT_COLOR, align 4
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %242
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %233, %229
  br label %250

250:                                              ; preds = %249, %147
  %251 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %252 = load i8*, i8** %6, align 8
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  %256 = load i8, i8* %255, align 1
  %257 = call i32 @Eia608TextUtf8(i8* %251, i8 signext %256)
  %258 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %259 = call i32 @CAT(i8* %258)
  %260 = load i32, i32* %22, align 4
  store i32 %260, i32* %13, align 4
  %261 = load i64, i64* %21, align 8
  store i64 %261, i64* %12, align 8
  br label %262

262:                                              ; preds = %250
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %11, align 4
  br label %129

265:                                              ; preds = %129
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %267 = icmp ne %struct.TYPE_6__* %266, null
  br i1 %267, label %268, label %280

268:                                              ; preds = %265
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = icmp ne i8* %271, null
  %273 = xor i1 %272, true
  %274 = zext i1 %273 to i32
  %275 = call i32 @assert(i32 %274)
  %276 = call i32 @EnsureUTF8(i8* %53)
  %277 = call i8* @strdup(i8* %53)
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  store i8* %277, i8** %279, align 8
  br label %280

280:                                              ; preds = %268, %265
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %281, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %18, align 4
  br label %282

282:                                              ; preds = %280, %178, %166, %117, %106, %100
  %283 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %283)
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %284
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Eia608TextUtf8(i8*, i8 signext) #2

declare dso_local i32 @CAT(i8*) #2

declare dso_local i8* @text_segment_New(i32*) #2

declare dso_local i8* @text_style_Create(i32) #2

declare dso_local i32 @text_segment_Delete(%struct.TYPE_6__*) #2

declare dso_local i32 @EnsureUTF8(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @assert(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
