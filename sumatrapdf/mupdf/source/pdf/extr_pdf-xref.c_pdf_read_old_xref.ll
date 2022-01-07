; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_read_old_xref.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_read_old_xref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"xref\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot find xref marker\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"broken xref subsection. proceeding anyway.\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@PDF_MAX_OBJECT_NUMBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"xref subsection object numbers are out of range\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"broken xref subsection, proceeding anyway.\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unexpected EOF in xref table\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"xref offset missing\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"xref generation number missing\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"unexpected xref type: 0x%x (%d %d R)\00", align 1
@PDF_TOK_TRAILER = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"expected trailer marker\00", align 1
@PDF_TOK_OPEN_DICT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"expected trailer dictionary\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_15__*, %struct.TYPE_14__*)* @pdf_read_old_xref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pdf_read_old_xref(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = call i32 @pdf_xref_size_from_old_trailer(i32* %23, %struct.TYPE_15__* %24, %struct.TYPE_14__* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @fz_skip_space(i32* %27, i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @fz_skip_string(i32* %32, i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %41 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %39, i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %3
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @fz_skip_space(i32* %43, i32* %46)
  br label %48

48:                                               ; preds = %42, %386
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @fz_peek_byte(i32* %49, i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = trunc i32 %52 to i8
  %54 = call i64 @isdigit(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %387

57:                                               ; preds = %48
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @fz_read_line(i32* %58, i32* %59, i8* %62, i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %17, align 8
  %70 = call i32 @fz_strsep(i8** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 @fz_atoi(i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = call i32 @fz_strsep(i8** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i32 @fz_atoi(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i8*, i8** %17, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %57
  %77 = load i8*, i8** %17, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @fz_warn(i32* %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32*, i32** %4, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = call i64 @strlen(i8* %86)
  %88 = trunc i64 %87 to i32
  %89 = add nsw i32 2, %88
  %90 = sub nsw i32 0, %89
  %91 = load i32, i32* @SEEK_CUR, align 4
  %92 = call i32 @fz_seek(i32* %84, i32* %85, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %81, %76, %57
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @PDF_MAX_OBJECT_NUMBER, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %114, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @PDF_MAX_OBJECT_NUMBER, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %108, %109
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* @PDF_MAX_OBJECT_NUMBER, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %107, %103, %100, %96, %93
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %117 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %115, i32 %116, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %107
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %11, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @fz_warn(i32* %125, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %118
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call %struct.TYPE_13__* @pdf_xref_find_subsection(i32* %128, %struct.TYPE_15__* %129, i32 %130, i32 %131)
  store %struct.TYPE_13__* %132, %struct.TYPE_13__** %14, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %376, %127
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %379

137:                                              ; preds = %133
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i64 %140
  store %struct.TYPE_13__* %141, %struct.TYPE_13__** %19, align 8
  %142 = load i32*, i32** %4, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i32, i32* %12, align 4
  %151 = sub nsw i32 20, %150
  %152 = call i64 @fz_read(i32* %142, i32* %143, i8* %149, i32 %151)
  store i64 %152, i64* %16, align 8
  %153 = load i64, i64* %16, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sub nsw i32 20, %154
  %156 = sext i32 %155 to i64
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %137
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %161 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %159, i32 %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %162

162:                                              ; preds = %158, %137
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* %16, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %16, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i64, i64* %16, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8 0, i8* %171, align 1
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %375, label %176

176:                                              ; preds = %162
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  store i8* %179, i8** %17, align 8
  %180 = load i8*, i8** %17, align 8
  %181 = load i64, i64* %16, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  store i8* %182, i8** %18, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %183, %184
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %199, %176
  %189 = load i8*, i8** %17, align 8
  %190 = load i8*, i8** %18, align 8
  %191 = icmp ult i8* %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load i8*, i8** %17, align 8
  %194 = load i8, i8* %193, align 1
  %195 = call i64 @iswhite(i8 signext %194)
  %196 = icmp ne i64 %195, 0
  br label %197

197:                                              ; preds = %192, %188
  %198 = phi i1 [ false, %188 ], [ %196, %192 ]
  br i1 %198, label %199, label %202

199:                                              ; preds = %197
  %200 = load i8*, i8** %17, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %17, align 8
  br label %188

202:                                              ; preds = %197
  %203 = load i8*, i8** %17, align 8
  %204 = load i8*, i8** %18, align 8
  %205 = icmp eq i8* %203, %204
  br i1 %205, label %211, label %206

206:                                              ; preds = %202
  %207 = load i8*, i8** %17, align 8
  %208 = load i8, i8* %207, align 1
  %209 = call i64 @isdigit(i8 signext %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %206, %202
  %212 = load i32*, i32** %4, align 8
  %213 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %214 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %212, i32 %213, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %215

215:                                              ; preds = %211, %206
  br label %216

216:                                              ; preds = %227, %215
  %217 = load i8*, i8** %17, align 8
  %218 = load i8*, i8** %18, align 8
  %219 = icmp ult i8* %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %216
  %221 = load i8*, i8** %17, align 8
  %222 = load i8, i8* %221, align 1
  %223 = call i64 @isdigit(i8 signext %222)
  %224 = icmp ne i64 %223, 0
  br label %225

225:                                              ; preds = %220, %216
  %226 = phi i1 [ false, %216 ], [ %224, %220 ]
  br i1 %226, label %227, label %240

227:                                              ; preds = %225
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 %230, 10
  %232 = load i8*, i8** %17, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %17, align 8
  %234 = load i8, i8* %232, align 1
  %235 = sext i8 %234 to i32
  %236 = add nsw i32 %231, %235
  %237 = sub nsw i32 %236, 48
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  br label %216

240:                                              ; preds = %225
  br label %241

241:                                              ; preds = %252, %240
  %242 = load i8*, i8** %17, align 8
  %243 = load i8*, i8** %18, align 8
  %244 = icmp ult i8* %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load i8*, i8** %17, align 8
  %247 = load i8, i8* %246, align 1
  %248 = call i64 @iswhite(i8 signext %247)
  %249 = icmp ne i64 %248, 0
  br label %250

250:                                              ; preds = %245, %241
  %251 = phi i1 [ false, %241 ], [ %249, %245 ]
  br i1 %251, label %252, label %255

252:                                              ; preds = %250
  %253 = load i8*, i8** %17, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %17, align 8
  br label %241

255:                                              ; preds = %250
  %256 = load i8*, i8** %17, align 8
  %257 = load i8*, i8** %18, align 8
  %258 = icmp eq i8* %256, %257
  br i1 %258, label %264, label %259

259:                                              ; preds = %255
  %260 = load i8*, i8** %17, align 8
  %261 = load i8, i8* %260, align 1
  %262 = call i64 @isdigit(i8 signext %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %259, %255
  %265 = load i32*, i32** %4, align 8
  %266 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %267 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %265, i32 %266, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %268

268:                                              ; preds = %264, %259
  br label %269

269:                                              ; preds = %280, %268
  %270 = load i8*, i8** %17, align 8
  %271 = load i8*, i8** %18, align 8
  %272 = icmp ult i8* %270, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %269
  %274 = load i8*, i8** %17, align 8
  %275 = load i8, i8* %274, align 1
  %276 = call i64 @isdigit(i8 signext %275)
  %277 = icmp ne i64 %276, 0
  br label %278

278:                                              ; preds = %273, %269
  %279 = phi i1 [ false, %269 ], [ %277, %273 ]
  br i1 %279, label %280, label %293

280:                                              ; preds = %278
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = mul nsw i32 %283, 10
  %285 = load i8*, i8** %17, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %17, align 8
  %287 = load i8, i8* %285, align 1
  %288 = sext i8 %287 to i32
  %289 = add nsw i32 %284, %288
  %290 = sub nsw i32 %289, 48
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 4
  br label %269

293:                                              ; preds = %278
  br label %294

294:                                              ; preds = %305, %293
  %295 = load i8*, i8** %17, align 8
  %296 = load i8*, i8** %18, align 8
  %297 = icmp ult i8* %295, %296
  br i1 %297, label %298, label %303

298:                                              ; preds = %294
  %299 = load i8*, i8** %17, align 8
  %300 = load i8, i8* %299, align 1
  %301 = call i64 @iswhite(i8 signext %300)
  %302 = icmp ne i64 %301, 0
  br label %303

303:                                              ; preds = %298, %294
  %304 = phi i1 [ false, %294 ], [ %302, %298 ]
  br i1 %304, label %305, label %308

305:                                              ; preds = %303
  %306 = load i8*, i8** %17, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %17, align 8
  br label %294

308:                                              ; preds = %303
  %309 = load i8*, i8** %17, align 8
  %310 = load i8*, i8** %18, align 8
  %311 = icmp eq i8* %309, %310
  br i1 %311, label %327, label %312

312:                                              ; preds = %308
  %313 = load i8*, i8** %17, align 8
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp ne i32 %315, 102
  br i1 %316, label %317, label %347

317:                                              ; preds = %312
  %318 = load i8*, i8** %17, align 8
  %319 = load i8, i8* %318, align 1
  %320 = sext i8 %319 to i32
  %321 = icmp ne i32 %320, 110
  br i1 %321, label %322, label %347

322:                                              ; preds = %317
  %323 = load i8*, i8** %17, align 8
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp ne i32 %325, 111
  br i1 %326, label %327, label %347

327:                                              ; preds = %322, %308
  %328 = load i32*, i32** %4, align 8
  %329 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %330 = load i8*, i8** %17, align 8
  %331 = load i8*, i8** %18, align 8
  %332 = icmp eq i8* %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %327
  br label %338

334:                                              ; preds = %327
  %335 = load i8*, i8** %17, align 8
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  br label %338

338:                                              ; preds = %334, %333
  %339 = phi i32 [ 0, %333 ], [ %337, %334 ]
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %328, i32 %329, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %339, i32 %342, i32 %345)
  br label %347

347:                                              ; preds = %338, %322, %317, %312
  %348 = load i8*, i8** %17, align 8
  %349 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %349, i8** %17, align 8
  %350 = load i8, i8* %348, align 1
  %351 = sext i8 %350 to i32
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 3
  store i32 %351, i32* %353, align 4
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 19
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp sgt i32 %359, 32
  %361 = zext i1 %360 to i32
  store i32 %361, i32* %12, align 4
  %362 = load i32, i32* %12, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %374

364:                                              ; preds = %347
  %365 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %365, i32 0, i32 0
  %367 = load i8*, i8** %366, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 19
  %369 = load i8, i8* %368, align 1
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 0
  store i8 %369, i8* %373, align 1
  br label %374

374:                                              ; preds = %364, %347
  br label %375

375:                                              ; preds = %374, %162
  br label %376

376:                                              ; preds = %375
  %377 = load i32, i32* %10, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %10, align 4
  br label %133

379:                                              ; preds = %133
  %380 = load i32, i32* %12, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %386

382:                                              ; preds = %379
  %383 = load i32*, i32** %4, align 8
  %384 = load i32*, i32** %13, align 8
  %385 = call i32 @fz_unread_byte(i32* %383, i32* %384)
  br label %386

386:                                              ; preds = %382, %379
  br label %48

387:                                              ; preds = %56
  %388 = load i32*, i32** %4, align 8
  %389 = load i32*, i32** %13, align 8
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %391 = call i64 @pdf_lex(i32* %388, i32* %389, %struct.TYPE_14__* %390)
  store i64 %391, i64* %15, align 8
  %392 = load i64, i64* %15, align 8
  %393 = load i64, i64* @PDF_TOK_TRAILER, align 8
  %394 = icmp ne i64 %392, %393
  br i1 %394, label %395, label %399

395:                                              ; preds = %387
  %396 = load i32*, i32** %4, align 8
  %397 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %398 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %396, i32 %397, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %399

399:                                              ; preds = %395, %387
  %400 = load i32*, i32** %4, align 8
  %401 = load i32*, i32** %13, align 8
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %403 = call i64 @pdf_lex(i32* %400, i32* %401, %struct.TYPE_14__* %402)
  store i64 %403, i64* %15, align 8
  %404 = load i64, i64* %15, align 8
  %405 = load i64, i64* @PDF_TOK_OPEN_DICT, align 8
  %406 = icmp ne i64 %404, %405
  br i1 %406, label %407, label %411

407:                                              ; preds = %399
  %408 = load i32*, i32** %4, align 8
  %409 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %410 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %408, i32 %409, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %411

411:                                              ; preds = %407, %399
  %412 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %412, i32 0, i32 0
  store i32 1, i32* %413, align 8
  %414 = load i32*, i32** %4, align 8
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %416 = load i32*, i32** %13, align 8
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %418 = call i32* @pdf_parse_dict(i32* %414, %struct.TYPE_15__* %415, i32* %416, %struct.TYPE_14__* %417)
  ret i32* %418
}

declare dso_local i32 @pdf_xref_size_from_old_trailer(i32*, %struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @fz_skip_space(i32*, i32*) #1

declare dso_local i64 @fz_skip_string(i32*, i32*, i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @fz_peek_byte(i32*, i32*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @fz_read_line(i32*, i32*, i8*, i32) #1

declare dso_local i32 @fz_atoi(i32) #1

declare dso_local i32 @fz_strsep(i8**, i8*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @fz_seek(i32*, i32*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_13__* @pdf_xref_find_subsection(i32*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @fz_read(i32*, i32*, i8*, i32) #1

declare dso_local i64 @iswhite(i8 signext) #1

declare dso_local i32 @fz_unread_byte(i32*, i32*) #1

declare dso_local i64 @pdf_lex(i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32* @pdf_parse_dict(i32*, %struct.TYPE_15__*, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
