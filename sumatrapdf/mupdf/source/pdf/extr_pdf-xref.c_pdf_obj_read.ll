; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_obj_read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_obj_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32**, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i8, i32, i32, i8*, i8*, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@PDF_TOK_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"skipping unexpected data (tok=%d) at %d\00", align 1
@PDF_TOK_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"skipping unexpected data after \22%d\22 (tok=%d) at %d\00", align 1
@PDF_TOK_OBJ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"skipping unexpected int %d at %d\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Not a valid object number (%d %d obj)\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Unexpected non zero generation number in linearized file\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Duplicate object found (%d %d obj)\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Successfully read object %d @ %d - and found page %d!\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Successfully read object %d @ %d\00", align 1
@PDF_TOK_ENDOBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, i8**, i32*, i32**)* @pdf_obj_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdf_obj_read(i32* %0, %struct.TYPE_16__* %1, i8** %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %12, align 8
  %26 = load i8**, i8*** %9, align 8
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %16, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i32 @fz_seek(i32* %28, i32 %31, i8* %32, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %40 = call i32 @pdf_lex(i32* %35, i32 %38, %struct.TYPE_15__* %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @fz_tell(i32* %41, i32 %44)
  store i8* %45, i8** %17, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @PDF_TOK_INT, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %5
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i8**, i8*** %9, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = call i32 @DEBUGMESS(i32* %54)
  %56 = load i8*, i8** %17, align 8
  %57 = load i8**, i8*** %9, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @PDF_TOK_EOF, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %6, align 4
  br label %292

62:                                               ; preds = %5
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %72 = call i32 @pdf_lex(i32* %67, i32 %70, %struct.TYPE_15__* %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @fz_tell(i32* %73, i32 %76)
  store i8* %77, i8** %19, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @PDF_TOK_INT, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %62
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i8**, i8*** %9, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = call i32 @DEBUGMESS(i32* %87)
  %89 = load i8*, i8** %19, align 8
  %90 = load i8**, i8*** %9, align 8
  store i8* %89, i8** %90, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @PDF_TOK_EOF, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %6, align 4
  br label %292

95:                                               ; preds = %62
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %148, %95
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @fz_tell(i32* %100, i32 %103)
  store i8* %104, i8** %19, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %110 = call i32 @pdf_lex(i32* %105, i32 %108, %struct.TYPE_15__* %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @PDF_TOK_OBJ, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %99
  br label %149

115:                                              ; preds = %99
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @PDF_TOK_INT, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %115
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i8*, i8** %19, align 8
  %123 = bitcast i8* %122 to i32*
  %124 = call i32 @DEBUGMESS(i32* %123)
  %125 = load i32*, i32** %7, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @fz_tell(i32* %125, i32 %128)
  %130 = load i8**, i8*** %9, align 8
  store i8* %129, i8** %130, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @PDF_TOK_EOF, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %6, align 4
  br label %292

135:                                              ; preds = %115
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i8*, i8** %16, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = call i32 @DEBUGMESS(i32* %139)
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %13, align 4
  %142 = load i32*, i32** %10, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i8*, i8** %17, align 8
  store i8* %143, i8** %16, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %14, align 4
  %147 = load i8*, i8** %19, align 8
  store i8* %147, i8** %17, align 8
  br label %148

148:                                              ; preds = %135
  br i1 true, label %99, label %149

149:                                              ; preds = %148, %114
  %150 = load i32*, i32** %7, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %152 = call i32 @pdf_xref_len(i32* %150, %struct.TYPE_16__* %151)
  store i32 %152, i32* %21, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %156 = load i32**, i32*** %11, align 8
  %157 = call i32 @pdf_repair_obj(i32* %153, %struct.TYPE_16__* %154, %struct.TYPE_15__* %155, i8** %18, i32* null, i32* null, i32* null, i32** %156, i8** %20, i32* null)
  store i32 %157, i32* %15, align 4
  br label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %13, align 4
  %160 = icmp sle i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %21, align 4
  %164 = icmp sge i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %161, %158
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 (i32*, i8*, ...) @fz_warn(i32* %166, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %167, i32 %168)
  br label %265

170:                                              ; preds = %161
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 (i32*, i8*, ...) @fz_warn(i32* %174, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32*, i32** %7, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %179 = load i32, i32* %13, align 4
  %180 = call %struct.TYPE_14__* @pdf_get_populating_xref_entry(i32* %177, %struct.TYPE_16__* %178, i32 %179)
  store %struct.TYPE_14__* %180, %struct.TYPE_14__** %22, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i8, i8* %182, align 8
  %184 = sext i8 %183 to i32
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %176
  %187 = load i32*, i32** %7, align 8
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = inttoptr i64 %190 to i32*
  %192 = call i32 @DEBUGMESS(i32* %191)
  br label %265

193:                                              ; preds = %176
  %194 = load i32**, i32*** %11, align 8
  %195 = icmp ne i32** %194, null
  br i1 %195, label %196, label %244

196:                                              ; preds = %193
  %197 = load i32**, i32*** %11, align 8
  %198 = load i32*, i32** %197, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %244

200:                                              ; preds = %196
  %201 = load i32*, i32** %7, align 8
  %202 = load i32, i32* %13, align 4
  %203 = load i8*, i8** %16, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i32*
  %208 = call i32 @DEBUGMESS(i32* %207)
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %200
  %214 = load i32*, i32** %7, align 8
  %215 = load i32**, i32*** %11, align 8
  %216 = load i32*, i32** %215, align 8
  %217 = call i64 @pdf_keep_obj(i32* %214, i32* %216)
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 5
  store i64 %217, i64* %219, align 8
  br label %220

220:                                              ; preds = %213, %200
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 2
  %223 = load i32**, i32*** %222, align 8
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds i32*, i32** %223, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = icmp eq i32* %228, null
  br i1 %229, label %230, label %243

230:                                              ; preds = %220
  %231 = load i32*, i32** %7, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* %14, align 4
  %235 = call i32* @pdf_new_indirect(i32* %231, %struct.TYPE_16__* %232, i32 %233, i32 %234)
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 2
  %238 = load i32**, i32*** %237, align 8
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds i32*, i32** %238, i64 %241
  store i32* %235, i32** %242, align 8
  br label %243

243:                                              ; preds = %230, %220
  br label %250

244:                                              ; preds = %196, %193
  %245 = load i32*, i32** %7, align 8
  %246 = load i32, i32* %13, align 4
  %247 = load i8*, i8** %16, align 8
  %248 = bitcast i8* %247 to i32*
  %249 = call i32 @DEBUGMESS(i32* %248)
  br label %250

250:                                              ; preds = %244, %243
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  store i8 110, i8* %252, align 8
  %253 = load i32, i32* %14, align 4
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* %13, align 4
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load i8*, i8** %16, align 8
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 4
  store i8* %259, i8** %261, align 8
  %262 = load i8*, i8** %18, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 3
  store i8* %262, i8** %264, align 8
  br label %265

265:                                              ; preds = %250, %186, %165
  %266 = load i32**, i32*** %11, align 8
  %267 = icmp ne i32** %266, null
  br i1 %267, label %268, label %277

268:                                              ; preds = %265
  %269 = load i32**, i32*** %11, align 8
  %270 = load i32*, i32** %269, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %272, label %277

272:                                              ; preds = %268
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = add i64 %275, 1
  store i64 %276, i64* %274, align 8
  br label %277

277:                                              ; preds = %272, %268, %265
  %278 = load i32, i32* %15, align 4
  %279 = load i32, i32* @PDF_TOK_ENDOBJ, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %288

281:                                              ; preds = %277
  %282 = load i32*, i32** %7, align 8
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i8* @fz_tell(i32* %282, i32 %285)
  %287 = load i8**, i8*** %9, align 8
  store i8* %286, i8** %287, align 8
  br label %291

288:                                              ; preds = %277
  %289 = load i8*, i8** %20, align 8
  %290 = load i8**, i8*** %9, align 8
  store i8* %289, i8** %290, align 8
  br label %291

291:                                              ; preds = %288, %281
  store i32 0, i32* %6, align 4
  br label %292

292:                                              ; preds = %291, %119, %81, %49
  %293 = load i32, i32* %6, align 4
  ret i32 %293
}

declare dso_local i32 @fz_seek(i32*, i32, i8*, i32) #1

declare dso_local i32 @pdf_lex(i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i8* @fz_tell(i32*, i32) #1

declare dso_local i32 @DEBUGMESS(i32*) #1

declare dso_local i32 @pdf_xref_len(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @pdf_repair_obj(i32*, %struct.TYPE_16__*, %struct.TYPE_15__*, i8**, i32*, i32*, i32*, i32**, i8**, i32*) #1

declare dso_local i32 @fz_warn(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @pdf_get_populating_xref_entry(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @pdf_keep_obj(i32*, i32*) #1

declare dso_local i32* @pdf_new_indirect(i32*, %struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
