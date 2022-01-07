; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-lzw.c_next_lzwd.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-lzw.c_next_lzwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8*, i32, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8, i32, i8 }

@EOF = common dso_local global i32 0, align 4
@NUM_CODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"missing clear code in lzw decode\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"tolerating a single out of range code in lzw decode\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"out of range code encountered in lzw decode\00", align 1
@MAX_BITS = common dso_local global i32 0, align 4
@MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i64)* @next_lzwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_lzwd(i32* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %8, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 14
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %9, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  store i8* %28, i8** %11, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %15, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %17, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %18, align 4
  %41 = load i64, i64* %7, align 8
  %42 = icmp ugt i64 %41, 8
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  store i64 8, i64* %7, align 8
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %12, align 8
  br label %48

48:                                               ; preds = %62, %44
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 6
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ult i8* %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ult i8* %57, %58
  br label %60

60:                                               ; preds = %56, %48
  %61 = phi i1 [ false, %48 ], [ %59, %56 ]
  br i1 %61, label %62, label %70

62:                                               ; preds = %60
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 5
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %64, align 8
  %67 = load i8, i8* %65, align 1
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %11, align 8
  store i8 %67, i8* %68, align 1
  br label %48

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %380, %143, %70
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = icmp ult i8* %72, %73
  br i1 %74, label %75, label %381

75:                                               ; preds = %71
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @EOF, align 4
  store i32 %81, i32* %4, align 4
  br label %423

82:                                               ; preds = %75
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 13
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @fz_read_rbits(i32* %88, i32 %91, i32 %92)
  store i32 %93, i32* %16, align 4
  br label %101

94:                                               ; preds = %82
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 12
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @fz_read_bits(i32* %95, i32 %98, i32 %99)
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %94, %87
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 12
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @fz_is_eof_bits(i32* %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 7
  store i32 1, i32* %110, align 8
  br label %381

111:                                              ; preds = %101
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = call i32 @LZW_EOD(%struct.TYPE_10__* %113)
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 7
  store i32 1, i32* %118, align 8
  br label %381

119:                                              ; preds = %111
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 11
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* @NUM_CODES, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %131 = call i32 @LZW_CLEAR(%struct.TYPE_10__* %130)
  %132 = icmp ne i32 %129, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @fz_warn(i32* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %137 = call i32 @LZW_CLEAR(%struct.TYPE_10__* %136)
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %133, %128, %124, %119
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %141 = call i32 @LZW_CLEAR(%struct.TYPE_10__* %140)
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %15, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %148 = call i32 @LZW_FIRST(%struct.TYPE_10__* %147)
  store i32 %148, i32* %18, align 4
  store i32 -1, i32* %17, align 4
  br label %71

149:                                              ; preds = %138
  %150 = load i32, i32* %17, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32, i32* %16, align 4
  store i32 %153, i32* %17, align 4
  br label %279

154:                                              ; preds = %149
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* @NUM_CODES, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @fz_warn(i32* %164, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* %18, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %18, align 4
  br label %278

168:                                              ; preds = %159, %154
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %18, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %181, label %172

172:                                              ; preds = %168
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 11
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %172
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* @NUM_CODES, align 4
  %180 = icmp sge i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %177, %168
  %182 = load i32*, i32** %5, align 8
  %183 = call i32 @fz_warn(i32* %182, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %277

184:                                              ; preds = %177, %172
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* @NUM_CODES, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %276

188:                                              ; preds = %184
  %189 = load i32, i32* %17, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  store i32 %189, i32* %194, align 4
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %196 = load i32, i32* %17, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i8, i8* %199, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  store i8 %200, i8* %205, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %207 = load i32, i32* %17, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  store i32 %212, i32* %217, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %18, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %233

221:                                              ; preds = %188
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i8, i8* %226, align 4
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 3
  store i8 %227, i8* %232, align 4
  br label %253

233:                                              ; preds = %188
  %234 = load i32, i32* %16, align 4
  %235 = load i32, i32* %18, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %249

237:                                              ; preds = %233
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %239 = load i32, i32* %18, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  %243 = load i8, i8* %242, align 4
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %245 = load i32, i32* %18, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 3
  store i8 %243, i8* %248, align 4
  br label %252

249:                                              ; preds = %233
  %250 = load i32*, i32** %5, align 8
  %251 = call i32 @fz_warn(i32* %250, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %252

252:                                              ; preds = %249, %237
  br label %253

253:                                              ; preds = %252, %221
  %254 = load i32, i32* %18, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %18, align 4
  %256 = load i32, i32* %18, align 4
  %257 = load i32, i32* %15, align 4
  %258 = shl i32 1, %257
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 9
  %261 = load i32, i32* %260, align 8
  %262 = sub nsw i32 %258, %261
  %263 = sub nsw i32 %262, 1
  %264 = icmp sgt i32 %256, %263
  br i1 %264, label %265, label %274

265:                                              ; preds = %253
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %15, align 4
  %268 = load i32, i32* %15, align 4
  %269 = load i32, i32* @MAX_BITS, align 4
  %270 = icmp sgt i32 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = load i32, i32* @MAX_BITS, align 4
  store i32 %272, i32* %15, align 4
  br label %273

273:                                              ; preds = %271, %265
  br label %274

274:                                              ; preds = %273, %253
  %275 = load i32, i32* %16, align 4
  store i32 %275, i32* %17, align 4
  br label %276

276:                                              ; preds = %274, %184
  br label %277

277:                                              ; preds = %276, %181
  br label %278

278:                                              ; preds = %277, %163
  br label %279

279:                                              ; preds = %278, %152
  %280 = load i32, i32* %16, align 4
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %282 = call i32 @LZW_CLEAR(%struct.TYPE_10__* %281)
  %283 = icmp sge i32 %280, %282
  br i1 %283, label %284, label %339

284:                                              ; preds = %279
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %286 = load i32, i32* %16, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %14, align 4
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 10
  %293 = load i8*, i8** %292, align 8
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 5
  store i8* %293, i8** %295, align 8
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 10
  %298 = load i8*, i8** %297, align 8
  %299 = load i32, i32* %14, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %298, i64 %300
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 6
  store i8* %301, i8** %303, align 8
  %304 = load i32, i32* %14, align 4
  %305 = load i32, i32* @MAX_LENGTH, align 4
  %306 = icmp slt i32 %304, %305
  %307 = zext i1 %306 to i32
  %308 = call i32 @assert(i32 %307)
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 6
  %311 = load i8*, i8** %310, align 8
  store i8* %311, i8** %13, align 8
  br label %312

312:                                              ; preds = %336, %284
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %314 = load i32, i32* %16, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 3
  %318 = load i8, i8* %317, align 4
  %319 = load i8*, i8** %13, align 8
  %320 = getelementptr inbounds i8, i8* %319, i32 -1
  store i8* %320, i8** %13, align 8
  store i8 %318, i8* %320, align 1
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %322 = load i32, i32* %16, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  store i32 %326, i32* %16, align 4
  br label %327

327:                                              ; preds = %312
  %328 = load i32, i32* %16, align 4
  %329 = icmp sge i32 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %327
  %331 = load i8*, i8** %13, align 8
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 10
  %334 = load i8*, i8** %333, align 8
  %335 = icmp ugt i8* %331, %334
  br label %336

336:                                              ; preds = %330, %327
  %337 = phi i1 [ false, %327 ], [ %335, %330 ]
  br i1 %337, label %312, label %338

338:                                              ; preds = %336
  br label %357

339:                                              ; preds = %279
  %340 = load i32, i32* %16, align 4
  %341 = trunc i32 %340 to i8
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 10
  %344 = load i8*, i8** %343, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 0
  store i8 %341, i8* %345, align 1
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 10
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 5
  store i8* %348, i8** %350, align 8
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 10
  %353 = load i8*, i8** %352, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 1
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 6
  store i8* %354, i8** %356, align 8
  br label %357

357:                                              ; preds = %339, %338
  br label %358

358:                                              ; preds = %372, %357
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 5
  %361 = load i8*, i8** %360, align 8
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 6
  %364 = load i8*, i8** %363, align 8
  %365 = icmp ult i8* %361, %364
  br i1 %365, label %366, label %370

366:                                              ; preds = %358
  %367 = load i8*, i8** %11, align 8
  %368 = load i8*, i8** %12, align 8
  %369 = icmp ult i8* %367, %368
  br label %370

370:                                              ; preds = %366, %358
  %371 = phi i1 [ false, %358 ], [ %369, %366 ]
  br i1 %371, label %372, label %380

372:                                              ; preds = %370
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 5
  %375 = load i8*, i8** %374, align 8
  %376 = getelementptr inbounds i8, i8* %375, i32 1
  store i8* %376, i8** %374, align 8
  %377 = load i8, i8* %375, align 1
  %378 = load i8*, i8** %11, align 8
  %379 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %379, i8** %11, align 8
  store i8 %377, i8* %378, align 1
  br label %358

380:                                              ; preds = %370
  br label %71

381:                                              ; preds = %116, %108, %71
  %382 = load i32, i32* %15, align 4
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 1
  store i32 %382, i32* %384, align 8
  %385 = load i32, i32* %16, align 4
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 2
  store i32 %385, i32* %387, align 4
  %388 = load i32, i32* %17, align 4
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 3
  store i32 %388, i32* %390, align 8
  %391 = load i32, i32* %18, align 4
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 4
  store i32 %391, i32* %393, align 4
  %394 = load i8*, i8** %10, align 8
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 0
  store i8* %394, i8** %396, align 8
  %397 = load i8*, i8** %11, align 8
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 1
  store i8* %397, i8** %399, align 8
  %400 = load i8*, i8** %10, align 8
  %401 = load i8*, i8** %11, align 8
  %402 = icmp eq i8* %400, %401
  br i1 %402, label %403, label %405

403:                                              ; preds = %381
  %404 = load i32, i32* @EOF, align 4
  store i32 %404, i32* %4, align 4
  br label %423

405:                                              ; preds = %381
  %406 = load i8*, i8** %11, align 8
  %407 = load i8*, i8** %10, align 8
  %408 = ptrtoint i8* %406 to i64
  %409 = ptrtoint i8* %407 to i64
  %410 = sub i64 %408, %409
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = sext i32 %413 to i64
  %415 = add nsw i64 %414, %410
  %416 = trunc i64 %415 to i32
  store i32 %416, i32* %412, align 8
  %417 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 0
  %419 = load i8*, i8** %418, align 8
  %420 = getelementptr inbounds i8, i8* %419, i32 1
  store i8* %420, i8** %418, align 8
  %421 = load i8, i8* %419, align 1
  %422 = zext i8 %421 to i32
  store i32 %422, i32* %4, align 4
  br label %423

423:                                              ; preds = %405, %403, %80
  %424 = load i32, i32* %4, align 4
  ret i32 %424
}

declare dso_local i32 @fz_read_rbits(i32*, i32, i32) #1

declare dso_local i32 @fz_read_bits(i32*, i32, i32) #1

declare dso_local i64 @fz_is_eof_bits(i32*, i32) #1

declare dso_local i32 @LZW_EOD(%struct.TYPE_10__*) #1

declare dso_local i32 @LZW_CLEAR(%struct.TYPE_10__*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @LZW_FIRST(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
