; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlStringLenDecodeEntities.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlStringLenDecodeEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i32, i64, i32*, i32* }

@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_ENTITY_LOOP = common dso_local global i32 0, align 4
@XML_PARSER_BIG_BUFFER_SIZE = common dso_local global i64 0, align 8
@XML_PARSER_BUFFER_SIZE = common dso_local global i64 0, align 8
@XML_SUBSTITUTE_REF = common dso_local global i32 0, align 4
@xmlParserDebugEntities = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"String decoding Entity Reference: %.30s\0A\00", align 1
@XML_INTERNAL_PREDEFINED_ENTITY = common dso_local global i64 0, align 8
@XML_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"predefined entity has no content\0A\00", align 1
@XML_SUBSTITUTE_PEREF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"String decoding PE Reference: %.30s\0A\00", align 1
@XML_PARSE_NOENT = common dso_local global i32 0, align 4
@XML_PARSE_DTDVALID = common dso_local global i32 0, align 4
@XML_ERR_ENTITY_PROCESSING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"not validating will not read content for PE entity %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlStringLenDecodeEntities(%struct.TYPE_18__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* null, i32** %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %29 = icmp eq %struct.TYPE_18__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %7
  %31 = load i32*, i32** %10, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30, %7
  store i32* null, i32** %8, align 8
  br label %490

37:                                               ; preds = %33
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %21, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 40
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @XML_PARSE_HUGE, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46, %37
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 1024
  br i1 %57, label %58, label %62

58:                                               ; preds = %53, %46
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %60 = load i32, i32* @XML_ERR_ENTITY_LOOP, align 4
  %61 = call i32 @xmlFatalErr(%struct.TYPE_18__* %59, i32 %60, i32* null)
  store i32* null, i32** %8, align 8
  br label %490

62:                                               ; preds = %53
  %63 = load i64, i64* @XML_PARSER_BIG_BUFFER_SIZE, align 8
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %17, align 8
  %65 = call i64 @xmlMallocAtomic(i64 %64)
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %16, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %474

70:                                               ; preds = %62
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %21, align 8
  %73 = icmp ult i32* %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %24, align 4
  %77 = call i32 @CUR_SCHAR(i32* %75, i32 %76)
  store i32 %77, i32* %23, align 4
  br label %79

78:                                               ; preds = %70
  store i32 0, i32* %23, align 4
  br label %79

79:                                               ; preds = %78, %74
  br label %80

80:                                               ; preds = %468, %79
  %81 = load i32, i32* %23, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %92, %93
  br label %95

95:                                               ; preds = %91, %87, %83, %80
  %96 = phi i1 [ false, %87 ], [ false, %83 ], [ false, %80 ], [ %94, %91 ]
  br i1 %96, label %97, label %469

97:                                               ; preds = %95
  %98 = load i32, i32* %23, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %469

101:                                              ; preds = %97
  %102 = load i32, i32* %23, align 4
  %103 = icmp eq i32 %102, 38
  br i1 %103, label %104, label %130

104:                                              ; preds = %101
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 35
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %111 = call i32 @xmlParseStringCharRef(%struct.TYPE_18__* %110, i32** %10)
  store i32 %111, i32* %25, align 4
  %112 = load i32, i32* %25, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %477

115:                                              ; preds = %109
  %116 = load i32*, i32** %16, align 8
  %117 = load i64, i64* %18, align 8
  %118 = load i32, i32* %25, align 4
  %119 = call i32 @COPY_BUF(i32 0, i32* %116, i64 %117, i32 %118)
  %120 = load i64, i64* %18, align 8
  %121 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  %122 = add i64 %120, %121
  %123 = load i64, i64* %17, align 8
  %124 = icmp ugt i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %115
  %126 = load i32*, i32** %16, align 8
  %127 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  %128 = call i32 @growBuffer(i32* %126, i64 %127)
  br label %129

129:                                              ; preds = %125, %115
  br label %459

