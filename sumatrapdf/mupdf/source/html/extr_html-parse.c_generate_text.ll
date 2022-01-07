; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_generate_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_generate_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.genstate = type { i32, i32, i64, i32* }

@WS_COLLAPSE = common dso_local global i32 0, align 4
@WS_ALLOW_BREAK_SPACE = common dso_local global i32 0, align 4
@WS_FORCE_BREAK_NEWLINE = common dso_local global i32 0, align 4
@generate_text.space = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@BOX_FLOW = common dso_local global i64 0, align 8
@UCDN_LINEBREAK_CLASS_WJ = common dso_local global i8* null, align 8
@UCDN_LINEBREAK_CLASS_RI = common dso_local global i32 0, align 4
@pairbrk = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_17__*, i8*, i32, %struct.genstate*)* @generate_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_text(i32* %0, %struct.TYPE_17__* %1, i8* %2, i32 %3, %struct.genstate* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.genstate*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.genstate* %4, %struct.genstate** %10, align 8
  %21 = load %struct.genstate*, %struct.genstate** %10, align 8
  %22 = getelementptr inbounds %struct.genstate, %struct.genstate* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WS_COLLAPSE, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WS_ALLOW_BREAK_SPACE, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WS_FORCE_BREAK_NEWLINE, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %15, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %11, align 8
  br label %46

46:                                               ; preds = %52, %5
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BOX_FLOW, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %11, align 8
  br label %46

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %311, %56
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %312

61:                                               ; preds = %57
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 13
  br i1 %73, label %74, label %100

74:                                               ; preds = %69, %64
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 13
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  store i8* %88, i8** %8, align 8
  br label %92

89:                                               ; preds = %80, %74
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %91, i8** %8, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %97 = call i32 @add_flow_break(i32* %93, i32* %94, %struct.TYPE_17__* %95, %struct.TYPE_17__* %96)
  %98 = load %struct.genstate*, %struct.genstate** %10, align 8
  %99 = getelementptr inbounds %struct.genstate, %struct.genstate* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %311

100:                                              ; preds = %69, %61
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @iswhite(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %168

105:                                              ; preds = %100
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %141

108:                                              ; preds = %105
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %124, %111
  %113 = load i8*, i8** %8, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 32
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i8*, i8** %8, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 9
  br label %122

122:                                              ; preds = %117, %112
  %123 = phi i1 [ true, %112 ], [ %121, %117 ]
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %8, align 8
  br label %112

127:                                              ; preds = %122
  br label %138

128:                                              ; preds = %108
  br label %129

129:                                              ; preds = %134, %128
  %130 = load i8*, i8** %8, align 8
  %131 = load i8, i8* %130, align 1
  %132 = call i64 @iswhite(i8 signext %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %8, align 8
  br label %129

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %127
  %139 = load %struct.genstate*, %struct.genstate** %10, align 8
  %140 = getelementptr inbounds %struct.genstate, %struct.genstate* %139, i32 0, i32 1
  store i32 1, i32* %140, align 4
  br label %163

141:                                              ; preds = %105
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32*, i32** %6, align 8
  %146 = load i32*, i32** %12, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %149 = call i32 @add_flow_space(i32* %145, i32* %146, %struct.TYPE_17__* %147, %struct.TYPE_17__* %148)
  br label %160

150:                                              ; preds = %141
  %151 = load i32*, i32** %6, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %155 = load i8*, i8** @generate_text.space, align 8
  %156 = load i8*, i8** @generate_text.space, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @add_flow_word(i32* %151, i32* %152, %struct.TYPE_17__* %153, %struct.TYPE_17__* %154, i8* %155, i8* %157, i32 %158)
  br label %160

160:                                              ; preds = %150, %144
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %8, align 8
  br label %163

163:                                              ; preds = %160, %138
  %164 = load i8*, i8** @UCDN_LINEBREAK_CLASS_WJ, align 8
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.genstate*, %struct.genstate** %10, align 8
  %167 = getelementptr inbounds %struct.genstate, %struct.genstate* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  br label %310

168:                                              ; preds = %100
  %169 = load i8*, i8** %8, align 8
  store i8* %169, i8** %17, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.genstate*, %struct.genstate** %10, align 8
  %175 = call i32 @flush_space(i32* %170, %struct.TYPE_17__* %171, %struct.TYPE_17__* %172, i32 %173, %struct.genstate* %174)
  %176 = load %struct.genstate*, %struct.genstate** %10, align 8
  %177 = getelementptr inbounds %struct.genstate, %struct.genstate* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %168
  %181 = load i8*, i8** @UCDN_LINEBREAK_CLASS_WJ, align 8
  %182 = ptrtoint i8* %181 to i64
  %183 = load %struct.genstate*, %struct.genstate** %10, align 8
  %184 = getelementptr inbounds %struct.genstate, %struct.genstate* %183, i32 0, i32 2
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %180, %168
  br label %186

186:                                              ; preds = %293, %185
  %187 = load i8*, i8** %8, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load i8*, i8** %8, align 8
  %193 = load i8, i8* %192, align 1
  %194 = call i64 @iswhite(i8 signext %193)
  %195 = icmp ne i64 %194, 0
  %196 = xor i1 %195, true
  br label %197

197:                                              ; preds = %191, %186
  %198 = phi i1 [ false, %186 ], [ %196, %191 ]
  br i1 %198, label %199, label %294

199:                                              ; preds = %197
  %200 = load i8*, i8** %8, align 8
  store i8* %200, i8** %16, align 8
  %201 = load i8*, i8** %8, align 8
  %202 = call i32 @fz_chartorune(i32* %18, i8* %201)
  %203 = load i8*, i8** %8, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %8, align 8
  %206 = load i32, i32* %18, align 4
  %207 = icmp eq i32 %206, 173
  br i1 %207, label %208, label %232

208:                                              ; preds = %199
  %209 = load i8*, i8** %17, align 8
  %210 = load i8*, i8** %16, align 8
  %211 = icmp ne i8* %209, %210
  br i1 %211, label %212, label %221

212:                                              ; preds = %208
  %213 = load i32*, i32** %6, align 8
  %214 = load i32*, i32** %12, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %217 = load i8*, i8** %17, align 8
  %218 = load i8*, i8** %16, align 8
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @add_flow_word(i32* %213, i32* %214, %struct.TYPE_17__* %215, %struct.TYPE_17__* %216, i8* %217, i8* %218, i32 %219)
  br label %221

221:                                              ; preds = %212, %208
  %222 = load i32*, i32** %6, align 8
  %223 = load i32*, i32** %12, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %226 = call i32 @add_flow_shyphen(i32* %222, i32* %223, %struct.TYPE_17__* %224, %struct.TYPE_17__* %225)
  %227 = load i8*, i8** %8, align 8
  store i8* %227, i8** %17, align 8
  %228 = load i8*, i8** @UCDN_LINEBREAK_CLASS_WJ, align 8
  %229 = ptrtoint i8* %228 to i64
  %230 = load %struct.genstate*, %struct.genstate** %10, align 8
  %231 = getelementptr inbounds %struct.genstate, %struct.genstate* %230, i32 0, i32 2
  store i64 %229, i64* %231, align 8
  br label %293

232:                                              ; preds = %199
  %233 = load i32, i32* %14, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %292

235:                                              ; preds = %232
  %236 = load i32, i32* %18, align 4
  %237 = call i32 @ucdn_get_resolved_linebreak_class(i32 %236)
  store i32 %237, i32* %19, align 4
  %238 = load i32, i32* %19, align 4
  %239 = load i32, i32* @UCDN_LINEBREAK_CLASS_RI, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %291

241:                                              ; preds = %235
  %242 = load i32**, i32*** @pairbrk, align 8
  %243 = load %struct.genstate*, %struct.genstate** %10, align 8
  %244 = getelementptr inbounds %struct.genstate, %struct.genstate* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds i32*, i32** %242, i64 %245
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %19, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %20, align 4
  %252 = load i32, i32* %20, align 4
  %253 = icmp eq i32 %252, 64
  br i1 %253, label %254, label %255

254:                                              ; preds = %241
  store i32 94, i32* %20, align 4
  br label %255

255:                                              ; preds = %254, %241
  %256 = load i32, i32* %20, align 4
  %257 = icmp eq i32 %256, 35
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  store i32 94, i32* %20, align 4
  br label %259

259:                                              ; preds = %258, %255
  %260 = load i32, i32* %20, align 4
  %261 = icmp eq i32 %260, 37
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  store i32 94, i32* %20, align 4
  br label %263

263:                                              ; preds = %262, %259
  %264 = load i32, i32* %20, align 4
  %265 = icmp eq i32 %264, 95
  br i1 %265, label %266, label %286

266:                                              ; preds = %263
  %267 = load i8*, i8** %17, align 8
  %268 = load i8*, i8** %16, align 8
  %269 = icmp ne i8* %267, %268
  br i1 %269, label %270, label %279

270:                                              ; preds = %266
  %271 = load i32*, i32** %6, align 8
  %272 = load i32*, i32** %12, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %275 = load i8*, i8** %17, align 8
  %276 = load i8*, i8** %16, align 8
  %277 = load i32, i32* %9, align 4
  %278 = call i32 @add_flow_word(i32* %271, i32* %272, %struct.TYPE_17__* %273, %struct.TYPE_17__* %274, i8* %275, i8* %276, i32 %277)
  br label %279

279:                                              ; preds = %270, %266
  %280 = load i32*, i32** %6, align 8
  %281 = load i32*, i32** %12, align 8
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %284 = call i32 @add_flow_sbreak(i32* %280, i32* %281, %struct.TYPE_17__* %282, %struct.TYPE_17__* %283)
  %285 = load i8*, i8** %16, align 8
  store i8* %285, i8** %17, align 8
  br label %286

286:                                              ; preds = %279, %263
  %287 = load i32, i32* %19, align 4
  %288 = sext i32 %287 to i64
  %289 = load %struct.genstate*, %struct.genstate** %10, align 8
  %290 = getelementptr inbounds %struct.genstate, %struct.genstate* %289, i32 0, i32 2
  store i64 %288, i64* %290, align 8
  br label %291

291:                                              ; preds = %286, %235
  br label %292

292:                                              ; preds = %291, %232
  br label %293

293:                                              ; preds = %292, %221
  br label %186

294:                                              ; preds = %197
  %295 = load i8*, i8** %17, align 8
  %296 = load i8*, i8** %8, align 8
  %297 = icmp ne i8* %295, %296
  br i1 %297, label %298, label %307

298:                                              ; preds = %294
  %299 = load i32*, i32** %6, align 8
  %300 = load i32*, i32** %12, align 8
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %303 = load i8*, i8** %17, align 8
  %304 = load i8*, i8** %8, align 8
  %305 = load i32, i32* %9, align 4
  %306 = call i32 @add_flow_word(i32* %299, i32* %300, %struct.TYPE_17__* %301, %struct.TYPE_17__* %302, i8* %303, i8* %304, i32 %305)
  br label %307

307:                                              ; preds = %298, %294
  %308 = load %struct.genstate*, %struct.genstate** %10, align 8
  %309 = getelementptr inbounds %struct.genstate, %struct.genstate* %308, i32 0, i32 0
  store i32 0, i32* %309, align 8
  br label %310

310:                                              ; preds = %307, %163
  br label %311

311:                                              ; preds = %310, %92
  br label %57

312:                                              ; preds = %57
  ret void
}

declare dso_local i32 @add_flow_break(i32*, i32*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i64 @iswhite(i8 signext) #1

declare dso_local i32 @add_flow_space(i32*, i32*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @add_flow_word(i32*, i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i8*, i8*, i32) #1

declare dso_local i32 @flush_space(i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, %struct.genstate*) #1

declare dso_local i32 @fz_chartorune(i32*, i8*) #1

declare dso_local i32 @add_flow_shyphen(i32*, i32*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ucdn_get_resolved_linebreak_class(i32) #1

declare dso_local i32 @add_flow_sbreak(i32*, i32*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
