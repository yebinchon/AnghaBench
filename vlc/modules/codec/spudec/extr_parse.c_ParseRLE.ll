; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/spudec/extr_parse.c_ParseRLE.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/spudec/extr_parse.c_ParseRLE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32*, i32*, i32, i32, i32, i32**, i32, i32* }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"out of bounds while reading rle\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"out of bounds, %i at (%i,%i) is out of %ix%i\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"i_x overflowed, %i > %i\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"padding bytes found in RLE sequence\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"send mail to <sam@zoy.org> if you want to help debugging this\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@p_spu = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_12__*)* @ParseRLE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseRLE(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [4 x i32], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %8, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 3
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 2
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 1
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  store i32 0, i32* %43, align 16
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 1
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 1
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %241, %3
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %244

62:                                               ; preds = %58
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %16, align 8
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %213, %62
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %218

71:                                               ; preds = %67
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  br label %72

72:                                               ; preds = %101, %71
  %73 = load i32, i32* %24, align 4
  %74 = icmp ule i32 %73, 64
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %23, align 4
  %77 = load i32, i32* %24, align 4
  %78 = icmp ult i32 %76, %77
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  br i1 %80, label %81, label %104

81:                                               ; preds = %79
  %82 = load i32*, i32** %16, align 8
  %83 = load i32, i32* %82, align 4
  %84 = lshr i32 %83, 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp uge i32 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %92, i32* %4, align 4
  br label %430

93:                                               ; preds = %81
  %94 = load i32, i32* %23, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @AddNibble(i32 %94, i32* %98, i32* %99)
  store i32 %100, i32* %23, align 4
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %24, align 4
  %103 = shl i32 %102, 2
  store i32 %103, i32* %24, align 4
  br label %72

104:                                              ; preds = %79
  %105 = load i32, i32* %23, align 4
  %106 = icmp ult i32 %105, 4
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %11, align 4
  %110 = sub i32 %108, %109
  %111 = shl i32 %110, 2
  %112 = load i32, i32* %23, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %23, align 4
  br label %114

114:                                              ; preds = %107, %104
  %115 = load i32, i32* %23, align 4
  %116 = lshr i32 %115, 2
  %117 = load i32, i32* %11, align 4
  %118 = add i32 %116, %117
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %9, align 4
  %121 = mul i32 %119, %120
  %122 = add i32 %118, %121
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %9, align 4
  %125 = mul i32 %123, %124
  %126 = icmp ugt i32 %122, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %114
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = load i32, i32* %23, align 4
  %130 = lshr i32 %129, 2
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %128, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %136, i32* %4, align 4
  br label %430

137:                                              ; preds = %114
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %23, align 4
  %142 = and i32 %141, 3
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %137
  %148 = load i32, i32* %23, align 4
  %149 = and i32 %148, 3
  store i32 %149, i32* %21, align 4
  %150 = load i32, i32* %23, align 4
  %151 = lshr i32 %150, 2
  %152 = load i32, i32* %21, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = add i32 %155, %151
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %147, %137
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %208

162:                                              ; preds = %157
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %186, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %23, align 4
  %167 = lshr i32 %166, 2
  %168 = load i32, i32* %9, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %165
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %23, align 4
  %175 = and i32 %174, 3
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %170
  %181 = load i32, i32* %23, align 4
  store i32 %181, i32* %20, align 4
  br label %185

182:                                              ; preds = %170, %165
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  store i32 0, i32* %184, align 8
  br label %185

185:                                              ; preds = %182, %180
  br label %186

186:                                              ; preds = %185, %162
  %187 = load i32, i32* %23, align 4
  %188 = load i32, i32* %20, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %186
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* %18, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %18, align 4
  br label %202

196:                                              ; preds = %190
  %197 = load i32, i32* %23, align 4
  %198 = load i32*, i32** %13, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %13, align 8
  store i32 %197, i32* %198, align 4
  %200 = load i32, i32* %19, align 4
  %201 = add i32 %200, 1
  store i32 %201, i32* %19, align 4
  br label %202

202:                                              ; preds = %196, %193
  br label %207

203:                                              ; preds = %186
  %204 = load i32, i32* %23, align 4
  %205 = load i32*, i32** %13, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %13, align 8
  store i32 %204, i32* %205, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %207

207:                                              ; preds = %203, %202
  br label %212

208:                                              ; preds = %157
  %209 = load i32, i32* %23, align 4
  %210 = load i32*, i32** %13, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %13, align 8
  store i32 %209, i32* %210, align 4
  br label %212

212:                                              ; preds = %208, %207
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %23, align 4
  %215 = lshr i32 %214, 2
  %216 = load i32, i32* %11, align 4
  %217 = add i32 %216, %215
  store i32 %217, i32* %11, align 4
  br label %67

218:                                              ; preds = %67
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp ugt i32 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %9, align 4
  %226 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %223, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %224, i32 %225)
  %227 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %227, i32* %4, align 4
  br label %430

228:                                              ; preds = %218
  %229 = load i32*, i32** %16, align 8
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, 1
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load i32*, i32** %16, align 8
  %235 = load i32, i32* %234, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %233, %228
  %238 = load i32, i32* %14, align 4
  %239 = xor i32 %238, -1
  %240 = and i32 %239, 1
  store i32 %240, i32* %14, align 4
  br label %241

241:                                              ; preds = %237
  %242 = load i32, i32* %12, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %12, align 4
  br label %58

244:                                              ; preds = %58
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* %10, align 4
  %247 = icmp ult i32 %245, %246
  br i1 %247, label %248, label %266

248:                                              ; preds = %244
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %250 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %249, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %252 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %251, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  br label %253

