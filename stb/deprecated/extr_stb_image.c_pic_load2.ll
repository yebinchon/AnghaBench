; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_pic_load2.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_pic_load2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"bad format\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"too many packets\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"bad file\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"file too short (reading packets)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"packet isn't 8bpp\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"packet has bad compression type\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"file too short (pure read count)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"file too short (mixed read count)\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"scanline overrun\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32*, i32*)* @pic_load2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pic_load2(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [10 x %struct.TYPE_2__], align 16
  %17 = alloca %struct.TYPE_2__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_2__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [4 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [4 x i32], align 16
  %30 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %77, %5
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 10
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32* @epuc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32* %36, i32** %6, align 8
  br label %286

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds [10 x %struct.TYPE_2__], [10 x %struct.TYPE_2__]* %16, i64 0, i64 %40
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %17, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @get8(i32* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i8* @get8u(i32* %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i8* @get8u(i32* %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i8* @get8u(i32* %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @at_eof(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %37
  %68 = call i32* @epuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32* %68, i32** %6, align 8
  br label %286

69:                                               ; preds = %37
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 8
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32* @epuc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32* %75, i32** %6, align 8
  br label %286

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %31, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, 16
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 4, i32 3
  %86 = load i32*, i32** %10, align 8
  store i32 %85, i32* %86, align 4
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %281, %80
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %284

91:                                               ; preds = %87
  store i32 0, i32* %18, align 4
  br label %92

92:                                               ; preds = %277, %91
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %280

96:                                               ; preds = %92
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [10 x %struct.TYPE_2__], [10 x %struct.TYPE_2__]* %16, i64 0, i64 %98
  store %struct.TYPE_2__* %99, %struct.TYPE_2__** %19, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %101, %102
  %104 = mul nsw i32 %103, 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  store i32* %106, i32** %20, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %110 [
    i32 0, label %112
    i32 1, label %133
    i32 2, label %184
  ]

110:                                              ; preds = %96
  %111 = call i32* @epuc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32* %111, i32** %6, align 8
  br label %286

112:                                              ; preds = %96
  store i32 0, i32* %21, align 4
  br label %113

113:                                              ; preds = %127, %112
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %113
  %118 = load i32*, i32** %7, align 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %20, align 8
  %123 = call i32 @pic_readval(i32* %118, i32 %121, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %117
  store i32* null, i32** %6, align 8
  br label %286

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %21, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %21, align 4
  %130 = load i32*, i32** %20, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  store i32* %131, i32** %20, align 8
  br label %113

132:                                              ; preds = %113
  br label %276

133:                                              ; preds = %96
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %22, align 4
  br label %135

135:                                              ; preds = %179, %133
  %136 = load i32, i32* %22, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %183

138:                                              ; preds = %135
  %139 = load i32*, i32** %7, align 8
  %140 = call i8* @get8u(i32* %139)
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %24, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = call i64 @at_eof(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = call i32* @epuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32* %146, i32** %6, align 8
  br label %286

147:                                              ; preds = %138
  %148 = load i32, i32* %24, align 4
  %149 = load i32, i32* %22, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* %22, align 4
  store i32 %152, i32* %24, align 4
  br label %153

153:                                              ; preds = %151, %147
  %154 = load i32*, i32** %7, align 8
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %159 = call i32 @pic_readval(i32* %154, i32 %157, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %153
  store i32* null, i32** %6, align 8
  br label %286

162:                                              ; preds = %153
  store i32 0, i32* %23, align 4
  br label %163

163:                                              ; preds = %174, %162
  %164 = load i32, i32* %23, align 4
  %165 = load i32, i32* %24, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %20, align 8
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %173 = call i32 @pic_copyval(i32 %170, i32* %171, i32* %172)
  br label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %23, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %23, align 4
  %177 = load i32*, i32** %20, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 4
  store i32* %178, i32** %20, align 8
  br label %163

179:                                              ; preds = %163
  %180 = load i32, i32* %24, align 4
  %181 = load i32, i32* %22, align 4
  %182 = sub nsw i32 %181, %180
  store i32 %182, i32* %22, align 4
  br label %135

183:                                              ; preds = %135
  br label %276

184:                                              ; preds = %96
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %26, align 4
  br label %186

186:                                              ; preds = %271, %184
  %187 = load i32, i32* %26, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %275

189:                                              ; preds = %186
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @get8(i32* %190)
  store i32 %191, i32* %27, align 4
  %192 = load i32*, i32** %7, align 8
  %193 = call i64 @at_eof(i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = call i32* @epuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  store i32* %196, i32** %6, align 8
  br label %286

197:                                              ; preds = %189
  %198 = load i32, i32* %27, align 4
  %199 = icmp sge i32 %198, 128
  br i1 %199, label %200, label %242

200:                                              ; preds = %197
  %201 = load i32, i32* %27, align 4
  %202 = icmp eq i32 %201, 128
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32*, i32** %7, align 8
  %205 = call i32 @get16(i32* %204)
  store i32 %205, i32* %27, align 4
  br label %209

206:                                              ; preds = %200
  %207 = load i32, i32* %27, align 4
  %208 = sub nsw i32 %207, 127
  store i32 %208, i32* %27, align 4
  br label %209

209:                                              ; preds = %206, %203
  %210 = load i32, i32* %27, align 4
  %211 = load i32, i32* %26, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = call i32* @epuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32* %214, i32** %6, align 8
  br label %286

215:                                              ; preds = %209
  %216 = load i32*, i32** %7, align 8
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %221 = call i32 @pic_readval(i32* %216, i32 %219, i32* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %215
  store i32* null, i32** %6, align 8
  br label %286

224:                                              ; preds = %215
  store i32 0, i32* %30, align 4
  br label %225

225:                                              ; preds = %236, %224
  %226 = load i32, i32* %30, align 4
  %227 = load i32, i32* %27, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %225
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %20, align 8
  %234 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %235 = call i32 @pic_copyval(i32 %232, i32* %233, i32* %234)
  br label %236

236:                                              ; preds = %229
  %237 = load i32, i32* %30, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %30, align 4
  %239 = load i32*, i32** %20, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 4
  store i32* %240, i32** %20, align 8
  br label %225

241:                                              ; preds = %225
  br label %271

242:                                              ; preds = %197
  %243 = load i32, i32* %27, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %27, align 4
  %245 = load i32, i32* %27, align 4
  %246 = load i32, i32* %26, align 4
  %247 = icmp sgt i32 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %242
  %249 = call i32* @epuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32* %249, i32** %6, align 8
  br label %286

250:                                              ; preds = %242
  store i32 0, i32* %28, align 4
  br label %251

251:                                              ; preds = %265, %250
  %252 = load i32, i32* %28, align 4
  %253 = load i32, i32* %27, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %270

255:                                              ; preds = %251
  %256 = load i32*, i32** %7, align 8
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** %20, align 8
  %261 = call i32 @pic_readval(i32* %256, i32 %259, i32* %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %255
  store i32* null, i32** %6, align 8
  br label %286

264:                                              ; preds = %255
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %28, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %28, align 4
  %268 = load i32*, i32** %20, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 4
  store i32* %269, i32** %20, align 8
  br label %251

270:                                              ; preds = %251
  br label %271

271:                                              ; preds = %270, %241
  %272 = load i32, i32* %27, align 4
  %273 = load i32, i32* %26, align 4
  %274 = sub nsw i32 %273, %272
  store i32 %274, i32* %26, align 4
  br label %186

275:                                              ; preds = %186
  br label %276

276:                                              ; preds = %275, %183, %132
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %18, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %18, align 4
  br label %92

280:                                              ; preds = %92
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %14, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %14, align 4
  br label %87

284:                                              ; preds = %87
  %285 = load i32*, i32** %11, align 8
  store i32* %285, i32** %6, align 8
  br label %286

286:                                              ; preds = %284, %263, %248, %223, %213, %195, %161, %145, %125, %110, %74, %67, %35
  %287 = load i32*, i32** %6, align 8
  ret i32* %287
}

declare dso_local i32* @epuc(i8*, i8*) #1

declare dso_local i32 @get8(i32*) #1

declare dso_local i8* @get8u(i32*) #1

declare dso_local i64 @at_eof(i32*) #1

declare dso_local i32 @pic_readval(i32*, i32, i32*) #1

declare dso_local i32 @pic_copyval(i32, i32*, i32*) #1

declare dso_local i32 @get16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
