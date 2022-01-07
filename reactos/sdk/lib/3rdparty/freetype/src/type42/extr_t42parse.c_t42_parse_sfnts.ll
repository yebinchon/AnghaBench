; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/type42/extr_t42parse.c_t42_parse_sfnts.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/type42/extr_t42parse.c_t42_parse_sfnts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8*, i64, i32 }

@.str = private unnamed_addr constant [51 x i8] c"t42_parse_sfnts: can't find begin of sfnts vector\0A\00", align 1
@Invalid_File_Format = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"t42_parse_sfnts: invalid data in sfnts array\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"t42_parse_sfnts: can't handle mixed binary and hex strings\0A\00", align 1
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
  br label %408

55:                                               ; preds = %42
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = call i32 @T1_Skip_Spaces(%struct.TYPE_12__* %56)
  store i32 130, i32* %18, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %11, align 8
  br label %58

58:                                               ; preds = %402, %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %405

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
  br label %413

80:                                               ; preds = %65
  %81 = load i8*, i8** %7, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 60
  br i1 %84, label %85, label %131

85:                                               ; preds = %80
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = call i32 @T1_Skip_PS_Token(%struct.TYPE_12__* %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %413

94:                                               ; preds = %85
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sub nsw i64 %102, 2
  %104 = add nsw i64 %103, 1
  %105 = sdiv i64 %104, 2
  store i64 %105, i64* %13, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %94
  %109 = call i32 @FT_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @Invalid_File_Format, align 4
  %111 = call i64 @FT_THROW(i32 %110)
  store i64 %111, i64* %9, align 8
  br label %408

112:                                              ; preds = %94
  %113 = load i8*, i8** %16, align 8
  %114 = load i64, i64* %14, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i64, i64* %13, align 8
  %117 = call i64 @FT_REALLOC(i8* %113, i32 %115, i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %408

120:                                              ; preds = %112
  store i32 1, i32* %17, align 4
  %121 = load i8*, i8** %7, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  store i8* %121, i8** %124, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = load i64, i64* %13, align 8
  %128 = call i32 @T1_ToBytes(%struct.TYPE_12__* %125, i8* %126, i64 %127, i64* %15, i32 1)
  %129 = load i64, i64* %13, align 8
  store i64 %129, i64* %14, align 8
  %130 = load i64, i64* %15, align 8
  store i64 %130, i64* %13, align 8
  br label %193

131:                                              ; preds = %80
  %132 = load i8*, i8** %7, align 8
  %133 = load i8, i8* %132, align 1
  %134 = call i64 @ft_isdigit(i8 signext %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %192

136:                                              ; preds = %131
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = call i32 @FT_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* @Invalid_File_Format, align 4
  %142 = call i64 @FT_THROW(i32 %141)
  store i64 %142, i64* %9, align 8
  br label %408

143:                                              ; preds = %136
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %145 = call i64 @T1_ToInt(%struct.TYPE_12__* %144)
  store i64 %145, i64* %20, align 8
  %146 = load i64, i64* %20, align 8
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = call i32 @FT_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %150 = load i32, i32* @Invalid_File_Format, align 4
  %151 = call i64 @FT_THROW(i32 %150)
  store i64 %151, i64* %9, align 8
  br label %408

152:                                              ; preds = %143
  %153 = load i64, i64* %20, align 8
  store i64 %153, i64* %13, align 8
  br label %154

154:                                              ; preds = %152
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %156 = call i32 @T1_Skip_PS_Token(%struct.TYPE_12__* %155)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %419

163:                                              ; preds = %154
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  store i8* %168, i8** %16, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = ptrtoint i8* %169 to i64
  %175 = ptrtoint i8* %173 to i64
  %176 = sub i64 %174, %175
  %177 = load i64, i64* %13, align 8
  %178 = icmp sle i64 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %163
  %180 = call i32 @FT_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %181 = load i32, i32* @Invalid_File_Format, align 4
  %182 = call i64 @FT_THROW(i32 %181)
  store i64 %182, i64* %9, align 8
  br label %408

183:                                              ; preds = %163
  %184 = load i64, i64* %13, align 8
  %185 = add nsw i64 %184, 1
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 %185
  store i8* %190, i8** %188, align 8
  br label %191

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191, %131
  br label %193

193:                                              ; preds = %192, %120
  br label %194

194:                                              ; preds = %193
  %195 = load i8*, i8** %16, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = call i32 @FT_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %199 = load i32, i32* @Invalid_File_Format, align 4
  %200 = call i64 @FT_THROW(i32 %199)
  store i64 %200, i64* %9, align 8
  br label %408

201:                                              ; preds = %194
  %202 = load i64, i64* %13, align 8
  %203 = and i64 %202, 1
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %201
  %206 = load i8*, i8** %16, align 8
  %207 = load i64, i64* %13, align 8
  %208 = sub nsw i64 %207, 1
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = load i64, i64* %13, align 8
  %215 = add nsw i64 %214, -1
  store i64 %215, i64* %13, align 8
  br label %216

216:                                              ; preds = %213, %205, %201
  %217 = load i64, i64* %13, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %216
  %220 = call i32 @FT_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %221 = load i32, i32* @Invalid_File_Format, align 4
  %222 = call i64 @FT_THROW(i32 %221)
  store i64 %222, i64* %9, align 8
  br label %408

223:                                              ; preds = %216
  %224 = load i8*, i8** %8, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = ptrtoint i8* %224 to i64
  %230 = ptrtoint i8* %228 to i64
  %231 = sub i64 %229, %230
  store i64 %231, i64* %19, align 8
  store i64 0, i64* %12, align 8
  br label %232

232:                                              ; preds = %399, %223
  %233 = load i64, i64* %12, align 8
  %234 = load i64, i64* %13, align 8
  %235 = icmp slt i64 %233, %234
  br i1 %235, label %236, label %402

236:                                              ; preds = %232
  %237 = load i32, i32* %18, align 4
  switch i32 %237, label %398 [
    i32 130, label %238
    i32 129, label %295
    i32 128, label %376
  ]

238:                                              ; preds = %236
  %239 = load i64, i64* %11, align 8
  %240 = icmp slt i64 %239, 12
  br i1 %240, label %241, label %252

241:                                              ; preds = %238
  %242 = load i8*, i8** %16, align 8
  %243 = load i64, i64* %12, align 8
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = load i64, i64* %11, align 8
  %250 = add nsw i64 %249, 1
  store i64 %250, i64* %11, align 8
  %251 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8 %245, i8* %251, align 1
  br label %399

252:                                              ; preds = %238
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 4
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = mul nsw i32 16, %258
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 5
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = add nsw i32 %259, %265
  store i32 %266, i32* %10, align 4
  store i32 129, i32* %18, align 4
  %267 = load i32, i32* %10, align 4
  %268 = mul nsw i32 16, %267
  %269 = add nsw i32 12, %268
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 8
  %272 = load i64, i64* %19, align 8
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = icmp slt i64 %272, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %252
  %279 = call i32 @FT_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %280 = load i32, i32* @Invalid_File_Format, align 4
  %281 = call i64 @FT_THROW(i32 %280)
  store i64 %281, i64* %9, align 8
  br label %408

282:                                              ; preds = %252
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = call i64 @FT_REALLOC(i8* %285, i32 12, i64 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %282
  br label %408

293:                                              ; preds = %282
  br label %294

294:                                              ; preds = %293
  br label %295

295:                                              ; preds = %236, %294
  %296 = load i64, i64* %11, align 8
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = sext i32 %299 to i64
  %301 = icmp slt i64 %296, %300
  br i1 %301, label %302, label %313

302:                                              ; preds = %295
  %303 = load i8*, i8** %16, align 8
  %304 = load i64, i64* %12, align 8
  %305 = getelementptr inbounds i8, i8* %303, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = load i64, i64* %11, align 8
  %311 = add nsw i64 %310, 1
  store i64 %311, i64* %11, align 8
  %312 = getelementptr inbounds i8, i8* %309, i64 %310
  store i8 %306, i8* %312, align 1
  br label %399

313:                                              ; preds = %295
  store i32 0, i32* %21, align 4
  br label %314

314:                                              ; preds = %356, %313
  %315 = load i32, i32* %21, align 4
  %316 = load i32, i32* %10, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %359

318:                                              ; preds = %314
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 12
  %323 = load i32, i32* %21, align 4
  %324 = mul nsw i32 16, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %322, i64 %325
  %327 = getelementptr inbounds i8, i8* %326, i64 12
  store i8* %327, i8** %23, align 8
  %328 = load i8*, i8** %23, align 8
  %329 = call i64 @FT_PEEK_ULONG(i8* %328)
  store i64 %329, i64* %22, align 8
  %330 = load i64, i64* %22, align 8
  %331 = load i64, i64* %19, align 8
  %332 = icmp sgt i64 %330, %331
  br i1 %332, label %342, label %333

333:                                              ; preds = %318
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = sext i32 %336 to i64
  %338 = load i64, i64* %19, align 8
  %339 = load i64, i64* %22, align 8
  %340 = sub nsw i64 %338, %339
  %341 = icmp sgt i64 %337, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %333, %318
  %343 = call i32 @FT_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %344 = load i32, i32* @Invalid_File_Format, align 4
  %345 = call i64 @FT_THROW(i32 %344)
  store i64 %345, i64* %9, align 8
  br label %408

346:                                              ; preds = %333
  %347 = load i64, i64* %22, align 8
  %348 = add nsw i64 %347, 3
  %349 = and i64 %348, 4294967292
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = sext i32 %352 to i64
  %354 = add nsw i64 %353, %349
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %351, align 8
  br label %356

356:                                              ; preds = %346
  %357 = load i32, i32* %21, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %21, align 4
  br label %314

359:                                              ; preds = %314
  store i32 128, i32* %18, align 4
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8
  %363 = load i32, i32* %10, align 4
  %364 = mul nsw i32 16, %363
  %365 = add nsw i32 12, %364
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = add nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = call i64 @FT_REALLOC(i8* %362, i32 %365, i64 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %359
  br label %408

374:                                              ; preds = %359
  br label %375

375:                                              ; preds = %374
  br label %376

376:                                              ; preds = %236, %375
  %377 = load i64, i64* %11, align 8
  %378 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = sext i32 %380 to i64
  %382 = icmp sge i64 %377, %381
  br i1 %382, label %383, label %387

383:                                              ; preds = %376
  %384 = call i32 @FT_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %385 = load i32, i32* @Invalid_File_Format, align 4
  %386 = call i64 @FT_THROW(i32 %385)
  store i64 %386, i64* %9, align 8
  br label %408

387:                                              ; preds = %376
  %388 = load i8*, i8** %16, align 8
  %389 = load i64, i64* %12, align 8
  %390 = getelementptr inbounds i8, i8* %388, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 0
  %394 = load i8*, i8** %393, align 8
  %395 = load i64, i64* %11, align 8
  %396 = add nsw i64 %395, 1
  store i64 %396, i64* %11, align 8
  %397 = getelementptr inbounds i8, i8* %394, i64 %395
  store i8 %391, i8* %397, align 1
  br label %398

398:                                              ; preds = %387, %236
  br label %399

399:                                              ; preds = %398, %302, %241
  %400 = load i64, i64* %12, align 8
  %401 = add nsw i64 %400, 1
  store i64 %401, i64* %12, align 8
  br label %232

402:                                              ; preds = %232
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %404 = call i32 @T1_Skip_Spaces(%struct.TYPE_12__* %403)
  br label %58

405:                                              ; preds = %58
  %406 = load i32, i32* @Invalid_File_Format, align 4
  %407 = call i64 @FT_THROW(i32 %406)
  store i64 %407, i64* %9, align 8
  br label %408

408:                                              ; preds = %405, %383, %373, %342, %292, %278, %219, %197, %179, %148, %139, %119, %108, %51
  %409 = load i64, i64* %9, align 8
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %411, i32 0, i32 2
  store i64 %409, i64* %412, align 8
  br label %413

413:                                              ; preds = %408, %93, %74
  %414 = load i32, i32* %17, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %413
  %417 = load i8*, i8** %16, align 8
  %418 = call i32 @FT_FREE(i8* %417)
  br label %419

419:                                              ; preds = %162, %416, %413
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
