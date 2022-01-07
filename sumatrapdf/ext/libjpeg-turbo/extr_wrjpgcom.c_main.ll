; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_wrjpgcom.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_wrjpgcom.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"wrjpgcom\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cfile\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@MAX_COM_LENGTH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"Insufficient memory\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Missing ending quote mark\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@READ_BINARY = common dso_local global i8* null, align 8
@infile = common dso_local global i32* null, align 8
@stdin = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@outfile = common dso_local global i32* null, align 8
@EOF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Comment text may not exceed %u bytes\0A\00", align 1
@M_COM = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@WRITE_BINARY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i64*
  store i64* %18, i64** @progname, align 8
  %19 = load i64*, i64** @progname, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load i64*, i64** @progname, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %2
  store i64* bitcast ([9 x i8]* @.str to i64*), i64** @progname, align 8
  br label %27

27:                                               ; preds = %26, %21
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %170, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %173

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 45
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %173

44:                                               ; preds = %32
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @keymatch(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %169

51:                                               ; preds = %44
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @keymatch(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @fopen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %69 = bitcast i8* %68 to i32*
  store i32* %69, i32** %10, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = load i32, i32* @stderr, align 4
  %73 = load i64*, i64** @progname, align 8
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64* %73, i8* %78)
  %80 = load i32, i32* @EXIT_FAILURE, align 4
  %81 = call i32 @exit(i32 %80) #3
  unreachable

82:                                               ; preds = %62
  br label %168

83:                                               ; preds = %51
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @keymatch(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %165

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 (...) @usage()
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i8**, i8*** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %9, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 34
  br i1 %104, label %105, label %161

105:                                              ; preds = %94
  %106 = load i64, i64* @MAX_COM_LENGTH, align 8
  %107 = call i64 @malloc(i64 %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %9, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 @ERREXIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %105
  %114 = load i8*, i8** %9, align 8
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = call i32 @strcpy(i8* %114, i8* %120)
  br label %122

122:                                              ; preds = %150, %113
  %123 = load i8*, i8** %9, align 8
  %124 = call i64 @strlen(i8* %123)
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ugt i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %122
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sub i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 34
  br i1 %136, label %137, label %143

137:                                              ; preds = %128
  %138 = load i8*, i8** %9, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sub i32 %139, 1
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 0, i8* %142, align 1
  br label %160

143:                                              ; preds = %128, %122
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = call i32 @ERREXIT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %143
  %151 = load i8*, i8** %9, align 8
  %152 = call i32 @strcat(i8* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %153 = load i8*, i8** %9, align 8
  %154 = load i8**, i8*** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @strcat(i8* %153, i8* %158)
  br label %122

160:                                              ; preds = %137
  br label %161

161:                                              ; preds = %160, %94
  %162 = load i8*, i8** %9, align 8
  %163 = call i64 @strlen(i8* %162)
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %11, align 4
  br label %167

165:                                              ; preds = %83
  %166 = call i32 (...) @usage()
  br label %167

167:                                              ; preds = %165, %161
  br label %168

168:                                              ; preds = %167, %82
  br label %169

169:                                              ; preds = %168, %50
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %28

173:                                              ; preds = %43, %28
  %174 = load i8*, i8** %9, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load i32*, i32** %10, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = call i32 (...) @usage()
  br label %181

181:                                              ; preds = %179, %176, %173
  %182 = load i8*, i8** %9, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = load i32*, i32** %10, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %4, align 4
  %190 = icmp sge i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = call i32 (...) @usage()
  br label %193

193:                                              ; preds = %191, %187, %184, %181
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %4, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %219

197:                                              ; preds = %193
  %198 = load i8**, i8*** %5, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = load i8*, i8** @READ_BINARY, align 8
  %204 = call i8* @fopen(i8* %202, i8* %203)
  %205 = bitcast i8* %204 to i32*
  store i32* %205, i32** @infile, align 8
  %206 = icmp eq i32* %205, null
  br i1 %206, label %207, label %218

207:                                              ; preds = %197
  %208 = load i32, i32* @stderr, align 4
  %209 = load i64*, i64** @progname, align 8
  %210 = load i8**, i8*** %5, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64* %209, i8* %214)
  %216 = load i32, i32* @EXIT_FAILURE, align 4
  %217 = call i32 @exit(i32 %216) #3
  unreachable

218:                                              ; preds = %197
  br label %221

219:                                              ; preds = %193
  %220 = load i32*, i32** @stdin, align 8
  store i32* %220, i32** @infile, align 8
  br label %221

221:                                              ; preds = %219, %218
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %4, align 4
  %224 = sub nsw i32 %223, 1
  %225 = icmp slt i32 %222, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load i32, i32* @stderr, align 4
  %228 = load i64*, i64** @progname, align 8
  %229 = call i32 (i32, i8*, ...) @fprintf(i32 %227, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i64* %228)
  %230 = call i32 (...) @usage()
  br label %231

231:                                              ; preds = %226, %221
  %232 = load i32*, i32** @stdout, align 8
  store i32* %232, i32** @outfile, align 8
  %233 = load i8*, i8** %9, align 8
  %234 = icmp eq i8* %233, null
  br i1 %234, label %235, label %284

235:                                              ; preds = %231
  %236 = load i64, i64* @MAX_COM_LENGTH, align 8
  %237 = call i64 @malloc(i64 %236)
  %238 = inttoptr i64 %237 to i8*
  store i8* %238, i8** %9, align 8
  %239 = load i8*, i8** %9, align 8
  %240 = icmp eq i8* %239, null
  br i1 %240, label %241, label %243

241:                                              ; preds = %235
  %242 = call i32 @ERREXIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %235
  store i32 0, i32* %11, align 4
  %244 = load i32*, i32** %10, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = load i32*, i32** %10, align 8
  br label %250

248:                                              ; preds = %243
  %249 = load i32*, i32** @stdin, align 8
  br label %250

250:                                              ; preds = %248, %246
  %251 = phi i32* [ %247, %246 ], [ %249, %248 ]
  store i32* %251, i32** %13, align 8
  br label %252

252:                                              ; preds = %269, %250
  %253 = load i32*, i32** %13, align 8
  %254 = call i32 @getc(i32* %253)
  store i32 %254, i32* %14, align 4
  %255 = load i32, i32* @EOF, align 4
  %256 = icmp ne i32 %254, %255
  br i1 %256, label %257, label %277

257:                                              ; preds = %252
  %258 = load i32, i32* %11, align 4
  %259 = load i64, i64* @MAX_COM_LENGTH, align 8
  %260 = trunc i64 %259 to i32
  %261 = icmp uge i32 %258, %260
  br i1 %261, label %262, label %269

262:                                              ; preds = %257
  %263 = load i32, i32* @stderr, align 4
  %264 = load i64, i64* @MAX_COM_LENGTH, align 8
  %265 = trunc i64 %264 to i32
  %266 = call i32 (i32, i8*, ...) @fprintf(i32 %263, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %265)
  %267 = load i32, i32* @EXIT_FAILURE, align 4
  %268 = call i32 @exit(i32 %267) #3
  unreachable

269:                                              ; preds = %257
  %270 = load i32, i32* %14, align 4
  %271 = trunc i32 %270 to i8
  %272 = load i8*, i8** %9, align 8
  %273 = load i32, i32* %11, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %11, align 4
  %275 = zext i32 %273 to i64
  %276 = getelementptr inbounds i8, i8* %272, i64 %275
  store i8 %271, i8* %276, align 1
  br label %252

277:                                              ; preds = %252
  %278 = load i32*, i32** %10, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load i32*, i32** %10, align 8
  %282 = call i32 @fclose(i32* %281)
  br label %283

283:                                              ; preds = %280, %277
  br label %284

284:                                              ; preds = %283, %231
  %285 = load i32, i32* %8, align 4
  %286 = call i32 @scan_JPEG_header(i32 %285)
  store i32 %286, i32* %12, align 4
  %287 = load i32, i32* %11, align 4
  %288 = icmp ugt i32 %287, 0
  br i1 %288, label %289, label %307

289:                                              ; preds = %284
  %290 = load i32, i32* @M_COM, align 4
  %291 = call i32 @write_marker(i32 %290)
  %292 = load i32, i32* %11, align 4
  %293 = add i32 %292, 2
  %294 = call i32 @write_2_bytes(i32 %293)
  br label %295

295:                                              ; preds = %298, %289
  %296 = load i32, i32* %11, align 4
  %297 = icmp ugt i32 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %295
  %299 = load i8*, i8** %9, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %9, align 8
  %301 = load i8, i8* %299, align 1
  %302 = sext i8 %301 to i32
  %303 = call i32 @write_1_byte(i32 %302)
  %304 = load i32, i32* %11, align 4
  %305 = add i32 %304, -1
  store i32 %305, i32* %11, align 4
  br label %295

306:                                              ; preds = %295
  br label %307

307:                                              ; preds = %306, %284
  %308 = load i32, i32* %12, align 4
  %309 = call i32 @write_marker(i32 %308)
  %310 = call i32 (...) @copy_rest_of_file()
  %311 = load i32, i32* @EXIT_SUCCESS, align 4
  %312 = call i32 @exit(i32 %311) #3
  unreachable
}

declare dso_local i64 @keymatch(i8*, i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @ERREXIT(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @scan_JPEG_header(i32) #1

declare dso_local i32 @write_marker(i32) #1

declare dso_local i32 @write_2_bytes(i32) #1

declare dso_local i32 @write_1_byte(i32) #1

declare dso_local i32 @copy_rest_of_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
