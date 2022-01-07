; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseAttValueInternal.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseAttValueInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i8*, i8* }

@GROW = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i8* null, align 8
@XML_ERR_ATTRIBUTE_NOT_STARTED = common dso_local global i32 0, align 4
@XML_PARSER_ATTRIBUTE_VALUE = common dso_local global i64 0, align 8
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@XML_MAX_TEXT_LENGTH = common dso_local global i32 0, align 4
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_ATTRIBUTE_NOT_FINISHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"AttValue length too long\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i32*, i32*, i32)* @xmlParseAttValueInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xmlParseAttValueInternal(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %10, align 1
  store i8* null, i8** %11, align 8
  store i8* null, i8** %15, align 8
  %28 = load i32, i32* @GROW, align 4
  %29 = load i8*, i8** @CUR_PTR, align 8
  store i8* %29, i8** %11, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %16, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %17, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 34
  br i1 %43, label %44, label %53

44:                                               ; preds = %4
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 39
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = load i32, i32* @XML_ERR_ATTRIBUTE_NOT_STARTED, align 4
  %52 = call i32 @xmlFatalErr(%struct.TYPE_8__* %50, i32 %51, i32* null)
  store i8* null, i8** %5, align 8
  br label %704

53:                                               ; preds = %44, %4
  %54 = load i64, i64* @XML_PARSER_ATTRIBUTE_VALUE, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %11, align 8
  %59 = load i8, i8* %57, align 1
  store i8 %59, i8* %10, align 1
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %11, align 8
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = icmp uge i8* %68, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %53
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %18, align 8
  %77 = load i32, i32* @GROW, align 4
  %78 = load i8*, i8** %18, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %78, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %71
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  store i64 %94, i64* %19, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i64, i64* %19, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %12, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i64, i64* %19, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %11, align 8
  br label %101

101:                                              ; preds = %85, %71
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %13, align 8
  br label %107

107:                                              ; preds = %101, %53
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %510

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %227, %110
  %112 = load i8*, i8** %11, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = icmp ult i8* %112, %113
  br i1 %114, label %115, label %144

115:                                              ; preds = %111
  %116 = load i8*, i8** %11, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8, i8* %10, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %115
  %123 = load i8*, i8** %11, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 32
  br i1 %126, label %142, label %127

127:                                              ; preds = %122
  %128 = load i8*, i8** %11, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 9
  br i1 %131, label %142, label %132

132:                                              ; preds = %127
  %133 = load i8*, i8** %11, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 10
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load i8*, i8** %11, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 13
  br label %142

142:                                              ; preds = %137, %132, %127, %122
  %143 = phi i1 [ true, %132 ], [ true, %127 ], [ true, %122 ], [ %141, %137 ]
  br label %144

144:                                              ; preds = %142, %115, %111
  %145 = phi i1 [ false, %115 ], [ false, %111 ], [ %143, %142 ]
  br i1 %145, label %146, label %228

146:                                              ; preds = %144
  %147 = load i8*, i8** %11, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %157

154:                                              ; preds = %146
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %17, align 4
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %11, align 8
  %160 = load i8*, i8** %11, align 8
  store i8* %160, i8** %12, align 8
  %161 = load i8*, i8** %11, align 8
  %162 = load i8*, i8** %13, align 8
  %163 = icmp uge i8* %161, %162
  br i1 %163, label %164, label %227

164:                                              ; preds = %157
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  store i8* %169, i8** %20, align 8
  %170 = load i32, i32* @GROW, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @XML_PARSER_EOF, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %164
  store i8* null, i8** %5, align 8
  br label %704

177:                                              ; preds = %164
  %178 = load i8*, i8** %20, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %178, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %177
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 3
  %190 = load i8*, i8** %189, align 8
  %191 = load i8*, i8** %20, align 8
  %192 = ptrtoint i8* %190 to i64
  %193 = ptrtoint i8* %191 to i64
  %194 = sub i64 %192, %193
  store i64 %194, i64* %21, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = load i64, i64* %21, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8* %197, i8** %12, align 8
  %198 = load i8*, i8** %11, align 8
  %199 = load i64, i64* %21, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %11, align 8
  br label %201

