; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/type42/extr_t42parse.c_t42_parse_sfnts.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/type42/extr_t42parse.c_t42_parse_sfnts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8*, i64, i32 }

@.str = private unnamed_addr constant [51 x i8] c"t42_parse_sfnts: can't find begin of sfnts vector\0A\00", align 1
@Invalid_File_Format = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"t42_parse_sfnts: can't handle mixed binary and hex strings\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"t42_parse_sfnts: invalid data in sfnts array\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"t42_parse_sfnts: invalid string size\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"t42_parse_sfnts: too much binary data\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"t42_parse_sfnts: invalid string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*)* @t42_parse_sfnts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t42_parse_sfnts(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %5, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = call i32 @T1_Skip_Spaces(%struct.TYPE_12__* %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp uge i8* %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %45, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 91
  br i1 %50, label %51, label %55

51:                                               ; preds = %42, %2
  %52 = call i32 @FT_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @Invalid_File_Format, align 4
  %54 = call i64 @FT_THROW(i32 %53)
  store i64 %54, i64* %9, align 8
  br label %418

55:                                               ; preds = %42
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = call i32 @T1_Skip_Spaces(%struct.TYPE_12__* %56)
  store i32 130, i32* %18, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %11, align 8
  br label %58

58:                                               ; preds = %412, %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %415

65:                                               ; preds = %58
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 93
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %77, align 8
  br label %423

80:                                               ; preds = %65
  %81 = load i8*, i8** %7, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 60
  br i1 %84, label %85, label %141

85:                                               ; preds = %80
  %86 = load i8*, i8** %16, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = call i32 @FT_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @Invalid_File_Format, align 4
  %94 = call i64 @FT_THROW(i32 %93)
  store i64 %94, i64* %9, align 8
  br label %418

