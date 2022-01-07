; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_parse.c_minecraft_chunk_parse.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_parse.c_minecraft_chunk_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i32, i32, i32, i32**, i32**, i32**, i32**, %struct.TYPE_14__*** }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [6 x i8] c"Level\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"xPos\00", align 1
@TAG_Int = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"zPos\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Sections\00", align 1
@TAG_Compound = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@TAG_Byte = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"BlockLight\00", align 1
@TAG_Byte_Array = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"Blocks\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"SkyLight\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"HeightMap\00", align 1
@TAG_Int_Array = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i8*, i64)* @minecraft_chunk_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @minecraft_chunk_parse(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %8, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = call i32 @nbt_begin_compound(%struct.TYPE_16__* %41)
  br label %43

43:                                               ; preds = %382, %2
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = call i8* @nbt_peek(%struct.TYPE_16__* %44)
  store i8* %45, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %383

47:                                               ; preds = %43
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %379, label %51

51:                                               ; preds = %47
  %52 = call %struct.TYPE_15__* @malloc(i32 64)
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %6, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 8
  %55 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %55, i64 15
  %57 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %57, i64 15
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 255
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = call i32 @nbt_begin_compound(%struct.TYPE_16__* %64)
  br label %66

66:                                               ; preds = %375, %51
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = call i8* @nbt_peek(%struct.TYPE_16__* %67)
  store i8* %68, i8** %5, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %376

70:                                               ; preds = %66
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %76 = load i32, i32* @TAG_Int, align 4
  %77 = call i32* (%struct.TYPE_16__*, i32, ...) @nbt_get(%struct.TYPE_16__* %75, i32 %76, i32 0)
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %375

81:                                               ; preds = %70
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = load i32, i32* @TAG_Int, align 4
  %88 = call i32* (%struct.TYPE_16__*, i32, ...) @nbt_get(%struct.TYPE_16__* %86, i32 %87, i32 0)
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  br label %374

92:                                               ; preds = %81
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %357, label %96

96:                                               ; preds = %92
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %98 = load i32, i32* @TAG_Compound, align 4
  %99 = call i32 @nbt_begin_list(%struct.TYPE_16__* %97, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %104 = call i32 @nbt_skip(%struct.TYPE_16__* %103)
  store i32 -1, i32* %10, align 4
  br label %105

105:                                              ; preds = %102, %96
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %353, %105
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %356

110:                                              ; preds = %106
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %112 = call i32 @nbt_begin_compound_in_list(%struct.TYPE_16__* %111)
  br label %113

113:                                              ; preds = %178, %110
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = call i8* @nbt_peek(%struct.TYPE_16__* %114)
  store i8* %115, i8** %5, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %179

117:                                              ; preds = %113
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %123 = load i32, i32* @TAG_Byte, align 4
  %124 = call i32* (%struct.TYPE_16__*, i32, ...) @nbt_get(%struct.TYPE_16__* %122, i32 %123, i32 0)
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %12, align 4
  br label %178

126:                                              ; preds = %117
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %132 = load i32, i32* @TAG_Byte_Array, align 4
  %133 = call i32* (%struct.TYPE_16__*, i32, ...) @nbt_get(%struct.TYPE_16__* %131, i32 %132, i32* %13)
  store i32* %133, i32** %14, align 8
  %134 = load i32, i32* %13, align 4
  %135 = icmp eq i32 %134, 2048
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  br label %177

138:                                              ; preds = %126
  %139 = load i8*, i8** %5, align 8
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %138
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %144 = load i32, i32* @TAG_Byte_Array, align 4
  %145 = call i32* (%struct.TYPE_16__*, i32, ...) @nbt_get(%struct.TYPE_16__* %143, i32 %144, i32* %13)
  store i32* %145, i32** %15, align 8
  %146 = load i32, i32* %13, align 4
  %147 = icmp eq i32 %146, 4096
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  br label %176

150:                                              ; preds = %138
  %151 = load i8*, i8** %5, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %150
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %156 = load i32, i32* @TAG_Byte_Array, align 4
  %157 = call i32* (%struct.TYPE_16__*, i32, ...) @nbt_get(%struct.TYPE_16__* %155, i32 %156, i32* %13)
  store i32* %157, i32** %16, align 8
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, 2048
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  br label %175

162:                                              ; preds = %150
  %163 = load i8*, i8** %5, align 8
  %164 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %162
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %168 = load i32, i32* @TAG_Byte_Array, align 4
  %169 = call i32* (%struct.TYPE_16__*, i32, ...) @nbt_get(%struct.TYPE_16__* %167, i32 %168, i32* %13)
  store i32* %169, i32** %17, align 8
  %170 = load i32, i32* %13, align 4
  %171 = icmp eq i32 %170, 2048
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  br label %174

174:                                              ; preds = %166, %162
  br label %175

175:                                              ; preds = %174, %154
  br label %176

176:                                              ; preds = %175, %142
  br label %177

177:                                              ; preds = %176, %130
  br label %178

178:                                              ; preds = %177, %121
  br label %113

179:                                              ; preds = %113
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %181 = call i32 @nbt_end_compound(%struct.TYPE_16__* %180)
  %182 = load i32, i32* %12, align 4
  %183 = icmp slt i32 %182, 16
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  br label %186

186:                                              ; preds = %226, %179
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = mul nsw i32 %190, 16
  %192 = icmp slt i32 %189, %191
  br i1 %192, label %193, label %231

193:                                              ; preds = %186
  store i32 0, i32* %18, align 4
  br label %194

194:                                              ; preds = %223, %193
  %195 = load i32, i32* %18, align 4
  %196 = icmp slt i32 %195, 16
  br i1 %196, label %197, label %226

197:                                              ; preds = %194
  store i32 0, i32* %19, align 4
  br label %198

198:                                              ; preds = %219, %197
  %199 = load i32, i32* %19, align 4
  %200 = icmp slt i32 %199, 16
  br i1 %200, label %201, label %222

201:                                              ; preds = %198
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 8
  %204 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %203, align 8
  %205 = load i32, i32* %19, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %204, i64 %206
  %208 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %207, align 8
  %209 = load i32, i32* %18, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %208, i64 %210
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %211, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  store i32 0, i32* %218, align 4
  br label %219

219:                                              ; preds = %201
  %220 = load i32, i32* %19, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %19, align 4
  br label %198

222:                                              ; preds = %198
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %18, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %18, align 4
  br label %194

226:                                              ; preds = %194
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 8
  br label %186

231:                                              ; preds = %186
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %21, align 4
  br label %232

232:                                              ; preds = %345, %231
  %233 = load i32, i32* %21, align 4
  %234 = icmp slt i32 %233, 16
  br i1 %234, label %235, label %348

235:                                              ; preds = %232
  store i32 0, i32* %22, align 4
  br label %236

236:                                              ; preds = %341, %235
  %237 = load i32, i32* %22, align 4
  %238 = icmp slt i32 %237, 16
  br i1 %238, label %239, label %344

239:                                              ; preds = %236
  store i32 0, i32* %20, align 4
  br label %240

240:                                              ; preds = %337, %239
  %241 = load i32, i32* %20, align 4
  %242 = icmp slt i32 %241, 16
  br i1 %242, label %243, label %340

243:                                              ; preds = %240
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 8
  %246 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %245, align 8
  %247 = load i32, i32* %22, align 4
  %248 = sub nsw i32 15, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %246, i64 %249
  %251 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %250, align 8
  %252 = load i32, i32* %20, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %251, i64 %253
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  %256 = load i32, i32* %21, align 4
  %257 = load i32, i32* %12, align 4
  %258 = mul nsw i32 %257, 16
  %259 = add nsw i32 %256, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i64 %260
  store %struct.TYPE_14__* %261, %struct.TYPE_14__** %25, align 8
  %262 = load i32*, i32** %15, align 8
  %263 = load i32, i32* %24, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i64 0
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 0
  store i32 %266, i32* %269, align 4
  %270 = load i32*, i32** %14, align 8
  %271 = load i32, i32* %23, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = and i32 %274, 15
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i64 0
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 1
  store i32 %275, i32* %278, align 4
  %279 = load i32*, i32** %16, align 8
  %280 = load i32, i32* %23, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = and i32 %283, 15
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i64 0
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 2
  store i32 %284, i32* %287, align 4
  %288 = load i32*, i32** %17, align 8
  %289 = load i32, i32* %23, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, 15
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i64 0
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 3
  store i32 %293, i32* %296, align 4
  %297 = load i32*, i32** %15, align 8
  %298 = load i32, i32* %24, align 4
  %299 = add nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i64 256
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  store i32 %302, i32* %305, align 4
  %306 = load i32*, i32** %14, align 8
  %307 = load i32, i32* %23, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = ashr i32 %310, 4
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i64 256
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 1
  store i32 %311, i32* %314, align 4
  %315 = load i32*, i32** %16, align 8
  %316 = load i32, i32* %23, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = ashr i32 %319, 4
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i64 256
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 2
  store i32 %320, i32* %323, align 4
  %324 = load i32*, i32** %17, align 8
  %325 = load i32, i32* %23, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = ashr i32 %328, 4
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i64 256
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 3
  store i32 %329, i32* %332, align 4
  %333 = load i32, i32* %23, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %23, align 4
  %335 = load i32, i32* %24, align 4
  %336 = add nsw i32 %335, 2
  store i32 %336, i32* %24, align 4
  br label %337

337:                                              ; preds = %243
  %338 = load i32, i32* %20, align 4
  %339 = add nsw i32 %338, 2
  store i32 %339, i32* %20, align 4
  br label %240

340:                                              ; preds = %240
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %22, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %22, align 4
  br label %236

344:                                              ; preds = %236
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %21, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %21, align 4
  br label %232

348:                                              ; preds = %232
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = add nsw i32 %351, 16
  store i32 %352, i32* %350, align 8
  br label %353

353:                                              ; preds = %348
  %354 = load i32, i32* %11, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %11, align 4
  br label %106

356:                                              ; preds = %106
  br label %373

357:                                              ; preds = %92
  %358 = load i8*, i8** %5, align 8
  %359 = call i32 @strcmp(i8* %358, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %369, label %361

361:                                              ; preds = %357
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %363 = load i32, i32* @TAG_Int_Array, align 4
  %364 = call i32* (%struct.TYPE_16__*, i32, ...) @nbt_get(%struct.TYPE_16__* %362, i32 %363, i64* %4)
  store i32* %364, i32** %9, align 8
  %365 = load i64, i64* %4, align 8
  %366 = icmp eq i64 %365, 256
  %367 = zext i1 %366 to i32
  %368 = call i32 @assert(i32 %367)
  br label %372

369:                                              ; preds = %357
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %371 = call i32 @nbt_skip(%struct.TYPE_16__* %370)
  br label %372

372:                                              ; preds = %369, %361
  br label %373

373:                                              ; preds = %372, %356
  br label %374

374:                                              ; preds = %373, %85
  br label %375

375:                                              ; preds = %374, %74
  br label %66

376:                                              ; preds = %66
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %378 = call i32 @nbt_end_compound(%struct.TYPE_16__* %377)
  br label %382

379:                                              ; preds = %47
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %381 = call i32 @nbt_skip(%struct.TYPE_16__* %380)
  br label %382

382:                                              ; preds = %379, %376
  br label %43

383:                                              ; preds = %43
  %384 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %385 = call i32 @nbt_end_compound(%struct.TYPE_16__* %384)
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 2
  %388 = load i8*, i8** %387, align 8
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 1
  %391 = load i8*, i8** %390, align 8
  %392 = icmp eq i8* %388, %391
  %393 = zext i1 %392 to i32
  %394 = call i32 @assert(i32 %393)
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  ret %struct.TYPE_15__* %395
}

declare dso_local i32 @nbt_begin_compound(%struct.TYPE_16__*) #1

declare dso_local i8* @nbt_peek(%struct.TYPE_16__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @malloc(i32) #1

declare dso_local i32* @nbt_get(%struct.TYPE_16__*, i32, ...) #1

declare dso_local i32 @nbt_begin_list(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @nbt_skip(%struct.TYPE_16__*) #1

declare dso_local i32 @nbt_begin_compound_in_list(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbt_end_compound(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
