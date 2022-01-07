; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParserEntityCheck.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParserEntityCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, %struct.TYPE_10__, i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i32, i64* }

@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_ENTITY_LOOP = common dso_local global i64 0, align 8
@XML_INTERNAL_PREDEFINED_ENTITY = common dso_local global i64 0, align 8
@XML_SUBSTITUTE_REF = common dso_local global i32 0, align 4
@XML_MAX_TEXT_LENGTH = common dso_local global i64 0, align 8
@XML_PARSER_NON_LINEAR = common dso_local global i64 0, align 8
@XML_PARSER_BIG_ENTITY = common dso_local global i64 0, align 8
@XML_ERR_UNDECLARED_ENTITY = common dso_local global i64 0, align 8
@XML_WAR_UNDECLARED_ENTITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, %struct.TYPE_12__*, i64)* @xmlParserEntityCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlParserEntityCheck(%struct.TYPE_11__* %0, i64 %1, %struct.TYPE_12__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = icmp eq %struct.TYPE_11__* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @XML_PARSE_HUGE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %284

23:                                               ; preds = %15
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XML_ERR_ENTITY_LOOP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %284

31:                                               ; preds = %23
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %115

34:                                               ; preds = %31
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XML_INTERNAL_PREDEFINED_ENTITY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %115

40:                                               ; preds = %34
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %115

45:                                               ; preds = %40
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %115

50:                                               ; preds = %45
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @XML_ERR_ENTITY_LOOP, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %115

56:                                               ; preds = %50
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %11, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* @XML_SUBSTITUTE_REF, align 4
  %71 = call i32* @xmlStringDecodeEntities(%struct.TYPE_11__* %66, i64* %69, i32 %70, i32 0, i32 0, i32 0)
  store i32* %71, i32** %12, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %56
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @XML_ERR_ENTITY_LOOP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78, %56
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %84, %78
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %11, align 8
  %94 = sub i64 %92, %93
  %95 = add i64 %94, 1
  %96 = mul i64 %95, 2
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %89
  %103 = load i32*, i32** %12, align 8
  %104 = call i64 @xmlStrchr(i32* %103, i8 signext 60)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %106, %102
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @xmlFree(i32* %112)
  store i32* null, i32** %12, align 8
  br label %114

114:                                              ; preds = %111, %89
  br label %115

115:                                              ; preds = %114, %50, %45, %40, %34, %31
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %159

118:                                              ; preds = %115
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* @XML_MAX_TEXT_LENGTH, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %284

123:                                              ; preds = %118
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = icmp ne %struct.TYPE_9__* %126, null
  br i1 %127, label %128, label %146

128:                                              ; preds = %123
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 5
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = sub i64 %138, %143
  %145 = add i64 %133, %144
  store i64 %145, i64* %10, align 8
  br label %146

146:                                              ; preds = %128, %123
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = add i64 %150, %149
  store i64 %151, i64* %10, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* @XML_PARSER_NON_LINEAR, align 8
  %154 = load i64, i64* %10, align 8
  %155 = mul i64 %153, %154
  %156 = icmp ult i64 %152, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %146
  store i32 0, i32* %5, align 4
  br label %284

158:                                              ; preds = %146
  br label %280

159:                                              ; preds = %115
  %160 = load i64, i64* %7, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %212

162:                                              ; preds = %159
  %163 = load i64, i64* %7, align 8
  %164 = load i64, i64* @XML_PARSER_BIG_ENTITY, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  br label %284

167:                                              ; preds = %162
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = icmp ne %struct.TYPE_9__* %170, null
  br i1 %171, label %172, label %190

172:                                              ; preds = %167
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 5
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 5
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 5
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = sub i64 %182, %187
  %189 = add i64 %177, %188
  store i64 %189, i64* %10, align 8
  br label %190

190:                                              ; preds = %172, %167
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %10, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %10, align 8
  %196 = load i64, i64* %7, align 8
  %197 = load i64, i64* @XML_PARSER_NON_LINEAR, align 8
  %198 = load i64, i64* %10, align 8
  %199 = mul i64 %197, %198
  %200 = icmp ult i64 %196, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %190
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = mul i64 %204, 3
  %206 = load i64, i64* @XML_PARSER_NON_LINEAR, align 8
  %207 = load i64, i64* %10, align 8
  %208 = mul i64 %206, %207
  %209 = icmp ult i64 %205, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %201
  store i32 0, i32* %5, align 4
  br label %284

211:                                              ; preds = %201, %190
  br label %279

212:                                              ; preds = %159
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %214 = icmp ne %struct.TYPE_12__* %213, null
  br i1 %214, label %215, label %257

215:                                              ; preds = %212
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = sdiv i32 %218, 2
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %7, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 5
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %222, align 8
  %224 = icmp ne %struct.TYPE_9__* %223, null
  br i1 %224, label %225, label %243

225:                                              ; preds = %215
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 5
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 5
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 5
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = sub i64 %235, %240
  %242 = add i64 %230, %241
  store i64 %242, i64* %10, align 8
  br label %243

243:                                              ; preds = %225, %215
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* %10, align 8
  %248 = add i64 %247, %246
  store i64 %248, i64* %10, align 8
  %249 = load i64, i64* %7, align 8
  %250 = mul i64 %249, 3
  %251 = load i64, i64* %10, align 8
  %252 = load i64, i64* @XML_PARSER_NON_LINEAR, align 8
  %253 = mul i64 %251, %252
  %254 = icmp ult i64 %250, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %243
  store i32 0, i32* %5, align 4
  br label %284

256:                                              ; preds = %243
  br label %278

257:                                              ; preds = %212
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @XML_ERR_UNDECLARED_ENTITY, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %257
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @XML_WAR_UNDECLARED_ENTITY, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %276, label %271

271:                                              ; preds = %264, %257
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = icmp ule i64 %274, 10000
  br i1 %275, label %276, label %277

276:                                              ; preds = %271, %264
  store i32 0, i32* %5, align 4
  br label %284

277:                                              ; preds = %271
  br label %278

278:                                              ; preds = %277, %256
  br label %279

279:                                              ; preds = %278, %211
  br label %280

280:                                              ; preds = %279, %158
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %282 = load i64, i64* @XML_ERR_ENTITY_LOOP, align 8
  %283 = call i32 @xmlFatalErr(%struct.TYPE_11__* %281, i64 %282, i32* null)
  store i32 1, i32* %5, align 4
  br label %284

284:                                              ; preds = %280, %276, %255, %210, %166, %157, %122, %30, %22
  %285 = load i32, i32* %5, align 4
  ret i32 %285
}

declare dso_local i32* @xmlStringDecodeEntities(%struct.TYPE_11__*, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @xmlStrchr(i32*, i8 signext) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_11__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