95:                                               ; preds = %88, %85
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = call i32 @T1_Skip_PS_Token(%struct.TYPE_12__* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %423

104:                                              ; preds = %95
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sub nsw i64 %112, 2
  %114 = add nsw i64 %113, 1
  %115 = sdiv i64 %114, 2
  store i64 %115, i64* %13, align 8
  %116 = load i64, i64* %13, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %104
  %119 = call i32 @FT_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @Invalid_File_Format, align 4
  %121 = call i64 @FT_THROW(i32 %120)
  store i64 %121, i64* %9, align 8
  br label %418

122:                                              ; preds = %104
  %123 = load i8*, i8** %16, align 8
  %124 = load i64, i64* %14, align 8
  %125 = trunc i64 %124 to i32
  %126 = load i64, i64* %13, align 8
  %127 = call i64 @FT_REALLOC(i8* %123, i32 %125, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %418

130:                                              ; preds = %122
  store i32 1, i32* %17, align 4
  %131 = load i8*, i8** %7, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  store i8* %131, i8** %134, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = load i64, i64* %13, align 8
  %138 = call i32 @T1_ToBytes(%struct.TYPE_12__* %135, i8* %136, i64 %137, i64* %15, i32 1)
  %139 = load i64, i64* %13, align 8
  store i64 %139, i64* %14, align 8
  %140 = load i64, i64* %15, align 8
  store i64 %140, i64* %13, align 8
  br label %203

141:                                              ; preds = %80
  %142 = load i8*, i8** %7, align 8
  %143 = load i8, i8* %142, align 1
  %144 = call i64 @ft_isdigit(i8 signext %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %202

146:                                              ; preds = %141
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = call i32 @FT_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %151 = load i32, i32* @Invalid_File_Format, align 4
  %152 = call i64 @FT_THROW(i32 %151)
  store i64 %152, i64* %9, align 8
  br label %418

153:                                              ; preds = %146
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %155 = call i64 @T1_ToInt(%struct.TYPE_12__* %154)
  store i64 %155, i64* %20, align 8
  %156 = load i64, i64* %20, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = call i32 @FT_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32, i32* @Invalid_File_Format, align 4
  %161 = call i64 @FT_THROW(i32 %160)
  store i64 %161, i64* %9, align 8
  br label %418

162:                                              ; preds = %153
  %163 = load i64, i64* %20, align 8
  store i64 %163, i64* %13, align 8
  br label %164

164:                                              ; preds = %162
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %166 = call i32 @T1_Skip_PS_Token(%struct.TYPE_12__* %165)
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  br label %429

173:                                              ; preds = %164
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  store i8* %178, i8** %16, align 8
  %179 = load i8*, i8** %8, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = ptrtoint i8* %179 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = load i64, i64* %13, align 8
  %188 = icmp sle i64 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %173
  %190 = call i32 @FT_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %191 = load i32, i32* @Invalid_File_Format, align 4
  %192 = call i64 @FT_THROW(i32 %191)
  store i64 %192, i64* %9, align 8
  br label %418

193:                                              ; preds = %173
  %194 = load i64, i64* %13, align 8
  %195 = add nsw i64 %194, 1
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 %195
  store i8* %200, i8** %198, align 8
  br label %201

201:                                              ; preds = %193
  br label %202

202:                                              ; preds = %201, %141
  br label %203

203:                                              ; preds = %202, %130
  br label %204

204:                                              ; preds = %203
  %205 = load i8*, i8** %16, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = call i32 @FT_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %209 = load i32, i32* @Invalid_File_Format, align 4
  %210 = call i64 @FT_THROW(i32 %209)
  store i64 %210, i64* %9, align 8
  br label %418

211:                                              ; preds = %204
  %212 = load i64, i64* %13, align 8
  %213 = and i64 %212, 1
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %211
  %216 = load i8*, i8** %16, align 8
  %217 = load i64, i64* %13, align 8
  %218 = sub nsw i64 %217, 1
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %215
  %224 = load i64, i64* %13, align 8
  %225 = add nsw i64 %224, -1
  store i64 %225, i64* %13, align 8
  br label %226

226:                                              ; preds = %223, %215, %211
  %227 = load i64, i64* %13, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %226
  %230 = call i32 @FT_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %231 = load i32, i32* @Invalid_File_Format, align 4
  %232 = call i64 @FT_THROW(i32 %231)
  store i64 %232, i64* %9, align 8
  br label %418

233:                                              ; preds = %226
  %234 = load i8*, i8** %8, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = ptrtoint i8* %234 to i64
  %240 = ptrtoint i8* %238 to i64
  %241 = sub i64 %239, %240
  store i64 %241, i64* %19, align 8
  store i64 0, i64* %12, align 8
  br label %242

242:                                              ; preds = %409, %233
  %243 = load i64, i64* %12, align 8
  %244 = load i64, i64* %13, align 8
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %246, label %412

246:                                              ; preds = %242
  %247 = load i32, i32* %18, align 4
  switch i32 %247, label %408 [
    i32 130, label %248
    i32 129, label %305
    i32 128, label %386
  ]

248:                                              ; preds = %246
  %249 = load i64, i64* %11, align 8
  %250 = icmp slt i64 %249, 12
  br i1 %250, label %251, label %262

251:                                              ; preds = %248
  %252 = load i8*, i8** %16, align 8
  %253 = load i64, i64* %12, align 8
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = load i64, i64* %11, align 8
  %260 = add nsw i64 %259, 1
  store i64 %260, i64* %11, align 8
  %261 = getelementptr inbounds i8, i8* %258, i64 %259
  store i8 %255, i8* %261, align 1
  br label %409

262:                                              ; preds = %248
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 4
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = mul nsw i32 16, %268
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 5
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = add nsw i32 %269, %275
  store i32 %276, i32* %10, align 4
  store i32 129, i32* %18, align 4
  %277 = load i32, i32* %10, align 4
  %278 = mul nsw i32 16, %277
  %279 = add nsw i32 12, %278
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 8
  %282 = load i64, i64* %19, align 8
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = icmp slt i64 %282, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %262
  %289 = call i32 @FT_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %290 = load i32, i32* @Invalid_File_Format, align 4
  %291 = call i64 @FT_THROW(i32 %290)
  store i64 %291, i64* %9, align 8
  br label %418

292:                                              ; preds = %262
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = call i64 @FT_REALLOC(i8* %295, i32 12, i64 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %292
  br label %418

303:                                              ; preds = %292
  br label %304

304:                                              ; preds = %303
  br label %305

305:                                              ; preds = %246, %304
  %306 = load i64, i64* %11, align 8
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = sext i32 %309 to i64
  %311 = icmp slt i64 %306, %310
  br i1 %311, label %312, label %323

312:                                              ; preds = %305
  %313 = load i8*, i8** %16, align 8
  %314 = load i64, i64* %12, align 8
  %315 = getelementptr inbounds i8, i8* %313, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = load i64, i64* %11, align 8
  %321 = add nsw i64 %320, 1
  store i64 %321, i64* %11, align 8
  %322 = getelementptr inbounds i8, i8* %319, i64 %320
  store i8 %316, i8* %322, align 1
  br label %409

323:                                              ; preds = %305
  store i32 0, i32* %21, align 4
  br label %324

324:                                              ; preds = %366, %323
  %325 = load i32, i32* %21, align 4
  %326 = load i32, i32* %10, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %369

328:                                              ; preds = %324
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 12
  %333 = load i32, i32* %21, align 4
  %334 = mul nsw i32 16, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %332, i64 %335
  %337 = getelementptr inbounds i8, i8* %336, i64 12
  store i8* %337, i8** %23, align 8
  %338 = load i8*, i8** %23, align 8
  %339 = call i64 @FT_PEEK_ULONG(i8* %338)
  store i64 %339, i64* %22, align 8
  %340 = load i64, i64* %22, align 8
  %341 = load i64, i64* %19, align 8
  %342 = icmp sgt i64 %340, %341
  br i1 %342, label %352, label %343

343:                                              ; preds = %328
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = sext i32 %346 to i64
  %348 = load i64, i64* %19, align 8
  %349 = load i64, i64* %22, align 8
  %350 = sub nsw i64 %348, %349
  %351 = icmp sgt i64 %347, %350
  br i1 %351, label %352, label %356

352:                                              ; preds = %343, %328
  %353 = call i32 @FT_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %354 = load i32, i32* @Invalid_File_Format, align 4
  %355 = call i64 @FT_THROW(i32 %354)
  store i64 %355, i64* %9, align 8
  br label %418

356:                                              ; preds = %343
  %357 = load i64, i64* %22, align 8
  %358 = add nsw i64 %357, 3
  %359 = and i64 %358, 4294967292
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %363, %359
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %361, align 8
  br label %366

366:                                              ; preds = %356
  %367 = load i32, i32* %21, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %21, align 4
  br label %324

369:                                              ; preds = %324
  store i32 128, i32* %18, align 4
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = load i32, i32* %10, align 4
  %374 = mul nsw i32 16, %373
  %375 = add nsw i32 12, %374
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = add nsw i32 %378, 1
  %380 = sext i32 %379 to i64
  %381 = call i64 @FT_REALLOC(i8* %372, i32 %375, i64 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %369
  br label %418

384:                                              ; preds = %369
  br label %385

385:                                              ; preds = %384
  br label %386

386:                                              ; preds = %246, %385
  %387 = load i64, i64* %11, align 8
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = sext i32 %390 to i64
  %392 = icmp sge i64 %387, %391
  br i1 %392, label %393, label %397

393:                                              ; preds = %386
  %394 = call i32 @FT_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %395 = load i32, i32* @Invalid_File_Format, align 4
  %396 = call i64 @FT_THROW(i32 %395)
  store i64 %396, i64* %9, align 8
  br label %418

397:                                              ; preds = %386
  %398 = load i8*, i8** %16, align 8
  %399 = load i64, i64* %12, align 8
  %400 = getelementptr inbounds i8, i8* %398, i64 %399
  %401 = load i8, i8* %400, align 1
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 0
  %404 = load i8*, i8** %403, align 8
  %405 = load i64, i64* %11, align 8
  %406 = add nsw i64 %405, 1
  store i64 %406, i64* %11, align 8
  %407 = getelementptr inbounds i8, i8* %404, i64 %405
  store i8 %401, i8* %407, align 1
  br label %408

408:                                              ; preds = %397, %246
  br label %409

409:                                              ; preds = %408, %312, %251
  %410 = load i64, i64* %12, align 8
  %411 = add nsw i64 %410, 1
  store i64 %411, i64* %12, align 8
  br label %242

412:                                              ; preds = %242
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %414 = call i32 @T1_Skip_Spaces(%struct.TYPE_12__* %413)
  br label %58

415:                                              ; preds = %58
  %416 = load i32, i32* @Invalid_File_Format, align 4
  %417 = call i64 @FT_THROW(i32 %416)
  store i64 %417, i64* %9, align 8
  br label %418

418:                                              ; preds = %415, %393, %383, %352, %302, %288, %229, %207, %189, %158, %149, %129, %118, %91, %51
  %419 = load i64, i64* %9, align 8
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 2
  store i64 %419, i64* %422, align 8
  br label %423

423:                                              ; preds = %418, %103, %74
  %424 = load i32, i32* %17, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %423
  %427 = load i8*, i8** %16, align 8
  %428 = call i32 @FT_FREE(i8* %427)
  br label %429

429:                                              ; preds = %172, %426, %423
  ret void
}

declare dso_local i32 @T1_Skip_Spaces(%struct.TYPE_12__*) #1

declare dso_local i32 @FT_ERROR(i8*) #1

declare dso_local i64 @FT_THROW(i32) #1

declare dso_local i32 @T1_Skip_PS_Token(%struct.TYPE_12__*) #1

declare dso_local i64 @FT_REALLOC(i8*, i32, i64) #1

declare dso_local i32 @T1_ToBytes(%struct.TYPE_12__*, i8*, i64, i64*, i32) #1

declare dso_local i64 @ft_isdigit(i8 signext) #1

declare dso_local i64 @T1_ToInt(%struct.TYPE_12__*) #1

declare dso_local i64 @FT_PEEK_ULONG(i8*) #1

declare dso_local i32 @FT_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