130:                                              ; preds = %104, %101
  %131 = load i32, i32* %23, align 4
  %132 = icmp eq i32 %131, 38
  br i1 %132, label %133, label %313

133:                                              ; preds = %130
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @XML_SUBSTITUTE_REF, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %313

138:                                              ; preds = %133
  %139 = load i64, i64* @xmlParserDebugEntities, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* @xmlGenericErrorContext, align 4
  %143 = load i32*, i32** %10, align 8
  %144 = call i32 @xmlGenericError(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32* %143)
  br label %145

145:                                              ; preds = %141, %138
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %147 = call %struct.TYPE_19__* @xmlParseStringEntityRef(%struct.TYPE_18__* %146, i32** %10)
  store %struct.TYPE_19__* %147, %struct.TYPE_19__** %22, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %150 = call i64 @xmlParserEntityCheck(%struct.TYPE_18__* %148, i64 0, %struct.TYPE_19__* %149, i32 0)
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %152 = icmp ne %struct.TYPE_19__* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %145
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sdiv i32 %156, 2
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %153, %145
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %164 = icmp ne %struct.TYPE_19__* %163, null
  br i1 %164, label %165, label %200

165:                                              ; preds = %162
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @XML_INTERNAL_PREDEFINED_ENTITY, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %200

171:                                              ; preds = %165
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %195

176:                                              ; preds = %171
  %177 = load i32*, i32** %16, align 8
  %178 = load i64, i64* %18, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @COPY_BUF(i32 0, i32* %177, i64 %178, i32 %183)
  %185 = load i64, i64* %18, align 8
  %186 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  %187 = add i64 %185, %186
  %188 = load i64, i64* %17, align 8
  %189 = icmp ugt i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %176
  %191 = load i32*, i32** %16, align 8
  %192 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  %193 = call i32 @growBuffer(i32* %191, i64 %192)
  br label %194

194:                                              ; preds = %190, %176
  br label %199

