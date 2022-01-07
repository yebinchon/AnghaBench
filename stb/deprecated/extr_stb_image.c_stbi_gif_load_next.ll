; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_gif_load_next.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_gif_load_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32*, i64, i32* }

@.str = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"bad Image Descriptor\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Corrupt GIF\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"missing color table\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"unknown code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_6__*, i32*, i32)* @stbi_gif_load_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stbi_gif_load_next(i32* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %11, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @stbi_gif_header(i32* %23, %struct.TYPE_6__* %24, i32* %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32* null, i32** %5, align 8
  br label %351

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 4, %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = call i64 @malloc(i32 %37)
  %39 = inttoptr i64 %38 to i32*
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 18
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 18
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %29
  %47 = call i32* @epuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %47, i32** %5, align 8
  br label %351

48:                                               ; preds = %29
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = call i32 @stbi_fill_gif_background(%struct.TYPE_6__* %49)
  br label %95

51:                                               ; preds = %4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 28
  %56 = ashr i32 %55, 2
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %94

58:                                               ; preds = %51
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 18
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %11, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 4, %64
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = call i64 @malloc(i32 %69)
  %71 = inttoptr i64 %70 to i32*
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 18
  store i32* %71, i32** %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 18
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %58
  %79 = call i32* @epuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %79, i32** %5, align 8
  br label %351

80:                                               ; preds = %58
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 18
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = mul nsw i32 %91, 4
  %93 = call i32 @memcpy(i32* %83, i32* %84, i32 %92)
  br label %94

94:                                               ; preds = %80, %51
  br label %95

95:                                               ; preds = %94, %48
  br label %96

96:                                               ; preds = %350, %95
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @get8(i32* %97)
  switch i32 %98, label %348 [
    i32 44, label %99
    i32 33, label %312
    i32 59, label %347
  ]

