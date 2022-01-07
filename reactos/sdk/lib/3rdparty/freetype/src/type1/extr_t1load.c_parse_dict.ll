; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/type1/extr_t1load.c_parse_dict.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/type1/extr_t1load.c_parse_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8*, i8* }
%struct.TYPE_14__ = type { i32, i64 }

@FT_Err_Ok = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"eexec\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"closefile\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"FontDirectory\00", align 1
@T1_PRIVATE = common dso_local global i32 0, align 4
@T1_FONTDIR_AFTER_PRIVATE = common dso_local global i32 0, align 4
@IS_INCREMENTAL = common dso_local global i32 0, align 4
@Invalid_File_Format = common dso_local global i32 0, align 4
@t1_keywords = common dso_local global i32 0, align 4
@T1_FIELD_DICT_PRIVATE = common dso_local global i32 0, align 4
@T1_FIELD_DICT_FONTDICT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"parse_dict: found `%s' but ignoring it since it is in the wrong dictionary\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"CharStrings\00", align 1
@Ignore = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_13__*, i8*, i32)* @parse_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_dict(i32 %0, %struct.TYPE_13__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %10, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** @FT_Err_Ok, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %11, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = call i32 @T1_Skip_Spaces(%struct.TYPE_12__* %44)
  br label %46

46:                                               ; preds = %344, %4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = icmp ult i8* %50, %51
  br i1 %52, label %53, label %347

53:                                               ; preds = %46
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %14, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @IS_PS_TOKEN(i8* %58, i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %347

63:                                               ; preds = %53
  %64 = load i8*, i8** %14, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i64 @IS_PS_TOKEN(i8* %64, i8* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %347

69:                                               ; preds = %63
  %70 = load i8*, i8** %14, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i64 @IS_PS_TOKEN(i8* %70, i8* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @T1_PRIVATE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* @T1_FONTDIR_AFTER_PRIVATE, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %74
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 13
  store i8* %92, i8** %90, align 8
  br label %342

93:                                               ; preds = %69
  %94 = load i8*, i8** %14, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @ft_isdigit(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load i8*, i8** %14, align 8
  store i8* %99, i8** %12, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %101 = call i32 @T1_Skip_PS_Token(%struct.TYPE_12__* %100)
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %348

108:                                              ; preds = %98
  store i32 1, i32* %13, align 4
  br label %341

109:                                              ; preds = %93
  %110 = load i8*, i8** %14, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 82
  br i1 %113, label %114, label %141

114:                                              ; preds = %109
  %115 = load i8*, i8** %14, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 6
  %117 = load i8*, i8** %11, align 8
  %118 = icmp ult i8* %116, %117
  br i1 %118, label %119, label %141

119:                                              ; preds = %114
  %120 = load i8*, i8** %14, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 68
  br i1 %124, label %125, label %141

125:                                              ; preds = %119
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load i8*, i8** %12, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %134 = load i32, i32* @IS_INCREMENTAL, align 4
  %135 = call i32 @read_binary_data(%struct.TYPE_12__* %133, i32* %15, i8** %16, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %128
  %138 = load i32, i32* @Invalid_File_Format, align 4
  %139 = call i8* @FT_THROW(i32 %138)
  store i8* %139, i8** %5, align 8
  br label %353

140:                                              ; preds = %128
  store i32 0, i32* %13, align 4
  br label %340

141:                                              ; preds = %125, %119, %114, %109
  %142 = load i8*, i8** %14, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 45
  br i1 %145, label %146, label %173

146:                                              ; preds = %141
  %147 = load i8*, i8** %14, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 6
  %149 = load i8*, i8** %11, align 8
  %150 = icmp ult i8* %148, %149
  br i1 %150, label %151, label %173

151:                                              ; preds = %146
  %152 = load i8*, i8** %14, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 124
  br i1 %156, label %157, label %173

157:                                              ; preds = %151
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load i8*, i8** %12, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i8* %161, i8** %164, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %166 = load i32, i32* @IS_INCREMENTAL, align 4
  %167 = call i32 @read_binary_data(%struct.TYPE_12__* %165, i32* %17, i8** %18, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %160
  %170 = load i32, i32* @Invalid_File_Format, align 4
  %171 = call i8* @FT_THROW(i32 %170)
  store i8* %171, i8** %5, align 8
  br label %353

172:                                              ; preds = %160
  store i32 0, i32* %13, align 4
  br label %339

173:                                              ; preds = %157, %151, %146, %141
  %174 = load i8*, i8** %14, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 47
  br i1 %177, label %178, label %328

178:                                              ; preds = %173
  %179 = load i8*, i8** %14, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  %181 = load i8*, i8** %11, align 8
  %182 = icmp ult i8* %180, %181
  br i1 %182, label %183, label %328

183:                                              ; preds = %178
  %184 = load i8*, i8** %14, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %14, align 8
  %186 = load i8*, i8** %14, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  store i8* %186, i8** %189, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %191 = call i32 @T1_Skip_PS_Token(%struct.TYPE_12__* %190)
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %183
  br label %348

198:                                              ; preds = %183
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = ptrtoint i8* %202 to i64
  %205 = ptrtoint i8* %203 to i64
  %206 = sub i64 %204, %205
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %19, align 4
  %208 = load i32, i32* %19, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %327

210:                                              ; preds = %198
  %211 = load i32, i32* %19, align 4
  %212 = icmp slt i32 %211, 22
  br i1 %212, label %213, label %327

213:                                              ; preds = %210
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load i8*, i8** %11, align 8
  %219 = icmp ult i8* %217, %218
  br i1 %219, label %220, label %327

220:                                              ; preds = %213
  %221 = load i32, i32* @t1_keywords, align 4
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %223, %struct.TYPE_14__** %20, align 8
  br label %224

224:                                              ; preds = %323, %220
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = inttoptr i64 %227 to i8*
  store i8* %228, i8** %21, align 8
  %229 = load i8*, i8** %21, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %224
  br label %326

232:                                              ; preds = %224
  %233 = load i8*, i8** %14, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = load i8*, i8** %21, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 0
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %236, %240
  br i1 %241, label %242, label %323

242:                                              ; preds = %232
  %243 = load i32, i32* %19, align 4
  %244 = load i8*, i8** %21, align 8
  %245 = call i32 @ft_strlen(i8* %244)
  %246 = icmp eq i32 %243, %245
  br i1 %246, label %247, label %323

247:                                              ; preds = %242
  %248 = load i8*, i8** %14, align 8
  %249 = load i8*, i8** %21, align 8
  %250 = load i32, i32* %19, align 4
  %251 = call i64 @ft_memcmp(i8* %248, i8* %249, i32 %250)
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %323

253:                                              ; preds = %247
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @T1_PRIVATE, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %253
  %261 = load i32, i32* @T1_FIELD_DICT_PRIVATE, align 4
  br label %264

262:                                              ; preds = %253
  %263 = load i32, i32* @T1_FIELD_DICT_FONTDICT, align 4
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi i32 [ %261, %260 ], [ %263, %262 ]
  store i32 %265, i32* %22, align 4
  %266 = load i32, i32* %22, align 4
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = and i32 %266, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %278, label %272

272:                                              ; preds = %264
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = inttoptr i64 %275 to i8*
  %277 = call i32 @FT_TRACE1(i8* %276)
  br label %326

278:                                              ; preds = %264
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @T1_FONTDIR_AFTER_PRIVATE, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %278
  %286 = load i8*, i8** %21, align 8
  %287 = call i64 @ft_strcmp(i8* %286, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %322

289:                                              ; preds = %285, %278
  %290 = load i32, i32* %6, align 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %293 = call i8* @t1_load_keyword(i32 %290, %struct.TYPE_13__* %291, %struct.TYPE_14__* %292)
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 2
  store i8* %293, i8** %296, align 8
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 2
  %300 = load i8*, i8** %299, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %321

302:                                              ; preds = %289
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 2
  %306 = load i8*, i8** %305, align 8
  %307 = load i32, i32* @Ignore, align 4
  %308 = call i64 @FT_ERR_EQ(i8* %306, i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %302
  %311 = load i8*, i8** @FT_Err_Ok, align 8
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 2
  store i8* %311, i8** %314, align 8
  br label %320

315:                                              ; preds = %302
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 2
  %319 = load i8*, i8** %318, align 8
  store i8* %319, i8** %5, align 8
  br label %353

320:                                              ; preds = %310
  br label %321

321:                                              ; preds = %320, %289
  br label %322

322:                                              ; preds = %321, %285
  br label %326

323:                                              ; preds = %247, %242, %232
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 1
  store %struct.TYPE_14__* %325, %struct.TYPE_14__** %20, align 8
  br label %224

326:                                              ; preds = %322, %272, %231
  br label %327

327:                                              ; preds = %326, %213, %210, %198
  store i32 0, i32* %13, align 4
  br label %338

328:                                              ; preds = %178, %173
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %330 = call i32 @T1_Skip_PS_Token(%struct.TYPE_12__* %329)
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 2
  %334 = load i8*, i8** %333, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %337

336:                                              ; preds = %328
  br label %348

337:                                              ; preds = %328
  store i32 0, i32* %13, align 4
  br label %338

338:                                              ; preds = %337, %327
  br label %339

339:                                              ; preds = %338, %172
  br label %340

340:                                              ; preds = %339, %140
  br label %341

341:                                              ; preds = %340, %108
  br label %342

342:                                              ; preds = %341, %87
  br label %343

343:                                              ; preds = %342
  br label %344

344:                                              ; preds = %343
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %346 = call i32 @T1_Skip_Spaces(%struct.TYPE_12__* %345)
  br label %46

347:                                              ; preds = %68, %62, %46
  br label %348

348:                                              ; preds = %347, %336, %197, %107
  %349 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 2
  %352 = load i8*, i8** %351, align 8
  store i8* %352, i8** %5, align 8
  br label %353

353:                                              ; preds = %348, %315, %169, %137
  %354 = load i8*, i8** %5, align 8
  ret i8* %354
}

declare dso_local i32 @T1_Skip_Spaces(%struct.TYPE_12__*) #1

declare dso_local i64 @IS_PS_TOKEN(i8*, i8*, i8*) #1

declare dso_local i64 @ft_isdigit(i8 signext) #1

declare dso_local i32 @T1_Skip_PS_Token(%struct.TYPE_12__*) #1

declare dso_local i32 @read_binary_data(%struct.TYPE_12__*, i32*, i8**, i32) #1

declare dso_local i8* @FT_THROW(i32) #1

declare dso_local i32 @ft_strlen(i8*) #1

declare dso_local i64 @ft_memcmp(i8*, i8*, i32) #1

declare dso_local i32 @FT_TRACE1(i8*) #1

declare dso_local i64 @ft_strcmp(i8*, i8*) #1

declare dso_local i8* @t1_load_keyword(i32, %struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i64 @FT_ERR_EQ(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