253:                                              ; preds = %257, %248
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* %10, align 4
  %256 = icmp ult i32 %254, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %253
  %258 = load i32, i32* %9, align 4
  %259 = shl i32 %258, 2
  %260 = load i32*, i32** %13, align 8
  %261 = getelementptr inbounds i32, i32* %260, i32 1
  store i32* %261, i32** %13, align 8
  store i32 %259, i32* %260, align 4
  %262 = load i32, i32* %12, align 4
  %263 = add i32 %262, 1
  store i32 %263, i32* %12, align 4
  br label %253

264:                                              ; preds = %253
  %265 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %265, i32* %4, align 4
  br label %430

266:                                              ; preds = %244
  %267 = load i32, i32* %18, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* %19, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %269, %266
  %273 = load i32, i32* %18, align 4
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 3
  store i32 %273, i32* %275, align 4
  %276 = load i32, i32* %19, align 4
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 4
  store i32 %276, i32* %278, align 8
  br label %279

279:                                              ; preds = %272, %269
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %428, label %284

284:                                              ; preds = %279
  store i32 -1, i32* %26, align 4
  store i32 -1, i32* %27, align 4
  %285 = load i32, i32* %21, align 4
  %286 = icmp ne i32 %285, -1
  br i1 %286, label %287, label %315

287:                                              ; preds = %284
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 5
  %290 = load i32**, i32*** %289, align 8
  %291 = load i32, i32* %21, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32*, i32** %290, i64 %292
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  store i32 0, i32* %295, align 4
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 5
  %298 = load i32**, i32*** %297, align 8
  %299 = load i32, i32* %21, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32*, i32** %298, i64 %300
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  store i32 128, i32* %303, align 4
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 5
  %306 = load i32**, i32*** %305, align 8
  %307 = load i32, i32* %21, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32*, i32** %306, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 2
  store i32 128, i32* %311, align 4
  %312 = load i32, i32* %21, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %313
  store i32 0, i32* %314, align 4
  br label %315

315:                                              ; preds = %287, %284
  store i32 0, i32* %25, align 4
  br label %316

316:                                              ; preds = %333, %315
  %317 = load i32, i32* %25, align 4
  %318 = icmp slt i32 %317, 4
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load i32, i32* %26, align 4
  %321 = icmp eq i32 %320, -1
  br label %322

322:                                              ; preds = %319, %316
  %323 = phi i1 [ false, %316 ], [ %321, %319 ]
  br i1 %323, label %324, label %336

324:                                              ; preds = %322
  %325 = load i32, i32* %25, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %324
  %331 = load i32, i32* %25, align 4
  store i32 %331, i32* %26, align 4
  br label %332

332:                                              ; preds = %330, %324
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %25, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %25, align 4
  br label %316

336:                                              ; preds = %322
  br label %337

337:                                              ; preds = %368, %336
  %338 = load i32, i32* %25, align 4
  %339 = icmp slt i32 %338, 4
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load i32, i32* %27, align 4
  %342 = icmp eq i32 %341, -1
  br label %343

343:                                              ; preds = %340, %337
  %344 = phi i1 [ false, %337 ], [ %342, %340 ]
  br i1 %344, label %345, label %371

345:                                              ; preds = %343
  %346 = load i32, i32* %25, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %367

351:                                              ; preds = %345
  %352 = load i32, i32* %25, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %26, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = icmp sgt i32 %355, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %351
  %362 = load i32, i32* %26, align 4
  store i32 %362, i32* %27, align 4
  %363 = load i32, i32* %25, align 4
  store i32 %363, i32* %26, align 4
  br label %366

364:                                              ; preds = %351
  %365 = load i32, i32* %25, align 4
  store i32 %365, i32* %27, align 4
  br label %366

366:                                              ; preds = %364, %361
  br label %367

367:                                              ; preds = %366, %345
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %25, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %25, align 4
  br label %337

371:                                              ; preds = %343
  %372 = load i32, i32* %26, align 4
  %373 = icmp ne i32 %372, -1
  br i1 %373, label %374, label %399

374:                                              ; preds = %371
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 5
  %377 = load i32**, i32*** %376, align 8
  %378 = load i32, i32* %26, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32*, i32** %377, i64 %379
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 0
  store i32 255, i32* %382, align 4
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 5
  %385 = load i32**, i32*** %384, align 8
  %386 = load i32, i32* %26, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32*, i32** %385, i64 %387
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 1
  store i32 128, i32* %390, align 4
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 5
  %393 = load i32**, i32*** %392, align 8
  %394 = load i32, i32* %26, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32*, i32** %393, i64 %395
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 2
  store i32 128, i32* %398, align 4
  br label %399

399:                                              ; preds = %374, %371
  %400 = load i32, i32* %27, align 4
  %401 = icmp ne i32 %400, -1
  br i1 %401, label %402, label %427

402:                                              ; preds = %399
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 5
  %405 = load i32**, i32*** %404, align 8
  %406 = load i32, i32* %27, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32*, i32** %405, i64 %407
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 0
  store i32 128, i32* %410, align 4
  %411 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %411, i32 0, i32 5
  %413 = load i32**, i32*** %412, align 8
  %414 = load i32, i32* %27, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32*, i32** %413, i64 %415
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 1
  store i32 128, i32* %418, align 4
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 5
  %421 = load i32**, i32*** %420, align 8
  %422 = load i32, i32* %27, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32*, i32** %421, i64 %423
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 2
  store i32 128, i32* %426, align 4
  br label %427

427:                                              ; preds = %402, %399
  br label %428

428:                                              ; preds = %427, %279
  %429 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %429, i32* %4, align 4
  br label %430

430:                                              ; preds = %428, %264, %222, %127, %89
  %431 = load i32, i32* %4, align 4
  ret i32 %431
}

declare dso_local i32 @msg_Err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @AddNibble(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