99:                                               ; preds = %96
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @get16le(i32* %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @get16le(i32* %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @get16le(i32* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @get16le(i32* %106)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %108, %109
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %110, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %99
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %116, %117
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %118, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %115, %99
  %124 = call i32* @epuc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %124, i32** %5, align 8
  br label %351

125:                                              ; preds = %115
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %128, 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %12, align 4
  %133 = mul nsw i32 %132, 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %136, %139
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = mul nsw i32 %146, 4
  %148 = add nsw i32 %145, %147
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %154, %157
  %159 = add nsw i32 %153, %158
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 7
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 8
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 9
  store i32 %169, i32* %171, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @get8(i32* %172)
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 10
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 10
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, 64
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %125
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 8, %184
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 11
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 12
  store i32 3, i32* %189, align 8
  br label %198

190:                                              ; preds = %125
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 11
  store i32 %193, i32* %195, align 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 12
  store i32 0, i32* %197, align 8
  br label %198

198:                                              ; preds = %190, %181
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 8
  %202 = and i32 %201, 128
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %233

204:                                              ; preds = %198
  %205 = load i32*, i32** %6, align 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 17
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, 7
  %213 = shl i32 2, %212
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, 1
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %204
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 13
  %222 = load i32, i32* %221, align 4
  br label %224

223:                                              ; preds = %204
  br label %224

224:                                              ; preds = %223, %219
  %225 = phi i32 [ %222, %219 ], [ -1, %223 ]
  %226 = call i32 @stbi_gif_parse_colortable(i32* %205, i64 %208, i32 %213, i32 %225)
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 17
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i32*
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 16
  store i32* %230, i32** %232, align 8
  br label %287

233:                                              ; preds = %198
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 14
  %236 = load i32, i32* %235, align 8
  %237 = and i32 %236, 128
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %284

239:                                              ; preds = %233
  store i32 0, i32* %10, align 4
  br label %240

240:                                              ; preds = %252, %239
  %241 = load i32, i32* %10, align 4
  %242 = icmp slt i32 %241, 256
  br i1 %242, label %243, label %255

243:                                              ; preds = %240
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 15
  %246 = load i32**, i32*** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32*, i32** %246, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 3
  store i32 255, i32* %251, align 4
  br label %252

252:                                              ; preds = %243
  %253 = load i32, i32* %10, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %10, align 4
  br label %240

255:                                              ; preds = %240
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 13
  %258 = load i32, i32* %257, align 4
  %259 = icmp sge i32 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %255
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = and i32 %263, 1
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %260
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 15
  %269 = load i32**, i32*** %268, align 8
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 13
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32*, i32** %269, i64 %273
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 3
  store i32 0, i32* %276, align 4
  br label %277

277:                                              ; preds = %266, %260, %255
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 15
  %280 = load i32**, i32*** %279, align 8
  %281 = bitcast i32** %280 to i32*
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 16
  store i32* %281, i32** %283, align 8
  br label %286

284:                                              ; preds = %233
  %285 = call i32* @epuc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %285, i32** %5, align 8
  br label %351

286:                                              ; preds = %277
  br label %287

287:                                              ; preds = %286, %224
  %288 = load i32*, i32** %6, align 8
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %290 = call i32* @stbi_process_gif_raster(i32* %288, %struct.TYPE_6__* %289)
  store i32* %290, i32** %16, align 8
  %291 = load i32*, i32** %16, align 8
  %292 = icmp eq i32* %291, null
  br i1 %292, label %293, label %294

293:                                              ; preds = %287
  store i32* null, i32** %5, align 8
  br label %351

294:                                              ; preds = %287
  %295 = load i32, i32* %9, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %310

297:                                              ; preds = %294
  %298 = load i32, i32* %9, align 4
  %299 = icmp ne i32 %298, 4
  br i1 %299, label %300, label %310

300:                                              ; preds = %297
  %301 = load i32*, i32** %16, align 8
  %302 = load i32, i32* %9, align 4
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32* @convert_format(i32* %301, i32 4, i32 %302, i32 %305, i32 %308)
  store i32* %309, i32** %16, align 8
  br label %310

310:                                              ; preds = %300, %297, %294
  %311 = load i32*, i32** %16, align 8
  store i32* %311, i32** %5, align 8
  br label %351

312:                                              ; preds = %96
  %313 = load i32*, i32** %6, align 8
  %314 = call i32 @get8(i32* %313)
  %315 = icmp eq i32 %314, 249
  br i1 %315, label %316, label %337

316:                                              ; preds = %312
  %317 = load i32*, i32** %6, align 8
  %318 = call i32 @get8(i32* %317)
  store i32 %318, i32* %17, align 4
  %319 = load i32, i32* %17, align 4
  %320 = icmp eq i32 %319, 4
  br i1 %320, label %321, label %332

321:                                              ; preds = %316
  %322 = load i32*, i32** %6, align 8
  %323 = call i32 @get8(i32* %322)
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 2
  store i32 %323, i32* %325, align 8
  %326 = load i32*, i32** %6, align 8
  %327 = call i32 @get16le(i32* %326)
  %328 = load i32*, i32** %6, align 8
  %329 = call i32 @get8(i32* %328)
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 13
  store i32 %329, i32* %331, align 4
  br label %336

332:                                              ; preds = %316
  %333 = load i32*, i32** %6, align 8
  %334 = load i32, i32* %17, align 4
  %335 = call i32 @skip(i32* %333, i32 %334)
  br label %350

336:                                              ; preds = %321
  br label %337

337:                                              ; preds = %336, %312
  br label %338

338:                                              ; preds = %342, %337
  %339 = load i32*, i32** %6, align 8
  %340 = call i32 @get8(i32* %339)
  store i32 %340, i32* %17, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %338
  %343 = load i32*, i32** %6, align 8
  %344 = load i32, i32* %17, align 4
  %345 = call i32 @skip(i32* %343, i32 %344)
  br label %338

346:                                              ; preds = %338
  br label %350

347:                                              ; preds = %96
  store i32* inttoptr (i64 1 to i32*), i32** %5, align 8
  br label %351

348:                                              ; preds = %96
  %349 = call i32* @epuc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %349, i32** %5, align 8
  br label %351

350:                                              ; preds = %346, %332
  br label %96

351:                                              ; preds = %348, %347, %310, %293, %284, %123, %78, %46, %28
  %352 = load i32*, i32** %5, align 8
  ret i32* %352
}

declare dso_local i32 @stbi_gif_header(i32*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @epuc(i8*, i8*) #1

declare dso_local i32 @stbi_fill_gif_background(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @get8(i32*) #1

declare dso_local i32 @get16le(i32*) #1

declare dso_local i32 @stbi_gif_parse_colortable(i32*, i64, i32, i32) #1

declare dso_local i32* @stbi_process_gif_raster(i32*, %struct.TYPE_6__*) #1

declare dso_local i32* @convert_format(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
