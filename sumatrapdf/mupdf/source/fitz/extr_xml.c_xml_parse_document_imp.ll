; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_xml_parse_document_imp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_xml_parse_document_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"syntax error in element\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"syntax error in comment (<! not followed by --)\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"syntax error in comment (<!- not followed by -)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"end of data in comment\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"end of data in declaration\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"syntax error in CDATA section\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"end of data in CDATA section\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"end of data in processing instruction\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"syntax error in closing element\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"syntax error after element name\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"syntax error in attributes\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"syntax error after attribute name\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"missing quote character\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"end of data in attribute value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.parser*, i8*)* @xml_parse_document_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xml_parse_document_imp(i32* %0, %struct.parser* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.parser*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.parser* %1, %struct.parser** %6, align 8
  store i8* %2, i8** %7, align 8
  br label %12

12:                                               ; preds = %540, %527, %477, %464, %416, %360, %331, %265, %247, %3
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %8, align 8
  br label %14

14:                                               ; preds = %26, %12
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 60
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  br label %14

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 60
  br i1 %33, label %34, label %72

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 -1
  %44 = icmp ult i8* %41, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 -1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.parser*, %struct.parser** %6, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 -1
  %57 = call i32 @xml_emit_text(i32* %52, %struct.parser* %53, i8* %54, i8* %56)
  br label %69

58:                                               ; preds = %45, %40, %34
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = icmp ult i8* %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.parser*, %struct.parser** %6, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @xml_emit_text(i32* %63, %struct.parser* %64, i8* %65, i8* %66)
  br label %68

68:                                               ; preds = %62, %58
  br label %69

69:                                               ; preds = %68, %51
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  br label %84

72:                                               ; preds = %29
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ult i8* %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.parser*, %struct.parser** %6, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @xml_emit_text(i32* %77, %struct.parser* %78, i8* %79, i8* %80)
  br label %82

82:                                               ; preds = %76, %72
  br label %83

83:                                               ; preds = %82
  store i8* null, i8** %4, align 8
  br label %633

84:                                               ; preds = %69
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 47
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %7, align 8
  br label %367

92:                                               ; preds = %84
  %93 = load i8*, i8** %7, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 33
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %7, align 8
  br label %124

100:                                              ; preds = %92
  %101 = load i8*, i8** %7, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 63
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %7, align 8
  br label %343

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %114, %108
  %110 = load i8*, i8** %7, align 8
  %111 = load i8, i8* %110, align 1
  %112 = call i64 @iswhite(i8 signext %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %7, align 8
  br label %109

117:                                              ; preds = %109
  %118 = load i8*, i8** %7, align 8
  %119 = load i8, i8* %118, align 1
  %120 = call i64 @isname(i8 signext %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %419

123:                                              ; preds = %117
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %633

124:                                              ; preds = %97
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 68
  br i1 %129, label %130, label %167

130:                                              ; preds = %124
  %131 = load i8*, i8** %7, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 79
  br i1 %135, label %136, label %167

136:                                              ; preds = %130
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 67
  br i1 %141, label %142, label %167

142:                                              ; preds = %136
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 3
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 84
  br i1 %147, label %148, label %167

148:                                              ; preds = %142
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 4
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 89
  br i1 %153, label %154, label %167

154:                                              ; preds = %148
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 5
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 80
  br i1 %159, label %160, label %167

160:                                              ; preds = %154
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 6
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 69
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %254

167:                                              ; preds = %160, %154, %148, %142, %136, %130, %124
  %168 = load i8*, i8** %7, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 69
  br i1 %172, label %173, label %204

173:                                              ; preds = %167
  %174 = load i8*, i8** %7, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 78
  br i1 %178, label %179, label %204

179:                                              ; preds = %173
  %180 = load i8*, i8** %7, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 2
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 84
  br i1 %184, label %185, label %204

185:                                              ; preds = %179
  %186 = load i8*, i8** %7, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 3
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 73
  br i1 %190, label %191, label %204

191:                                              ; preds = %185
  %192 = load i8*, i8** %7, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 4
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 84
  br i1 %196, label %197, label %204

197:                                              ; preds = %191
  %198 = load i8*, i8** %7, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 5
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 89
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  br label %254

204:                                              ; preds = %197, %191, %185, %179, %173, %167
  %205 = load i8*, i8** %7, align 8
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 91
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %268

210:                                              ; preds = %204
  %211 = load i8*, i8** %7, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %7, align 8
  %213 = load i8, i8* %211, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp ne i32 %214, 45
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %633

217:                                              ; preds = %210
  %218 = load i8*, i8** %7, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %7, align 8
  %220 = load i8, i8* %218, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp ne i32 %221, 45
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %633

224:                                              ; preds = %217
  br label %225

225:                                              ; preds = %250, %224
  %226 = load i8*, i8** %7, align 8
  %227 = load i8, i8* %226, align 1
  %228 = icmp ne i8 %227, 0
  br i1 %228, label %229, label %253

229:                                              ; preds = %225
  %230 = load i8*, i8** %7, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 0
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 45
  br i1 %234, label %235, label %250

235:                                              ; preds = %229
  %236 = load i8*, i8** %7, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 1
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 45
  br i1 %240, label %241, label %250

241:                                              ; preds = %235
  %242 = load i8*, i8** %7, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 2
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 62
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = load i8*, i8** %7, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 3
  store i8* %249, i8** %7, align 8
  br label %12

250:                                              ; preds = %241, %235, %229
  %251 = load i8*, i8** %7, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %7, align 8
  br label %225

253:                                              ; preds = %225
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %633

254:                                              ; preds = %203, %166
  br label %255

255:                                              ; preds = %266, %254
  %256 = load i8*, i8** %7, align 8
  %257 = load i8, i8* %256, align 1
  %258 = icmp ne i8 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %255
  %260 = load i8*, i8** %7, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %7, align 8
  %262 = load i8, i8* %260, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 62
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  br label %12

266:                                              ; preds = %259
  br label %255

267:                                              ; preds = %255
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %633

268:                                              ; preds = %209
  %269 = load i8*, i8** %7, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 1
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp ne i32 %272, 67
  br i1 %273, label %304, label %274

274:                                              ; preds = %268
  %275 = load i8*, i8** %7, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 2
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp ne i32 %278, 68
  br i1 %279, label %304, label %280

280:                                              ; preds = %274
  %281 = load i8*, i8** %7, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 3
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp ne i32 %284, 65
  br i1 %285, label %304, label %286

286:                                              ; preds = %280
  %287 = load i8*, i8** %7, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 4
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp ne i32 %290, 84
  br i1 %291, label %304, label %292

292:                                              ; preds = %286
  %293 = load i8*, i8** %7, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 5
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp ne i32 %296, 65
  br i1 %297, label %304, label %298

298:                                              ; preds = %292
  %299 = load i8*, i8** %7, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 6
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp ne i32 %302, 91
  br i1 %303, label %304, label %305

304:                                              ; preds = %298, %292, %286, %280, %274, %268
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %633

305:                                              ; preds = %298
  %306 = load i8*, i8** %7, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 7
  store i8* %307, i8** %7, align 8
  %308 = load i8*, i8** %7, align 8
  store i8* %308, i8** %8, align 8
  br label %309

309:                                              ; preds = %339, %305
  %310 = load i8*, i8** %7, align 8
  %311 = load i8, i8* %310, align 1
  %312 = icmp ne i8 %311, 0
  br i1 %312, label %313, label %342

313:                                              ; preds = %309
  %314 = load i8*, i8** %7, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 0
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 93
  br i1 %318, label %319, label %339

319:                                              ; preds = %313
  %320 = load i8*, i8** %7, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 1
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp eq i32 %323, 93
  br i1 %324, label %325, label %339

325:                                              ; preds = %319
  %326 = load i8*, i8** %7, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 2
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = icmp eq i32 %329, 62
  br i1 %330, label %331, label %339

331:                                              ; preds = %325
  %332 = load i32*, i32** %5, align 8
  %333 = load %struct.parser*, %struct.parser** %6, align 8
  %334 = load i8*, i8** %8, align 8
  %335 = load i8*, i8** %7, align 8
  %336 = call i32 @xml_emit_cdata(i32* %332, %struct.parser* %333, i8* %334, i8* %335)
  %337 = load i8*, i8** %7, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 3
  store i8* %338, i8** %7, align 8
  br label %12

339:                                              ; preds = %325, %319, %313
  %340 = load i8*, i8** %7, align 8
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %7, align 8
  br label %309

342:                                              ; preds = %309
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %633

343:                                              ; preds = %105
  br label %344

344:                                              ; preds = %363, %343
  %345 = load i8*, i8** %7, align 8
  %346 = load i8, i8* %345, align 1
  %347 = icmp ne i8 %346, 0
  br i1 %347, label %348, label %366

348:                                              ; preds = %344
  %349 = load i8*, i8** %7, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 0
  %351 = load i8, i8* %350, align 1
  %352 = sext i8 %351 to i32
  %353 = icmp eq i32 %352, 63
  br i1 %353, label %354, label %363

354:                                              ; preds = %348
  %355 = load i8*, i8** %7, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 1
  %357 = load i8, i8* %356, align 1
  %358 = sext i8 %357 to i32
  %359 = icmp eq i32 %358, 62
  br i1 %359, label %360, label %363

360:                                              ; preds = %354
  %361 = load i8*, i8** %7, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 2
  store i8* %362, i8** %7, align 8
  br label %12

363:                                              ; preds = %354, %348
  %364 = load i8*, i8** %7, align 8
  %365 = getelementptr inbounds i8, i8* %364, i32 1
  store i8* %365, i8** %7, align 8
  br label %344

366:                                              ; preds = %344
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %633

367:                                              ; preds = %89
  br label %368

368:                                              ; preds = %373, %367
  %369 = load i8*, i8** %7, align 8
  %370 = load i8, i8* %369, align 1
  %371 = call i64 @iswhite(i8 signext %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %368
  %374 = load i8*, i8** %7, align 8
  %375 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %375, i8** %7, align 8
  br label %368

376:                                              ; preds = %368
  %377 = load i8*, i8** %7, align 8
  store i8* %377, i8** %8, align 8
  br label %378

378:                                              ; preds = %383, %376
  %379 = load i8*, i8** %7, align 8
  %380 = load i8, i8* %379, align 1
  %381 = call i64 @isname(i8 signext %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %378
  %384 = load i8*, i8** %7, align 8
  %385 = getelementptr inbounds i8, i8* %384, i32 1
  store i8* %385, i8** %7, align 8
  br label %378

386:                                              ; preds = %378
  %387 = load i8*, i8** %7, align 8
  store i8* %387, i8** %11, align 8
  br label %388

388:                                              ; preds = %393, %386
  %389 = load i8*, i8** %7, align 8
  %390 = load i8, i8* %389, align 1
  %391 = call i64 @iswhite(i8 signext %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %388
  %394 = load i8*, i8** %7, align 8
  %395 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %395, i8** %7, align 8
  br label %388

396:                                              ; preds = %388
  %397 = load i8*, i8** %7, align 8
  %398 = load i8, i8* %397, align 1
  %399 = sext i8 %398 to i32
  %400 = icmp ne i32 %399, 62
  br i1 %400, label %401, label %402

401:                                              ; preds = %396
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %633

402:                                              ; preds = %396
  %403 = load i8*, i8** %8, align 8
  %404 = load i8*, i8** %11, align 8
  %405 = call i8* @skip_namespace_prefix(i8* %403, i8* %404)
  store i8* %405, i8** %8, align 8
  %406 = load i32*, i32** %5, align 8
  %407 = load %struct.parser*, %struct.parser** %6, align 8
  %408 = load i8*, i8** %8, align 8
  %409 = load i8*, i8** %11, align 8
  %410 = call i64 @pop_to_tag(i32* %406, %struct.parser* %407, i8* %408, i8* %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %402
  %413 = load i32*, i32** %5, align 8
  %414 = load %struct.parser*, %struct.parser** %6, align 8
  %415 = call i32 @xml_emit_close_tag(i32* %413, %struct.parser* %414)
  br label %416

416:                                              ; preds = %412, %402
  %417 = load i8*, i8** %7, align 8
  %418 = getelementptr inbounds i8, i8* %417, i32 1
  store i8* %418, i8** %7, align 8
  br label %12

419:                                              ; preds = %122
  %420 = load i8*, i8** %7, align 8
  store i8* %420, i8** %8, align 8
  br label %421

421:                                              ; preds = %426, %419
  %422 = load i8*, i8** %7, align 8
  %423 = load i8, i8* %422, align 1
  %424 = call i64 @isname(i8 signext %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %421
  %427 = load i8*, i8** %7, align 8
  %428 = getelementptr inbounds i8, i8* %427, i32 1
  store i8* %428, i8** %7, align 8
  br label %421

429:                                              ; preds = %421
  %430 = load i8*, i8** %8, align 8
  %431 = load i8*, i8** %7, align 8
  %432 = call i8* @skip_namespace_prefix(i8* %430, i8* %431)
  store i8* %432, i8** %8, align 8
  %433 = load i32*, i32** %5, align 8
  %434 = load %struct.parser*, %struct.parser** %6, align 8
  %435 = load i8*, i8** %8, align 8
  %436 = load i8*, i8** %7, align 8
  %437 = call i32 @pre_open_tag(i32* %433, %struct.parser* %434, i8* %435, i8* %436)
  %438 = load i32*, i32** %5, align 8
  %439 = load %struct.parser*, %struct.parser** %6, align 8
  %440 = load i8*, i8** %8, align 8
  %441 = load i8*, i8** %7, align 8
  %442 = call i32 @xml_emit_open_tag(i32* %438, %struct.parser* %439, i8* %440, i8* %441, i32 0)
  store i32 %442, i32* %10, align 4
  %443 = load i8*, i8** %7, align 8
  %444 = load i8, i8* %443, align 1
  %445 = sext i8 %444 to i32
  %446 = icmp eq i32 %445, 62
  br i1 %446, label %447, label %465

447:                                              ; preds = %429
  %448 = load i32, i32* %10, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %454

450:                                              ; preds = %447
  %451 = load i32*, i32** %5, align 8
  %452 = load %struct.parser*, %struct.parser** %6, align 8
  %453 = call i32 @xml_emit_close_tag(i32* %451, %struct.parser* %452)
  br label %454

454:                                              ; preds = %450, %447
  %455 = load i8*, i8** %7, align 8
  %456 = getelementptr inbounds i8, i8* %455, i32 1
  store i8* %456, i8** %7, align 8
  %457 = load i8*, i8** %7, align 8
  %458 = load i8, i8* %457, align 1
  %459 = sext i8 %458 to i32
  %460 = icmp eq i32 %459, 10
  br i1 %460, label %461, label %464

461:                                              ; preds = %454
  %462 = load i8*, i8** %7, align 8
  %463 = getelementptr inbounds i8, i8* %462, i32 1
  store i8* %463, i8** %7, align 8
  br label %464

464:                                              ; preds = %461, %454
  br label %12

465:                                              ; preds = %429
  %466 = load i8*, i8** %7, align 8
  %467 = getelementptr inbounds i8, i8* %466, i64 0
  %468 = load i8, i8* %467, align 1
  %469 = sext i8 %468 to i32
  %470 = icmp eq i32 %469, 47
  br i1 %470, label %471, label %483

471:                                              ; preds = %465
  %472 = load i8*, i8** %7, align 8
  %473 = getelementptr inbounds i8, i8* %472, i64 1
  %474 = load i8, i8* %473, align 1
  %475 = sext i8 %474 to i32
  %476 = icmp eq i32 %475, 62
  br i1 %476, label %477, label %483

477:                                              ; preds = %471
  %478 = load i32*, i32** %5, align 8
  %479 = load %struct.parser*, %struct.parser** %6, align 8
  %480 = call i32 @xml_emit_close_tag(i32* %478, %struct.parser* %479)
  %481 = load i8*, i8** %7, align 8
  %482 = getelementptr inbounds i8, i8* %481, i64 2
  store i8* %482, i8** %7, align 8
  br label %12

483:                                              ; preds = %471, %465
  %484 = load i8*, i8** %7, align 8
  %485 = load i8, i8* %484, align 1
  %486 = call i64 @iswhite(i8 signext %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %489

488:                                              ; preds = %483
  br label %490

489:                                              ; preds = %483
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  br label %633

490:                                              ; preds = %624, %488
  br label %491

491:                                              ; preds = %496, %490
  %492 = load i8*, i8** %7, align 8
  %493 = load i8, i8* %492, align 1
  %494 = call i64 @iswhite(i8 signext %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %491
  %497 = load i8*, i8** %7, align 8
  %498 = getelementptr inbounds i8, i8* %497, i32 1
  store i8* %498, i8** %7, align 8
  br label %491

499:                                              ; preds = %491
  %500 = load i8*, i8** %7, align 8
  %501 = load i8, i8* %500, align 1
  %502 = call i64 @isname(i8 signext %501)
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %499
  br label %547

505:                                              ; preds = %499
  %506 = load i8*, i8** %7, align 8
  %507 = load i8, i8* %506, align 1
  %508 = sext i8 %507 to i32
  %509 = icmp eq i32 %508, 62
  br i1 %509, label %510, label %528

510:                                              ; preds = %505
  %511 = load i32, i32* %10, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %517

513:                                              ; preds = %510
  %514 = load i32*, i32** %5, align 8
  %515 = load %struct.parser*, %struct.parser** %6, align 8
  %516 = call i32 @xml_emit_close_tag(i32* %514, %struct.parser* %515)
  br label %517

517:                                              ; preds = %513, %510
  %518 = load i8*, i8** %7, align 8
  %519 = getelementptr inbounds i8, i8* %518, i32 1
  store i8* %519, i8** %7, align 8
  %520 = load i8*, i8** %7, align 8
  %521 = load i8, i8* %520, align 1
  %522 = sext i8 %521 to i32
  %523 = icmp eq i32 %522, 10
  br i1 %523, label %524, label %527

524:                                              ; preds = %517
  %525 = load i8*, i8** %7, align 8
  %526 = getelementptr inbounds i8, i8* %525, i32 1
  store i8* %526, i8** %7, align 8
  br label %527

527:                                              ; preds = %524, %517
  br label %12

528:                                              ; preds = %505
  %529 = load i8*, i8** %7, align 8
  %530 = getelementptr inbounds i8, i8* %529, i64 0
  %531 = load i8, i8* %530, align 1
  %532 = sext i8 %531 to i32
  %533 = icmp eq i32 %532, 47
  br i1 %533, label %534, label %546

534:                                              ; preds = %528
  %535 = load i8*, i8** %7, align 8
  %536 = getelementptr inbounds i8, i8* %535, i64 1
  %537 = load i8, i8* %536, align 1
  %538 = sext i8 %537 to i32
  %539 = icmp eq i32 %538, 62
  br i1 %539, label %540, label %546

540:                                              ; preds = %534
  %541 = load i32*, i32** %5, align 8
  %542 = load %struct.parser*, %struct.parser** %6, align 8
  %543 = call i32 @xml_emit_close_tag(i32* %541, %struct.parser* %542)
  %544 = load i8*, i8** %7, align 8
  %545 = getelementptr inbounds i8, i8* %544, i64 2
  store i8* %545, i8** %7, align 8
  br label %12

546:                                              ; preds = %534, %528
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %633

547:                                              ; preds = %504
  %548 = load i8*, i8** %7, align 8
  store i8* %548, i8** %8, align 8
  br label %549

549:                                              ; preds = %554, %547
  %550 = load i8*, i8** %7, align 8
  %551 = load i8, i8* %550, align 1
  %552 = call i64 @isname(i8 signext %551)
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %557

554:                                              ; preds = %549
  %555 = load i8*, i8** %7, align 8
  %556 = getelementptr inbounds i8, i8* %555, i32 1
  store i8* %556, i8** %7, align 8
  br label %549

557:                                              ; preds = %549
  %558 = load i32*, i32** %5, align 8
  %559 = load %struct.parser*, %struct.parser** %6, align 8
  %560 = load i8*, i8** %8, align 8
  %561 = load i8*, i8** %7, align 8
  %562 = call i32 @xml_emit_att_name(i32* %558, %struct.parser* %559, i8* %560, i8* %561)
  br label %563

563:                                              ; preds = %568, %557
  %564 = load i8*, i8** %7, align 8
  %565 = load i8, i8* %564, align 1
  %566 = call i64 @iswhite(i8 signext %565)
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %563
  %569 = load i8*, i8** %7, align 8
  %570 = getelementptr inbounds i8, i8* %569, i32 1
  store i8* %570, i8** %7, align 8
  br label %563

571:                                              ; preds = %563
  %572 = load i8*, i8** %7, align 8
  %573 = load i8, i8* %572, align 1
  %574 = sext i8 %573 to i32
  %575 = icmp eq i32 %574, 61
  br i1 %575, label %576, label %579

576:                                              ; preds = %571
  %577 = load i8*, i8** %7, align 8
  %578 = getelementptr inbounds i8, i8* %577, i32 1
  store i8* %578, i8** %7, align 8
  br label %580

579:                                              ; preds = %571
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  br label %633

580:                                              ; preds = %576
  br label %581

581:                                              ; preds = %586, %580
  %582 = load i8*, i8** %7, align 8
  %583 = load i8, i8* %582, align 1
  %584 = call i64 @iswhite(i8 signext %583)
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %589

586:                                              ; preds = %581
  %587 = load i8*, i8** %7, align 8
  %588 = getelementptr inbounds i8, i8* %587, i32 1
  store i8* %588, i8** %7, align 8
  br label %581

589:                                              ; preds = %581
  %590 = load i8*, i8** %7, align 8
  %591 = getelementptr inbounds i8, i8* %590, i32 1
  store i8* %591, i8** %7, align 8
  %592 = load i8, i8* %590, align 1
  %593 = sext i8 %592 to i32
  store i32 %593, i32* %9, align 4
  %594 = load i32, i32* %9, align 4
  %595 = icmp ne i32 %594, 34
  br i1 %595, label %596, label %600

596:                                              ; preds = %589
  %597 = load i32, i32* %9, align 4
  %598 = icmp ne i32 %597, 39
  br i1 %598, label %599, label %600

599:                                              ; preds = %596
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  br label %633

600:                                              ; preds = %596, %589
  %601 = load i8*, i8** %7, align 8
  store i8* %601, i8** %8, align 8
  br label %602

602:                                              ; preds = %615, %600
  %603 = load i8*, i8** %7, align 8
  %604 = load i8, i8* %603, align 1
  %605 = sext i8 %604 to i32
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %613

607:                                              ; preds = %602
  %608 = load i8*, i8** %7, align 8
  %609 = load i8, i8* %608, align 1
  %610 = sext i8 %609 to i32
  %611 = load i32, i32* %9, align 4
  %612 = icmp ne i32 %610, %611
  br label %613

613:                                              ; preds = %607, %602
  %614 = phi i1 [ false, %602 ], [ %612, %607 ]
  br i1 %614, label %615, label %618

615:                                              ; preds = %613
  %616 = load i8*, i8** %7, align 8
  %617 = getelementptr inbounds i8, i8* %616, i32 1
  store i8* %617, i8** %7, align 8
  br label %602

618:                                              ; preds = %613
  %619 = load i8*, i8** %7, align 8
  %620 = load i8, i8* %619, align 1
  %621 = sext i8 %620 to i32
  %622 = load i32, i32* %9, align 4
  %623 = icmp eq i32 %621, %622
  br i1 %623, label %624, label %632

624:                                              ; preds = %618
  %625 = load i32*, i32** %5, align 8
  %626 = load %struct.parser*, %struct.parser** %6, align 8
  %627 = load i8*, i8** %8, align 8
  %628 = load i8*, i8** %7, align 8
  %629 = getelementptr inbounds i8, i8* %628, i32 1
  store i8* %629, i8** %7, align 8
  %630 = ptrtoint i8* %628 to i32
  %631 = call i32 @xml_emit_att_value(i32* %625, %struct.parser* %626, i8* %627, i32 %630)
  br label %490

632:                                              ; preds = %618
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8** %4, align 8
  br label %633

633:                                              ; preds = %632, %599, %579, %546, %489, %401, %366, %342, %304, %267, %253, %223, %216, %123, %83
  %634 = load i8*, i8** %4, align 8
  ret i8* %634
}

declare dso_local i32 @xml_emit_text(i32*, %struct.parser*, i8*, i8*) #1

declare dso_local i64 @iswhite(i8 signext) #1

declare dso_local i64 @isname(i8 signext) #1

declare dso_local i32 @xml_emit_cdata(i32*, %struct.parser*, i8*, i8*) #1

declare dso_local i8* @skip_namespace_prefix(i8*, i8*) #1

declare dso_local i64 @pop_to_tag(i32*, %struct.parser*, i8*, i8*) #1

declare dso_local i32 @xml_emit_close_tag(i32*, %struct.parser*) #1

declare dso_local i32 @pre_open_tag(i32*, %struct.parser*, i8*, i8*) #1

declare dso_local i32 @xml_emit_open_tag(i32*, %struct.parser*, i8*, i8*, i32) #1

declare dso_local i32 @xml_emit_att_name(i32*, %struct.parser*, i8*, i8*) #1

declare dso_local i32 @xml_emit_att_value(i32*, %struct.parser*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
