; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-basic.c_next_endstream.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-basic.c_next_endstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i64, i32, %struct.endstream_filter* }
%struct.endstream_filter = type { i64, i64, i8*, i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"endstream\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PDF stream Length incorrect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i64)* @next_endstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_endstream(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.endstream_filter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %15 = load %struct.endstream_filter*, %struct.endstream_filter** %14, align 8
  store %struct.endstream_filter* %15, %struct.endstream_filter** %8, align 8
  %16 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %17 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %107

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %24 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %23, i32 0, i32 6
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %27 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @fz_seek(i32* %22, %struct.TYPE_6__* %25, i64 %28, i32 0)
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %32 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %31, i32 0, i32 6
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @fz_available(i32* %30, %struct.TYPE_6__* %33, i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = load i32, i32* @EOF, align 4
  store i32 %39, i32* %4, align 4
  br label %311

40:                                               ; preds = %21
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %43 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %48 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i64, i64* %9, align 8
  %52 = icmp ugt i64 %51, 8
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i64 8, i64* %9, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %56 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %59 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %58, i32 0, i32 6
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @memcpy(i8* %57, i32 %62, i64 %63)
  %65 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %66 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %79 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %78, i32 0, i32 6
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, %77
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %88 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %93 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %102, align 8
  %105 = load i8, i8* %103, align 1
  %106 = zext i8 %105 to i32
  store i32 %106, i32* %4, align 4
  br label %311

107:                                              ; preds = %20
  %108 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %109 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %115 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @memmove(i8* %116, i8* %119, i64 %120)
  br label %122

122:                                              ; preds = %113, %107
  %123 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %124 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i64, i64* %10, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %136 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %137, 2
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %11, align 8
  %140 = load i64, i64* %11, align 8
  %141 = icmp ugt i64 %140, 8
  br i1 %141, label %142, label %143

142:                                              ; preds = %122
  store i64 8, i64* %11, align 8
  br label %143

143:                                              ; preds = %142, %122
  %144 = load i64, i64* %11, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %147 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %150 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %149, i32 0, i32 6
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %153 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @fz_seek(i32* %148, %struct.TYPE_6__* %151, i64 %154, i32 0)
  br label %156

156:                                              ; preds = %182, %143
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %11, align 8
  %159 = icmp ult i64 %157, %158
  br i1 %159, label %160, label %215

160:                                              ; preds = %156
  %161 = load i32*, i32** %5, align 8
  %162 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %163 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %162, i32 0, i32 6
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* %10, align 8
  %167 = sub i64 %165, %166
  %168 = call i64 @fz_available(i32* %161, %struct.TYPE_6__* %164, i64 %167)
  store i64 %168, i64* %9, align 8
  %169 = load i64, i64* %9, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  br label %215

172:                                              ; preds = %160
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* %10, align 8
  %176 = sub i64 %174, %175
  %177 = icmp ugt i64 %173, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load i64, i64* %11, align 8
  %180 = load i64, i64* %10, align 8
  %181 = sub i64 %179, %180
  store i64 %181, i64* %9, align 8
  br label %182

182:                                              ; preds = %178, %172
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %187 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %186, i32 0, i32 6
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i64, i64* %9, align 8
  %192 = call i32 @memcpy(i8* %185, i32 %190, i64 %191)
  %193 = load i64, i64* %9, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 %193
  store i8* %197, i8** %195, align 8
  %198 = load i64, i64* %9, align 8
  %199 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %200 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %199, i32 0, i32 6
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = add i64 %204, %198
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %202, align 4
  %207 = load i64, i64* %9, align 8
  %208 = load i64, i64* %10, align 8
  %209 = add i64 %208, %207
  store i64 %209, i64* %10, align 8
  %210 = load i64, i64* %9, align 8
  %211 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %212 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = add i64 %213, %210
  store i64 %214, i64* %212, align 8
  br label %156

215:                                              ; preds = %171, %156
  %216 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %217 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %216, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = load i64, i64* %10, align 8
  %220 = call i8* @fz_memmem(i8* %218, i64 %219, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  store i8* %220, i8** %12, align 8
  %221 = load i8*, i8** %12, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %263

223:                                              ; preds = %215
  %224 = load i8*, i8** %12, align 8
  %225 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %226 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %225, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = icmp ugt i8* %224, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %223
  %230 = load i8*, i8** %12, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 -1
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = icmp eq i32 %233, 10
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load i8*, i8** %12, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 -1
  store i8* %237, i8** %12, align 8
  br label %238

238:                                              ; preds = %235, %229, %223
  %239 = load i8*, i8** %12, align 8
  %240 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %241 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %240, i32 0, i32 2
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ugt i8* %239, %242
  br i1 %243, label %244, label %253

244:                                              ; preds = %238
  %245 = load i8*, i8** %12, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 -1
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = icmp eq i32 %248, 13
  br i1 %249, label %250, label %253

250:                                              ; preds = %244
  %251 = load i8*, i8** %12, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 -1
  store i8* %252, i8** %12, align 8
  br label %253

253:                                              ; preds = %250, %244, %238
  %254 = load i8*, i8** %12, align 8
  %255 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %256 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %255, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = ptrtoint i8* %254 to i64
  %259 = ptrtoint i8* %257 to i64
  %260 = sub i64 %258, %259
  store i64 %260, i64* %9, align 8
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 3
  store i32 1, i32* %262, align 8
  br label %272

263:                                              ; preds = %215
  %264 = load i64, i64* %10, align 8
  %265 = icmp ugt i64 %264, 11
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i64, i64* %10, align 8
  %268 = sub i64 %267, 11
  store i64 %268, i64* %9, align 8
  br label %271

269:                                              ; preds = %263
  %270 = load i64, i64* %10, align 8
  store i64 %270, i64* %9, align 8
  br label %271

271:                                              ; preds = %269, %266
  br label %272

272:                                              ; preds = %271, %253
  %273 = load i64, i64* %10, align 8
  %274 = load i64, i64* %9, align 8
  %275 = sub i64 %273, %274
  %276 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %277 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %276, i32 0, i32 3
  store i64 %275, i64* %277, align 8
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = load i64, i64* %9, align 8
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 1
  store i8* %282, i8** %284, align 8
  %285 = load i64, i64* %9, align 8
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = add i64 %288, %285
  store i64 %289, i64* %287, align 8
  %290 = load i64, i64* %9, align 8
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %272
  %293 = load i32, i32* @EOF, align 4
  store i32 %293, i32* %4, align 4
  br label %311

294:                                              ; preds = %272
  %295 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %296 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %294
  %300 = load %struct.endstream_filter*, %struct.endstream_filter** %8, align 8
  %301 = getelementptr inbounds %struct.endstream_filter, %struct.endstream_filter* %300, i32 0, i32 5
  store i32 1, i32* %301, align 4
  %302 = load i32*, i32** %5, align 8
  %303 = call i32 @fz_warn(i32* %302, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %304

304:                                              ; preds = %299, %294
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %306, align 8
  %309 = load i8, i8* %307, align 1
  %310 = zext i8 %309 to i32
  store i32 %310, i32* %4, align 4
  br label %311

311:                                              ; preds = %304, %292, %54, %38
  %312 = load i32, i32* %4, align 4
  ret i32 %312
}

declare dso_local i32 @fz_seek(i32*, %struct.TYPE_6__*, i64, i32) #1

declare dso_local i64 @fz_available(i32*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i8* @fz_memmem(i8*, i64, i8*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
