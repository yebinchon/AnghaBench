; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cursor.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i32, i64, i32, %struct.tty_term* }
%struct.tty_term = type { i32 }

@TTYC_HOME = common dso_local global i32 0, align 4
@TTYC_CUB1 = common dso_local global i32 0, align 4
@TTYC_CUF1 = common dso_local global i32 0, align 4
@TTYC_HPA = common dso_local global i32 0, align 4
@TTYC_CUB = common dso_local global i32 0, align 4
@TTYC_CUF = common dso_local global i32 0, align 4
@TTYC_CUU1 = common dso_local global i32 0, align 4
@TTYC_CUD1 = common dso_local global i32 0, align 4
@TTYC_VPA = common dso_local global i32 0, align 4
@TTYC_CUU = common dso_local global i32 0, align 4
@TTYC_CUD = common dso_local global i32 0, align 4
@TTYC_CUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cursor(%struct.tty* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_term*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tty*, %struct.tty** %4, align 8
  %12 = getelementptr inbounds %struct.tty, %struct.tty* %11, i32 0, i32 6
  %13 = load %struct.tty_term*, %struct.tty_term** %12, align 8
  store %struct.tty_term* %13, %struct.tty_term** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.tty*, %struct.tty** %4, align 8
  %16 = getelementptr inbounds %struct.tty, %struct.tty* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.tty*, %struct.tty** %4, align 8
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.tty*, %struct.tty** %4, align 8
  %27 = getelementptr inbounds %struct.tty, %struct.tty* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.tty*, %struct.tty** %4, align 8
  %30 = getelementptr inbounds %struct.tty, %struct.tty* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %333

40:                                               ; preds = %35, %25
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.tty*, %struct.tty** %4, align 8
  %43 = getelementptr inbounds %struct.tty, %struct.tty* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = icmp sgt i32 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %320

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.tty_term*, %struct.tty_term** %7, align 8
  %56 = load i32, i32* @TTYC_HOME, align 4
  %57 = call i64 @tty_term_has(%struct.tty_term* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.tty*, %struct.tty** %4, align 8
  %61 = load i32, i32* @TTYC_HOME, align 4
  %62 = call i32 @tty_putcode(%struct.tty* %60, i32 %61)
  br label %326

63:                                               ; preds = %54, %51, %48
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.tty*, %struct.tty** %4, align 8
  %74 = getelementptr inbounds %struct.tty, %struct.tty* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  %78 = load %struct.tty*, %struct.tty** %4, align 8
  %79 = call i32 @tty_use_margin(%struct.tty* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.tty*, %struct.tty** %4, align 8
  %83 = getelementptr inbounds %struct.tty, %struct.tty* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81, %77
  %87 = load %struct.tty*, %struct.tty** %4, align 8
  %88 = call i32 @tty_putc(%struct.tty* %87, i8 signext 13)
  %89 = load %struct.tty*, %struct.tty** %4, align 8
  %90 = call i32 @tty_putc(%struct.tty* %89, i8 signext 10)
  br label %326

91:                                               ; preds = %81, %71, %66, %63
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %202

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load %struct.tty*, %struct.tty** %4, align 8
  %100 = call i32 @tty_use_margin(%struct.tty* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.tty*, %struct.tty** %4, align 8
  %104 = getelementptr inbounds %struct.tty, %struct.tty* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %98
  %108 = load %struct.tty*, %struct.tty** %4, align 8
  %109 = call i32 @tty_putc(%struct.tty* %108, i8 signext 13)
  br label %326

110:                                              ; preds = %102, %95
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %8, align 4
  %113 = sub nsw i32 %112, 1
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %struct.tty_term*, %struct.tty_term** %7, align 8
  %117 = load i32, i32* @TTYC_CUB1, align 4
  %118 = call i64 @tty_term_has(%struct.tty_term* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.tty*, %struct.tty** %4, align 8
  %122 = load i32, i32* @TTYC_CUB1, align 4
  %123 = call i32 @tty_putcode(%struct.tty* %121, i32 %122)
  br label %326

124:                                              ; preds = %115, %110
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = load %struct.tty_term*, %struct.tty_term** %7, align 8
  %131 = load i32, i32* @TTYC_CUF1, align 4
  %132 = call i64 @tty_term_has(%struct.tty_term* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.tty*, %struct.tty** %4, align 8
  %136 = load i32, i32* @TTYC_CUF1, align 4
  %137 = call i32 @tty_putcode(%struct.tty* %135, i32 %136)
  br label %326

138:                                              ; preds = %129, %124
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %5, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i64 @abs(i32 %142)
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* %5, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %138
  %148 = load %struct.tty_term*, %struct.tty_term** %7, align 8
  %149 = load i32, i32* @TTYC_HPA, align 4
  %150 = call i64 @tty_term_has(%struct.tty_term* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.tty*, %struct.tty** %4, align 8
  %154 = load i32, i32* @TTYC_HPA, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @tty_putcode1(%struct.tty* %153, i32 %154, i32 %155)
  br label %326

157:                                              ; preds = %147, %138
  %158 = load i32, i32* %10, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %185

160:                                              ; preds = %157
  %161 = load %struct.tty_term*, %struct.tty_term** %7, align 8
  %162 = load i32, i32* @TTYC_CUB, align 4
  %163 = call i64 @tty_term_has(%struct.tty_term* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %185

165:                                              ; preds = %160
  %166 = load i32, i32* %10, align 4
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %168, label %180

168:                                              ; preds = %165
  %169 = load %struct.tty_term*, %struct.tty_term** %7, align 8
  %170 = load i32, i32* @TTYC_CUB1, align 4
  %171 = call i64 @tty_term_has(%struct.tty_term* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %168
  %174 = load %struct.tty*, %struct.tty** %4, align 8
  %175 = load i32, i32* @TTYC_CUB1, align 4
  %176 = call i32 @tty_putcode(%struct.tty* %174, i32 %175)
  %177 = load %struct.tty*, %struct.tty** %4, align 8
  %178 = load i32, i32* @TTYC_CUB1, align 4
  %179 = call i32 @tty_putcode(%struct.tty* %177, i32 %178)
  br label %326

180:                                              ; preds = %168, %165
  %181 = load %struct.tty*, %struct.tty** %4, align 8
  %182 = load i32, i32* @TTYC_CUB, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @tty_putcode1(%struct.tty* %181, i32 %182, i32 %183)
  br label %326

185:                                              ; preds = %160, %157
  %186 = load i32, i32* %10, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %185
  %189 = load %struct.tty_term*, %struct.tty_term** %7, align 8
  %190 = load i32, i32* @TTYC_CUF, align 4
  %191 = call i64 @tty_term_has(%struct.tty_term* %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load %struct.tty*, %struct.tty** %4, align 8
  %195 = load i32, i32* @TTYC_CUF, align 4
  %196 = load i32, i32* %10, align 4
  %197 = sub nsw i32 0, %196
  %198 = call i32 @tty_putcode1(%struct.tty* %194, i32 %195, i32 %197)
  br label %326

199:                                              ; preds = %188, %185
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  br label %319

202:                                              ; preds = %91
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %318

206:                                              ; preds = %202
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.tty*, %struct.tty** %4, align 8
  %209 = getelementptr inbounds %struct.tty, %struct.tty* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %207, %210
  br i1 %211, label %212, label %226

212:                                              ; preds = %206
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %9, align 4
  %215 = sub nsw i32 %214, 1
  %216 = icmp eq i32 %213, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %212
  %218 = load %struct.tty_term*, %struct.tty_term** %7, align 8
  %219 = load i32, i32* @TTYC_CUU1, align 4
  %220 = call i64 @tty_term_has(%struct.tty_term* %218, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load %struct.tty*, %struct.tty** %4, align 8
  %224 = load i32, i32* @TTYC_CUU1, align 4
  %225 = call i32 @tty_putcode(%struct.tty* %223, i32 %224)
  br label %326

226:                                              ; preds = %217, %212, %206
  %227 = load i32, i32* %9, align 4
  %228 = load %struct.tty*, %struct.tty** %4, align 8
  %229 = getelementptr inbounds %struct.tty, %struct.tty* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %227, %230
  br i1 %231, label %232, label %246

232:                                              ; preds = %226
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* %9, align 4
  %235 = add nsw i32 %234, 1
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %246

237:                                              ; preds = %232
  %238 = load %struct.tty_term*, %struct.tty_term** %7, align 8
  %239 = load i32, i32* @TTYC_CUD1, align 4
  %240 = call i64 @tty_term_has(%struct.tty_term* %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = load %struct.tty*, %struct.tty** %4, align 8
  %244 = load i32, i32* @TTYC_CUD1, align 4
  %245 = call i32 @tty_putcode(%struct.tty* %243, i32 %244)
  br label %326

246:                                              ; preds = %237, %232, %226
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %6, align 4
  %249 = sub nsw i32 %247, %248
  store i32 %249, i32* %10, align 4
  %250 = load i32, i32* %10, align 4
  %251 = call i64 @abs(i32 %250)
  %252 = trunc i64 %251 to i32
  %253 = load i32, i32* %6, align 4
  %254 = icmp sgt i32 %252, %253
  br i1 %254, label %277, label %255

255:                                              ; preds = %246
  %256 = load i32, i32* %10, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %255
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %10, align 4
  %261 = sub nsw i32 %259, %260
  %262 = load %struct.tty*, %struct.tty** %4, align 8
  %263 = getelementptr inbounds %struct.tty, %struct.tty* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = icmp sgt i32 %261, %264
  br i1 %265, label %277, label %266

266:                                              ; preds = %258, %255
  %267 = load i32, i32* %10, align 4
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %269, label %288

269:                                              ; preds = %266
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* %10, align 4
  %272 = sub nsw i32 %270, %271
  %273 = load %struct.tty*, %struct.tty** %4, align 8
  %274 = getelementptr inbounds %struct.tty, %struct.tty* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = icmp slt i32 %272, %275
  br i1 %276, label %277, label %288

277:                                              ; preds = %269, %258, %246
  %278 = load %struct.tty_term*, %struct.tty_term** %7, align 8
  %279 = load i32, i32* @TTYC_VPA, align 4
  %280 = call i64 @tty_term_has(%struct.tty_term* %278, i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load %struct.tty*, %struct.tty** %4, align 8
  %284 = load i32, i32* @TTYC_VPA, align 4
  %285 = load i32, i32* %6, align 4
  %286 = call i32 @tty_putcode1(%struct.tty* %283, i32 %284, i32 %285)
  br label %326

287:                                              ; preds = %277
  br label %317

288:                                              ; preds = %269, %266
  %289 = load i32, i32* %10, align 4
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %301

291:                                              ; preds = %288
  %292 = load %struct.tty_term*, %struct.tty_term** %7, align 8
  %293 = load i32, i32* @TTYC_CUU, align 4
  %294 = call i64 @tty_term_has(%struct.tty_term* %292, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  %297 = load %struct.tty*, %struct.tty** %4, align 8
  %298 = load i32, i32* @TTYC_CUU, align 4
  %299 = load i32, i32* %10, align 4
  %300 = call i32 @tty_putcode1(%struct.tty* %297, i32 %298, i32 %299)
  br label %326

301:                                              ; preds = %291, %288
  %302 = load i32, i32* %10, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %315

304:                                              ; preds = %301
  %305 = load %struct.tty_term*, %struct.tty_term** %7, align 8
  %306 = load i32, i32* @TTYC_CUD, align 4
  %307 = call i64 @tty_term_has(%struct.tty_term* %305, i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %304
  %310 = load %struct.tty*, %struct.tty** %4, align 8
  %311 = load i32, i32* @TTYC_CUD, align 4
  %312 = load i32, i32* %10, align 4
  %313 = sub nsw i32 0, %312
  %314 = call i32 @tty_putcode1(%struct.tty* %310, i32 %311, i32 %313)
  br label %326

315:                                              ; preds = %304, %301
  br label %316

316:                                              ; preds = %315
  br label %317

317:                                              ; preds = %316, %287
  br label %318

318:                                              ; preds = %317, %202
  br label %319

319:                                              ; preds = %318, %201
  br label %320

320:                                              ; preds = %319, %47
  %321 = load %struct.tty*, %struct.tty** %4, align 8
  %322 = load i32, i32* @TTYC_CUP, align 4
  %323 = load i32, i32* %6, align 4
  %324 = load i32, i32* %5, align 4
  %325 = call i32 @tty_putcode2(%struct.tty* %321, i32 %322, i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %320, %309, %296, %282, %242, %222, %193, %180, %173, %152, %134, %120, %107, %86, %59
  %327 = load i32, i32* %5, align 4
  %328 = load %struct.tty*, %struct.tty** %4, align 8
  %329 = getelementptr inbounds %struct.tty, %struct.tty* %328, i32 0, i32 1
  store i32 %327, i32* %329, align 4
  %330 = load i32, i32* %6, align 4
  %331 = load %struct.tty*, %struct.tty** %4, align 8
  %332 = getelementptr inbounds %struct.tty, %struct.tty* %331, i32 0, i32 2
  store i32 %330, i32* %332, align 8
  br label %333

333:                                              ; preds = %326, %39
  ret void
}

declare dso_local i64 @tty_term_has(%struct.tty_term*, i32) #1

declare dso_local i32 @tty_putcode(%struct.tty*, i32) #1

declare dso_local i32 @tty_use_margin(%struct.tty*) #1

declare dso_local i32 @tty_putc(%struct.tty*, i8 signext) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @tty_putcode1(%struct.tty*, i32, i32) #1

declare dso_local i32 @tty_putcode2(%struct.tty*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