201:                                              ; preds = %185, %177
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  store i8* %206, i8** %13, align 8
  %207 = load i8*, i8** %11, align 8
  %208 = load i8*, i8** %12, align 8
  %209 = ptrtoint i8* %207 to i64
  %210 = ptrtoint i8* %208 to i64
  %211 = sub i64 %209, %210
  %212 = load i32, i32* @XML_MAX_TEXT_LENGTH, align 4
  %213 = sext i32 %212 to i64
  %214 = icmp sgt i64 %211, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %201
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @XML_PARSE_HUGE, align 4
  %220 = and i32 %218, %219
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %215
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %224 = load i32, i32* @XML_ERR_ATTRIBUTE_NOT_FINISHED, align 4
  %225 = call i32 @xmlFatalErrMsg(%struct.TYPE_8__* %223, i32 %224, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %704

226:                                              ; preds = %215, %201
  br label %227

227:                                              ; preds = %226, %157
  br label %111

228:                                              ; preds = %144
  br label %229

229:                                              ; preds = %343, %228
  %230 = load i8*, i8** %11, align 8
  %231 = load i8*, i8** %13, align 8
  %232 = icmp ult i8* %230, %231
  br i1 %232, label %233, label %260

233:                                              ; preds = %229
  %234 = load i8*, i8** %11, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = load i8, i8* %10, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp ne i32 %236, %238
  br i1 %239, label %240, label %260

240:                                              ; preds = %233
  %241 = load i8*, i8** %11, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp sge i32 %243, 32
  br i1 %244, label %245, label %260

245:                                              ; preds = %240
  %246 = load i8*, i8** %11, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp sle i32 %248, 127
  br i1 %249, label %250, label %260

250:                                              ; preds = %245
  %251 = load i8*, i8** %11, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %253, 38
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load i8*, i8** %11, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp ne i32 %258, 60
  br label %260

260:                                              ; preds = %255, %250, %245, %240, %233, %229
  %261 = phi i1 [ false, %250 ], [ false, %245 ], [ false, %240 ], [ false, %233 ], [ false, %229 ], [ %259, %255 ]
  br i1 %261, label %262, label %344

262:                                              ; preds = %260
  %263 = load i32, i32* %17, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %17, align 4
  %265 = load i8*, i8** %11, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %11, align 8
  %267 = load i8, i8* %265, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 32
  br i1 %269, label %270, label %276

270:                                              ; preds = %262
  %271 = load i8*, i8** %11, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 32
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  br label %344

276:                                              ; preds = %270, %262
  %277 = load i8*, i8** %11, align 8
  %278 = load i8*, i8** %13, align 8
  %279 = icmp uge i8* %277, %278
  br i1 %279, label %280, label %343

280:                                              ; preds = %276
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 3
  %285 = load i8*, i8** %284, align 8
  store i8* %285, i8** %22, align 8
  %286 = load i32, i32* @GROW, align 4
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @XML_PARSER_EOF, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %280
  store i8* null, i8** %5, align 8
  br label %704

293:                                              ; preds = %280
  %294 = load i8*, i8** %22, align 8
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 3
  %299 = load i8*, i8** %298, align 8
  %300 = icmp ne i8* %294, %299
  br i1 %300, label %301, label %317

301:                                              ; preds = %293
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 3
  %306 = load i8*, i8** %305, align 8
  %307 = load i8*, i8** %22, align 8
  %308 = ptrtoint i8* %306 to i64
  %309 = ptrtoint i8* %307 to i64
  %310 = sub i64 %308, %309
  store i64 %310, i64* %23, align 8
  %311 = load i8*, i8** %12, align 8
  %312 = load i64, i64* %23, align 8
  %313 = getelementptr inbounds i8, i8* %311, i64 %312
  store i8* %313, i8** %12, align 8
  %314 = load i8*, i8** %11, align 8
  %315 = load i64, i64* %23, align 8
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  store i8* %316, i8** %11, align 8
  br label %317

317:                                              ; preds = %301, %293
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 2
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 2
  %322 = load i8*, i8** %321, align 8
  store i8* %322, i8** %13, align 8
  %323 = load i8*, i8** %11, align 8
  %324 = load i8*, i8** %12, align 8
  %325 = ptrtoint i8* %323 to i64
  %326 = ptrtoint i8* %324 to i64
  %327 = sub i64 %325, %326
  %328 = load i32, i32* @XML_MAX_TEXT_LENGTH, align 4
  %329 = sext i32 %328 to i64
  %330 = icmp sgt i64 %327, %329
  br i1 %330, label %331, label %342

331:                                              ; preds = %317
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @XML_PARSE_HUGE, align 4
  %336 = and i32 %334, %335
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %331
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %340 = load i32, i32* @XML_ERR_ATTRIBUTE_NOT_FINISHED, align 4
  %341 = call i32 @xmlFatalErrMsg(%struct.TYPE_8__* %339, i32 %340, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %704

342:                                              ; preds = %331, %317
  br label %343

343:                                              ; preds = %342, %276
  br label %229

344:                                              ; preds = %275, %260
  %345 = load i8*, i8** %11, align 8
  store i8* %345, i8** %14, align 8
  br label %346

346:                                              ; preds = %358, %344
  %347 = load i8*, i8** %14, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 -1
  %349 = load i8, i8* %348, align 1
  %350 = sext i8 %349 to i32
  %351 = icmp eq i32 %350, 32
  br i1 %351, label %352, label %356

352:                                              ; preds = %346
  %353 = load i8*, i8** %14, align 8
  %354 = load i8*, i8** %12, align 8
  %355 = icmp ugt i8* %353, %354
  br label %356

356:                                              ; preds = %352, %346
  %357 = phi i1 [ false, %346 ], [ %355, %352 ]
  br i1 %357, label %358, label %361

358:                                              ; preds = %356
  %359 = load i8*, i8** %14, align 8
  %360 = getelementptr inbounds i8, i8* %359, i32 -1
  store i8* %360, i8** %14, align 8
  br label %346

361:                                              ; preds = %356
  br label %362

362:                                              ; preds = %480, %361
  %363 = load i8*, i8** %11, align 8
  %364 = load i8*, i8** %13, align 8
  %365 = icmp ult i8* %363, %364
  br i1 %365, label %366, label %395

366:                                              ; preds = %362
  %367 = load i8*, i8** %11, align 8
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = load i8, i8* %10, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp ne i32 %369, %371
  br i1 %372, label %373, label %395

373:                                              ; preds = %366
  %374 = load i8*, i8** %11, align 8
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = icmp eq i32 %376, 32
  br i1 %377, label %393, label %378

378:                                              ; preds = %373
  %379 = load i8*, i8** %11, align 8
  %380 = load i8, i8* %379, align 1
  %381 = sext i8 %380 to i32
  %382 = icmp eq i32 %381, 9
  br i1 %382, label %393, label %383

383:                                              ; preds = %378
  %384 = load i8*, i8** %11, align 8
  %385 = load i8, i8* %384, align 1
  %386 = sext i8 %385 to i32
  %387 = icmp eq i32 %386, 10
  br i1 %387, label %393, label %388

388:                                              ; preds = %383
  %389 = load i8*, i8** %11, align 8
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = icmp eq i32 %391, 13
  br label %393

393:                                              ; preds = %388, %383, %378, %373
  %394 = phi i1 [ true, %383 ], [ true, %378 ], [ true, %373 ], [ %392, %388 ]
  br label %395

395:                                              ; preds = %393, %366, %362
  %396 = phi i1 [ false, %366 ], [ false, %362 ], [ %394, %393 ]
  br i1 %396, label %397, label %481

397:                                              ; preds = %395
  %398 = load i8*, i8** %11, align 8
  %399 = load i8, i8* %398, align 1
  %400 = sext i8 %399 to i32
  %401 = icmp eq i32 %400, 10
  br i1 %401, label %402, label %405

402:                                              ; preds = %397
  %403 = load i32, i32* %16, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %408

405:                                              ; preds = %397
  %406 = load i32, i32* %17, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %17, align 4
  br label %408

408:                                              ; preds = %405, %402
  %409 = load i8*, i8** %11, align 8
  %410 = getelementptr inbounds i8, i8* %409, i32 1
  store i8* %410, i8** %11, align 8
  %411 = load i8*, i8** %11, align 8
  %412 = load i8*, i8** %13, align 8
  %413 = icmp uge i8* %411, %412
  br i1 %413, label %414, label %480

414:                                              ; preds = %408
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 2
  %417 = load %struct.TYPE_7__*, %struct.TYPE_7__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i32 0, i32 3
  %419 = load i8*, i8** %418, align 8
  store i8* %419, i8** %24, align 8
  %420 = load i32, i32* @GROW, align 4
  %421 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @XML_PARSER_EOF, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %427

426:                                              ; preds = %414
  store i8* null, i8** %5, align 8
  br label %704

427:                                              ; preds = %414
  %428 = load i8*, i8** %24, align 8
  %429 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %429, i32 0, i32 2
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 3
  %433 = load i8*, i8** %432, align 8
  %434 = icmp ne i8* %428, %433
  br i1 %434, label %435, label %454

435:                                              ; preds = %427
  %436 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 2
  %438 = load %struct.TYPE_7__*, %struct.TYPE_7__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %438, i32 0, i32 3
  %440 = load i8*, i8** %439, align 8
  %441 = load i8*, i8** %24, align 8
  %442 = ptrtoint i8* %440 to i64
  %443 = ptrtoint i8* %441 to i64
  %444 = sub i64 %442, %443
  store i64 %444, i64* %25, align 8
  %445 = load i8*, i8** %12, align 8
  %446 = load i64, i64* %25, align 8
  %447 = getelementptr inbounds i8, i8* %445, i64 %446
  store i8* %447, i8** %12, align 8
  %448 = load i8*, i8** %11, align 8
  %449 = load i64, i64* %25, align 8
  %450 = getelementptr inbounds i8, i8* %448, i64 %449
  store i8* %450, i8** %11, align 8
  %451 = load i8*, i8** %14, align 8
  %452 = load i64, i64* %25, align 8
  %453 = getelementptr inbounds i8, i8* %451, i64 %452
  store i8* %453, i8** %14, align 8
  br label %454

454:                                              ; preds = %435, %427
  %455 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 2
  %457 = load %struct.TYPE_7__*, %struct.TYPE_7__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %457, i32 0, i32 2
  %459 = load i8*, i8** %458, align 8
  store i8* %459, i8** %13, align 8
  %460 = load i8*, i8** %11, align 8
  %461 = load i8*, i8** %12, align 8
  %462 = ptrtoint i8* %460 to i64
  %463 = ptrtoint i8* %461 to i64
  %464 = sub i64 %462, %463
  %465 = load i32, i32* @XML_MAX_TEXT_LENGTH, align 4
  %466 = sext i32 %465 to i64
  %467 = icmp sgt i64 %464, %466
  br i1 %467, label %468, label %479

468:                                              ; preds = %454
  %469 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %470 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = load i32, i32* @XML_PARSE_HUGE, align 4
  %473 = and i32 %471, %472
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %468
  %476 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %477 = load i32, i32* @XML_ERR_ATTRIBUTE_NOT_FINISHED, align 4
  %478 = call i32 @xmlFatalErrMsg(%struct.TYPE_8__* %476, i32 %477, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %704

479:                                              ; preds = %468, %454
  br label %480

480:                                              ; preds = %479, %408
  br label %362

481:                                              ; preds = %395
  %482 = load i8*, i8** %11, align 8
  %483 = load i8*, i8** %12, align 8
  %484 = ptrtoint i8* %482 to i64
  %485 = ptrtoint i8* %483 to i64
  %486 = sub i64 %484, %485
  %487 = load i32, i32* @XML_MAX_TEXT_LENGTH, align 4
  %488 = sext i32 %487 to i64
  %489 = icmp sgt i64 %486, %488
  br i1 %489, label %490, label %501

490:                                              ; preds = %481
  %491 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %492 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 8
  %494 = load i32, i32* @XML_PARSE_HUGE, align 4
  %495 = and i32 %493, %494
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %501

497:                                              ; preds = %490
  %498 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %499 = load i32, i32* @XML_ERR_ATTRIBUTE_NOT_FINISHED, align 4
  %500 = call i32 @xmlFatalErrMsg(%struct.TYPE_8__* %498, i32 %499, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %704

501:                                              ; preds = %490, %481
  %502 = load i8*, i8** %11, align 8
  %503 = load i8, i8* %502, align 1
  %504 = sext i8 %503 to i32
  %505 = load i8, i8* %10, align 1
  %506 = sext i8 %505 to i32
  %507 = icmp ne i32 %504, %506
  br i1 %507, label %508, label %509

508:                                              ; preds = %501
  br label %694

509:                                              ; preds = %501
  br label %646

510:                                              ; preds = %107
  br label %511

511:                                              ; preds = %615, %510
  %512 = load i8*, i8** %11, align 8
  %513 = load i8*, i8** %13, align 8
  %514 = icmp ult i8* %512, %513
  br i1 %514, label %515, label %542

515:                                              ; preds = %511
  %516 = load i8*, i8** %11, align 8
  %517 = load i8, i8* %516, align 1
  %518 = sext i8 %517 to i32
  %519 = load i8, i8* %10, align 1
  %520 = sext i8 %519 to i32
  %521 = icmp ne i32 %518, %520
  br i1 %521, label %522, label %542

522:                                              ; preds = %515
  %523 = load i8*, i8** %11, align 8
  %524 = load i8, i8* %523, align 1
  %525 = sext i8 %524 to i32
  %526 = icmp sge i32 %525, 32
  br i1 %526, label %527, label %542

527:                                              ; preds = %522
  %528 = load i8*, i8** %11, align 8
  %529 = load i8, i8* %528, align 1
  %530 = sext i8 %529 to i32
  %531 = icmp sle i32 %530, 127
  br i1 %531, label %532, label %542

532:                                              ; preds = %527
  %533 = load i8*, i8** %11, align 8
  %534 = load i8, i8* %533, align 1
  %535 = sext i8 %534 to i32
  %536 = icmp ne i32 %535, 38
  br i1 %536, label %537, label %542

537:                                              ; preds = %532
  %538 = load i8*, i8** %11, align 8
  %539 = load i8, i8* %538, align 1
  %540 = sext i8 %539 to i32
  %541 = icmp ne i32 %540, 60
  br label %542

542:                                              ; preds = %537, %532, %527, %522, %515, %511
  %543 = phi i1 [ false, %532 ], [ false, %527 ], [ false, %522 ], [ false, %515 ], [ false, %511 ], [ %541, %537 ]
  br i1 %543, label %544, label %616

544:                                              ; preds = %542
  %545 = load i8*, i8** %11, align 8
  %546 = getelementptr inbounds i8, i8* %545, i32 1
  store i8* %546, i8** %11, align 8
  %547 = load i32, i32* %17, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %17, align 4
  %549 = load i8*, i8** %11, align 8
  %550 = load i8*, i8** %13, align 8
  %551 = icmp uge i8* %549, %550
  br i1 %551, label %552, label %615

552:                                              ; preds = %544
  %553 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %554 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %553, i32 0, i32 2
  %555 = load %struct.TYPE_7__*, %struct.TYPE_7__** %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %555, i32 0, i32 3
  %557 = load i8*, i8** %556, align 8
  store i8* %557, i8** %26, align 8
  %558 = load i32, i32* @GROW, align 4
  %559 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %560 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = load i64, i64* @XML_PARSER_EOF, align 8
  %563 = icmp eq i64 %561, %562
  br i1 %563, label %564, label %565

564:                                              ; preds = %552
  store i8* null, i8** %5, align 8
  br label %704

565:                                              ; preds = %552
  %566 = load i8*, i8** %26, align 8
  %567 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %568 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %567, i32 0, i32 2
  %569 = load %struct.TYPE_7__*, %struct.TYPE_7__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %569, i32 0, i32 3
  %571 = load i8*, i8** %570, align 8
  %572 = icmp ne i8* %566, %571
  br i1 %572, label %573, label %589

573:                                              ; preds = %565
  %574 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %575 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %574, i32 0, i32 2
  %576 = load %struct.TYPE_7__*, %struct.TYPE_7__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %576, i32 0, i32 3
  %578 = load i8*, i8** %577, align 8
  %579 = load i8*, i8** %26, align 8
  %580 = ptrtoint i8* %578 to i64
  %581 = ptrtoint i8* %579 to i64
  %582 = sub i64 %580, %581
  store i64 %582, i64* %27, align 8
  %583 = load i8*, i8** %12, align 8
  %584 = load i64, i64* %27, align 8
  %585 = getelementptr inbounds i8, i8* %583, i64 %584
  store i8* %585, i8** %12, align 8
  %586 = load i8*, i8** %11, align 8
  %587 = load i64, i64* %27, align 8
  %588 = getelementptr inbounds i8, i8* %586, i64 %587
  store i8* %588, i8** %11, align 8
  br label %589

589:                                              ; preds = %573, %565
  %590 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %591 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %590, i32 0, i32 2
  %592 = load %struct.TYPE_7__*, %struct.TYPE_7__** %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %592, i32 0, i32 2
  %594 = load i8*, i8** %593, align 8
  store i8* %594, i8** %13, align 8
  %595 = load i8*, i8** %11, align 8
  %596 = load i8*, i8** %12, align 8
  %597 = ptrtoint i8* %595 to i64
  %598 = ptrtoint i8* %596 to i64
  %599 = sub i64 %597, %598
  %600 = load i32, i32* @XML_MAX_TEXT_LENGTH, align 4
  %601 = sext i32 %600 to i64
  %602 = icmp sgt i64 %599, %601
  br i1 %602, label %603, label %614

603:                                              ; preds = %589
  %604 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %605 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %604, i32 0, i32 1
  %606 = load i32, i32* %605, align 8
  %607 = load i32, i32* @XML_PARSE_HUGE, align 4
  %608 = and i32 %606, %607
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %614

610:                                              ; preds = %603
  %611 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %612 = load i32, i32* @XML_ERR_ATTRIBUTE_NOT_FINISHED, align 4
  %613 = call i32 @xmlFatalErrMsg(%struct.TYPE_8__* %611, i32 %612, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %704

614:                                              ; preds = %603, %589
  br label %615

615:                                              ; preds = %614, %544
  br label %511

616:                                              ; preds = %542
  %617 = load i8*, i8** %11, align 8
  store i8* %617, i8** %14, align 8
  %618 = load i8*, i8** %11, align 8
  %619 = load i8*, i8** %12, align 8
  %620 = ptrtoint i8* %618 to i64
  %621 = ptrtoint i8* %619 to i64
  %622 = sub i64 %620, %621
  %623 = load i32, i32* @XML_MAX_TEXT_LENGTH, align 4
  %624 = sext i32 %623 to i64
  %625 = icmp sgt i64 %622, %624
  br i1 %625, label %626, label %637

626:                                              ; preds = %616
  %627 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %628 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 8
  %630 = load i32, i32* @XML_PARSE_HUGE, align 4
  %631 = and i32 %629, %630
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %633, label %637

633:                                              ; preds = %626
  %634 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %635 = load i32, i32* @XML_ERR_ATTRIBUTE_NOT_FINISHED, align 4
  %636 = call i32 @xmlFatalErrMsg(%struct.TYPE_8__* %634, i32 %635, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %704

637:                                              ; preds = %626, %616
  %638 = load i8*, i8** %11, align 8
  %639 = load i8, i8* %638, align 1
  %640 = sext i8 %639 to i32
  %641 = load i8, i8* %10, align 1
  %642 = sext i8 %641 to i32
  %643 = icmp ne i32 %640, %642
  br i1 %643, label %644, label %645

644:                                              ; preds = %637
  br label %694

645:                                              ; preds = %637
  br label %646

646:                                              ; preds = %645, %509
  %647 = load i8*, i8** %11, align 8
  %648 = getelementptr inbounds i8, i8* %647, i32 1
  store i8* %648, i8** %11, align 8
  %649 = load i32, i32* %17, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %17, align 4
  %651 = load i32*, i32** %7, align 8
  %652 = icmp ne i32* %651, null
  br i1 %652, label %653, label %662

653:                                              ; preds = %646
  %654 = load i8*, i8** %14, align 8
  %655 = load i8*, i8** %12, align 8
  %656 = ptrtoint i8* %654 to i64
  %657 = ptrtoint i8* %655 to i64
  %658 = sub i64 %656, %657
  %659 = trunc i64 %658 to i32
  %660 = load i32*, i32** %7, align 8
  store i32 %659, i32* %660, align 4
  %661 = load i8*, i8** %12, align 8
  store i8* %661, i8** %15, align 8
  br label %676

662:                                              ; preds = %646
  %663 = load i32*, i32** %8, align 8
  %664 = icmp ne i32* %663, null
  br i1 %664, label %665, label %667

665:                                              ; preds = %662
  %666 = load i32*, i32** %8, align 8
  store i32 1, i32* %666, align 4
  br label %667

667:                                              ; preds = %665, %662
  %668 = load i8*, i8** %12, align 8
  %669 = load i8*, i8** %14, align 8
  %670 = load i8*, i8** %12, align 8
  %671 = ptrtoint i8* %669 to i64
  %672 = ptrtoint i8* %670 to i64
  %673 = sub i64 %671, %672
  %674 = trunc i64 %673 to i32
  %675 = call i8* @xmlStrndup(i8* %668, i32 %674)
  store i8* %675, i8** %15, align 8
  br label %676

676:                                              ; preds = %667, %653
  %677 = load i8*, i8** %11, align 8
  store i8* %677, i8** @CUR_PTR, align 8
  %678 = load i32, i32* %16, align 4
  %679 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %680 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %679, i32 0, i32 2
  %681 = load %struct.TYPE_7__*, %struct.TYPE_7__** %680, align 8
  %682 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %681, i32 0, i32 0
  store i32 %678, i32* %682, align 8
  %683 = load i32, i32* %17, align 4
  %684 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %685 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %684, i32 0, i32 2
  %686 = load %struct.TYPE_7__*, %struct.TYPE_7__** %685, align 8
  %687 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %686, i32 0, i32 1
  store i32 %683, i32* %687, align 4
  %688 = load i32*, i32** %8, align 8
  %689 = icmp ne i32* %688, null
  br i1 %689, label %690, label %692

690:                                              ; preds = %676
  %691 = load i32*, i32** %8, align 8
  store i32 0, i32* %691, align 4
  br label %692

692:                                              ; preds = %690, %676
  %693 = load i8*, i8** %15, align 8
  store i8* %693, i8** %5, align 8
  br label %704

694:                                              ; preds = %644, %508
  %695 = load i32*, i32** %8, align 8
  %696 = icmp ne i32* %695, null
  br i1 %696, label %697, label %699

697:                                              ; preds = %694
  %698 = load i32*, i32** %8, align 8
  store i32 1, i32* %698, align 4
  br label %699

699:                                              ; preds = %697, %694
  %700 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %701 = load i32*, i32** %7, align 8
  %702 = load i32, i32* %9, align 4
  %703 = call i8* @xmlParseAttValueComplex(%struct.TYPE_8__* %700, i32* %701, i32 %702)
  store i8* %703, i8** %5, align 8
  br label %704

704:                                              ; preds = %699, %692, %633, %610, %564, %497, %475, %426, %338, %292, %222, %176, %49
  %705 = load i8*, i8** %5, align 8
  ret i8* %705
}

declare dso_local i32 @xmlFatalErr(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i8* @xmlStrndup(i8*, i32) #1

declare dso_local i8* @xmlParseAttValueComplex(%struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