195:                                              ; preds = %171
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %197 = load i32, i32* @XML_ERR_INTERNAL_ERROR, align 4
  %198 = call i32 @xmlFatalErrMsg(%struct.TYPE_18__* %196, i32 %197, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %477

199:                                              ; preds = %194
  br label %312

200:                                              ; preds = %165, %162
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %202 = icmp ne %struct.TYPE_19__* %201, null
  br i1 %202, label %203, label %260

203:                                              ; preds = %200
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %260

208:                                              ; preds = %203
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %12, align 4
  %218 = call i32* @xmlStringDecodeEntities(%struct.TYPE_18__* %213, i32* %216, i32 %217, i32 0, i32 0, i32 0)
  store i32* %218, i32** %20, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %220, align 8
  %223 = load i32*, i32** %20, align 8
  %224 = icmp eq i32* %223, null
  br i1 %224, label %225, label %226

225:                                              ; preds = %208
  br label %477

226:                                              ; preds = %208
  %227 = load i32*, i32** %20, align 8
  store i32* %227, i32** %19, align 8
  br label %228

228:                                              ; preds = %256, %226
  %229 = load i32*, i32** %19, align 8
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %257

232:                                              ; preds = %228
  %233 = load i32*, i32** %19, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** %19, align 8
  %235 = load i32, i32* %233, align 4
  %236 = load i32*, i32** %16, align 8
  %237 = load i64, i64* %18, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %18, align 8
  %239 = getelementptr inbounds i32, i32* %236, i64 %237
  store i32 %235, i32* %239, align 4
  %240 = load i64, i64* %18, align 8
  %241 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  %242 = add i64 %240, %241
  %243 = load i64, i64* %17, align 8
  %244 = icmp ugt i64 %242, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %232
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %247 = load i64, i64* %18, align 8
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %249 = call i64 @xmlParserEntityCheck(%struct.TYPE_18__* %246, i64 %247, %struct.TYPE_19__* %248, i32 0)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %245
  br label %477

252:                                              ; preds = %245
  %253 = load i32*, i32** %16, align 8
  %254 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  %255 = call i32 @growBuffer(i32* %253, i64 %254)
  br label %256

256:                                              ; preds = %252, %232
  br label %228

257:                                              ; preds = %228
  %258 = load i32*, i32** %20, align 8
  %259 = call i32 @xmlFree(i32* %258)
  store i32* null, i32** %20, align 8
  br label %311

260:                                              ; preds = %203, %200
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %262 = icmp ne %struct.TYPE_19__* %261, null
  br i1 %262, label %263, label %310

263:                                              ; preds = %260
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 @xmlStrlen(i32* %266)
  store i32 %267, i32* %26, align 4
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 3
  %270 = load i32*, i32** %269, align 8
  store i32* %270, i32** %27, align 8
  %271 = load i32*, i32** %16, align 8
  %272 = load i64, i64* %18, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %18, align 8
  %274 = getelementptr inbounds i32, i32* %271, i64 %272
  store i32 38, i32* %274, align 4
  %275 = load i64, i64* %18, align 8
  %276 = load i32, i32* %26, align 4
  %277 = sext i32 %276 to i64
  %278 = add i64 %275, %277
  %279 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  %280 = add i64 %278, %279
  %281 = load i64, i64* %17, align 8
  %282 = icmp ugt i64 %280, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %263
  %284 = load i32*, i32** %16, align 8
  %285 = load i32, i32* %26, align 4
  %286 = sext i32 %285 to i64
  %287 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  %288 = add i64 %286, %287
  %289 = call i32 @growBuffer(i32* %284, i64 %288)
  br label %290

290:                                              ; preds = %283, %263
  br label %291

291:                                              ; preds = %302, %290
  %292 = load i32, i32* %26, align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %291
  %295 = load i32*, i32** %27, align 8
  %296 = getelementptr inbounds i32, i32* %295, i32 1
  store i32* %296, i32** %27, align 8
  %297 = load i32, i32* %295, align 4
  %298 = load i32*, i32** %16, align 8
  %299 = load i64, i64* %18, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %18, align 8
  %301 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32 %297, i32* %301, align 4
  br label %302

302:                                              ; preds = %294
  %303 = load i32, i32* %26, align 4
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %26, align 4
  br label %291

305:                                              ; preds = %291
  %306 = load i32*, i32** %16, align 8
  %307 = load i64, i64* %18, align 8
  %308 = add i64 %307, 1
  store i64 %308, i64* %18, align 8
  %309 = getelementptr inbounds i32, i32* %306, i64 %307
  store i32 59, i32* %309, align 4
  br label %310

310:                                              ; preds = %305, %260
  br label %311

311:                                              ; preds = %310, %257
  br label %312

312:                                              ; preds = %311, %199
  br label %458

313:                                              ; preds = %133, %130
  %314 = load i32, i32* %23, align 4
  %315 = icmp eq i32 %314, 37
  br i1 %315, label %316, label %437

316:                                              ; preds = %313
  %317 = load i32, i32* %12, align 4
  %318 = load i32, i32* @XML_SUBSTITUTE_PEREF, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %437

321:                                              ; preds = %316
  %322 = load i64, i64* @xmlParserDebugEntities, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %321
  %325 = load i32, i32* @xmlGenericErrorContext, align 4
  %326 = load i32*, i32** %10, align 8
  %327 = call i32 @xmlGenericError(i32 %325, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32* %326)
  br label %328

328:                                              ; preds = %324, %321
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %330 = call %struct.TYPE_19__* @xmlParseStringPEReference(%struct.TYPE_18__* %329, i32** %10)
  store %struct.TYPE_19__* %330, %struct.TYPE_19__** %22, align 8
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %333 = call i64 @xmlParserEntityCheck(%struct.TYPE_18__* %331, i64 0, %struct.TYPE_19__* %332, i32 0)
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %335 = icmp ne %struct.TYPE_19__* %334, null
  br i1 %335, label %336, label %345

336:                                              ; preds = %328
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = sdiv i32 %339, 2
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = add nsw i32 %343, %340
  store i32 %344, i32* %342, align 8
  br label %345

345:                                              ; preds = %336, %328
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %347 = icmp ne %struct.TYPE_19__* %346, null
  br i1 %347, label %348, label %436

348:                                              ; preds = %345
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 2
  %351 = load i32*, i32** %350, align 8
  %352 = icmp eq i32* %351, null
  br i1 %352, label %353, label %384

353:                                              ; preds = %348
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @XML_PARSE_NOENT, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %372, label %360

360:                                              ; preds = %353
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @XML_PARSE_DTDVALID, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %372, label %367

367:                                              ; preds = %360
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 3
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %367, %360, %353
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %375 = call i32 @xmlLoadEntityContent(%struct.TYPE_18__* %373, %struct.TYPE_19__* %374)
  br label %383

376:                                              ; preds = %367
  %377 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %378 = load i32, i32* @XML_ERR_ENTITY_PROCESSING, align 4
  %379 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %380 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %379, i32 0, i32 3
  %381 = load i32*, i32** %380, align 8
  %382 = call i32 @xmlWarningMsg(%struct.TYPE_18__* %377, i32 %378, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32* %381, i32* null)
  br label %383

383:                                              ; preds = %376, %372
  br label %384

384:                                              ; preds = %383, %348
  %385 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %386 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %386, align 8
  %389 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %390 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %391 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %390, i32 0, i32 2
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %12, align 4
  %394 = call i32* @xmlStringDecodeEntities(%struct.TYPE_18__* %389, i32* %392, i32 %393, i32 0, i32 0, i32 0)
  store i32* %394, i32** %20, align 8
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = add nsw i32 %397, -1
  store i32 %398, i32* %396, align 8
  %399 = load i32*, i32** %20, align 8
  %400 = icmp eq i32* %399, null
  br i1 %400, label %401, label %402

401:                                              ; preds = %384
  br label %477

402:                                              ; preds = %384
  %403 = load i32*, i32** %20, align 8
  store i32* %403, i32** %19, align 8
  br label %404

404:                                              ; preds = %432, %402
  %405 = load i32*, i32** %19, align 8
  %406 = load i32, i32* %405, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %433

408:                                              ; preds = %404
  %409 = load i32*, i32** %19, align 8
  %410 = getelementptr inbounds i32, i32* %409, i32 1
  store i32* %410, i32** %19, align 8
  %411 = load i32, i32* %409, align 4
  %412 = load i32*, i32** %16, align 8
  %413 = load i64, i64* %18, align 8
  %414 = add i64 %413, 1
  store i64 %414, i64* %18, align 8
  %415 = getelementptr inbounds i32, i32* %412, i64 %413
  store i32 %411, i32* %415, align 4
  %416 = load i64, i64* %18, align 8
  %417 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  %418 = add i64 %416, %417
  %419 = load i64, i64* %17, align 8
  %420 = icmp ugt i64 %418, %419
  br i1 %420, label %421, label %432

421:                                              ; preds = %408
  %422 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %423 = load i64, i64* %18, align 8
  %424 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %425 = call i64 @xmlParserEntityCheck(%struct.TYPE_18__* %422, i64 %423, %struct.TYPE_19__* %424, i32 0)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %421
  br label %477

428:                                              ; preds = %421
  %429 = load i32*, i32** %16, align 8
  %430 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  %431 = call i32 @growBuffer(i32* %429, i64 %430)
  br label %432

432:                                              ; preds = %428, %408
  br label %404

433:                                              ; preds = %404
  %434 = load i32*, i32** %20, align 8
  %435 = call i32 @xmlFree(i32* %434)
  store i32* null, i32** %20, align 8
  br label %436

436:                                              ; preds = %433, %345
  br label %457

437:                                              ; preds = %316, %313
  %438 = load i32, i32* %24, align 4
  %439 = load i32*, i32** %16, align 8
  %440 = load i64, i64* %18, align 8
  %441 = load i32, i32* %23, align 4
  %442 = call i32 @COPY_BUF(i32 %438, i32* %439, i64 %440, i32 %441)
  %443 = load i32, i32* %24, align 4
  %444 = load i32*, i32** %10, align 8
  %445 = sext i32 %443 to i64
  %446 = getelementptr inbounds i32, i32* %444, i64 %445
  store i32* %446, i32** %10, align 8
  %447 = load i64, i64* %18, align 8
  %448 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  %449 = add i64 %447, %448
  %450 = load i64, i64* %17, align 8
  %451 = icmp ugt i64 %449, %450
  br i1 %451, label %452, label %456

452:                                              ; preds = %437
  %453 = load i32*, i32** %16, align 8
  %454 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  %455 = call i32 @growBuffer(i32* %453, i64 %454)
  br label %456

456:                                              ; preds = %452, %437
  br label %457

457:                                              ; preds = %456, %436
  br label %458

458:                                              ; preds = %457, %312
  br label %459

459:                                              ; preds = %458, %129
  %460 = load i32*, i32** %10, align 8
  %461 = load i32*, i32** %21, align 8
  %462 = icmp ult i32* %460, %461
  br i1 %462, label %463, label %467

463:                                              ; preds = %459
  %464 = load i32*, i32** %10, align 8
  %465 = load i32, i32* %24, align 4
  %466 = call i32 @CUR_SCHAR(i32* %464, i32 %465)
  store i32 %466, i32* %23, align 4
  br label %468

467:                                              ; preds = %459
  store i32 0, i32* %23, align 4
  br label %468

468:                                              ; preds = %467, %463
  br label %80

469:                                              ; preds = %100, %95
  %470 = load i32*, i32** %16, align 8
  %471 = load i64, i64* %18, align 8
  %472 = getelementptr inbounds i32, i32* %470, i64 %471
  store i32 0, i32* %472, align 4
  %473 = load i32*, i32** %16, align 8
  store i32* %473, i32** %8, align 8
  br label %490

474:                                              ; preds = %69
  %475 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %476 = call i32 @xmlErrMemory(%struct.TYPE_18__* %475, i32* null)
  br label %477

477:                                              ; preds = %474, %427, %401, %251, %225, %195, %114
  %478 = load i32*, i32** %20, align 8
  %479 = icmp ne i32* %478, null
  br i1 %479, label %480, label %483

480:                                              ; preds = %477
  %481 = load i32*, i32** %20, align 8
  %482 = call i32 @xmlFree(i32* %481)
  br label %483

483:                                              ; preds = %480, %477
  %484 = load i32*, i32** %16, align 8
  %485 = icmp ne i32* %484, null
  br i1 %485, label %486, label %489

486:                                              ; preds = %483
  %487 = load i32*, i32** %16, align 8
  %488 = call i32 @xmlFree(i32* %487)
  br label %489

489:                                              ; preds = %486, %483
  store i32* null, i32** %8, align 8
  br label %490

490:                                              ; preds = %489, %469, %58, %36
  %491 = load i32*, i32** %8, align 8
  ret i32* %491
}

declare dso_local i32 @xmlFatalErr(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i64 @xmlMallocAtomic(i64) #1

declare dso_local i32 @CUR_SCHAR(i32*, i32) #1

declare dso_local i32 @xmlParseStringCharRef(%struct.TYPE_18__*, i32**) #1

declare dso_local i32 @COPY_BUF(i32, i32*, i64, i32) #1

declare dso_local i32 @growBuffer(i32*, i64) #1

declare dso_local i32 @xmlGenericError(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_19__* @xmlParseStringEntityRef(%struct.TYPE_18__*, i32**) #1

declare dso_local i64 @xmlParserEntityCheck(%struct.TYPE_18__*, i64, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32* @xmlStringDecodeEntities(%struct.TYPE_18__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @xmlStrlen(i32*) #1

declare dso_local %struct.TYPE_19__* @xmlParseStringPEReference(%struct.TYPE_18__*, i32**) #1

declare dso_local i32 @xmlLoadEntityContent(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @xmlWarningMsg(%struct.TYPE_18__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
