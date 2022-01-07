; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_decode_btree_page.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_decode_btree_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"index interior node\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"table interior node\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"index leaf\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"table leaf\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Page %d has only %d cells\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Header on btree page %d:\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Offset to first freeblock\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Number of cells on this page\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Offset to cell content area\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Fragmented byte count\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Right child\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c" key: lx=left-child n=payload-size r=rowid\0A\00", align 1
@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c" %03x: cell[%d] %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"Page map:  (H=header P=cell-index 1=page-1-header .=free-space)\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c" %03x: %.64s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @decode_btree_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_btree_page(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [30 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 -2, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  switch i32 %25, label %30 [
    i32 2, label %26
    i32 5, label %27
    i32 10, label %28
    i32 13, label %29
  ]

26:                                               ; preds = %4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %30

27:                                               ; preds = %4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %30

28:                                               ; preds = %4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %30

29:                                               ; preds = %4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %30

30:                                               ; preds = %4, %29, %28, %27, %26
  br label %31

31:                                               ; preds = %70, %30
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %70 [
    i32 99, label %41
    i32 109, label %42
    i32 100, label %43
  ]

41:                                               ; preds = %36
  store i32 1, i32* %14, align 4
  br label %70

42:                                               ; preds = %36
  store i32 1, i32* %15, align 4
  br label %70

43:                                               ; preds = %36
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @ISDIGIT(i8 signext %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 -1, i32* %16, align 4
  br label %69

50:                                               ; preds = %43
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %57, %50
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @ISDIGIT(i8 signext %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* %16, align 4
  %61 = mul nsw i32 %60, 10
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %61, %65
  %67 = sub nsw i32 %66, 48
  store i32 %67, i32* %16, align 4
  br label %51

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %49
  br label %70

70:                                               ; preds = %36, %69, %42, %41
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  br label %31

73:                                               ; preds = %31
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = mul nsw i32 %77, 256
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %78, %82
  store i32 %83, i32* %10, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %95, label %89

89:                                               ; preds = %73
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 5
  br label %95

95:                                               ; preds = %89, %73
  %96 = phi i1 [ true, %73 ], [ %94, %89 ]
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 12, i32 8
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %103, i32 %104)
  br label %301

106:                                              ; preds = %95
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  %109 = load i8*, i8** %5, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @print_decode_line(i8* %109, i32 0, i32 1, i8* %110)
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 @print_decode_line(i8* %112, i32 1, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @print_decode_line(i8* %114, i32 3, i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @print_decode_line(i8* %116, i32 5, i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @print_decode_line(i8* %118, i32 7, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %131, label %125

125:                                              ; preds = %106
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 5
  br i1 %130, label %131, label %134

131:                                              ; preds = %125, %106
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 @print_decode_line(i8* %132, i32 8, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i32, i32* %16, align 4
  %136 = icmp eq i32 %135, -2
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i32, i32* %10, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %137, %134
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %172

145:                                              ; preds = %142
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %147 = call i8* @sqlite3_malloc(i64 %146)
  store i8* %147, i8** %17, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %150 = call i32 @memset(i8* %148, i8 signext 46, i64 %149)
  %151 = load i8*, i8** %17, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = call i32 @memset(i8* %151, i8 signext 49, i64 %153)
  %155 = load i8*, i8** %17, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = call i32 @memset(i8* %158, i8 signext 72, i64 %160)
  %162 = load i8*, i8** %17, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %162, i64 %166
  %168 = load i32, i32* %10, align 4
  %169 = mul nsw i32 2, %168
  %170 = sext i32 %169 to i64
  %171 = call i32 @memset(i8* %167, i8 signext 80, i64 %170)
  br label %172

172:                                              ; preds = %145, %142
  store i32 0, i32* %11, align 4
  br label %173

173:                                              ; preds = %275, %172
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %278

177:                                              ; preds = %173
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %11, align 4
  %180 = mul nsw i32 %179, 2
  %181 = add nsw i32 %178, %180
  store i32 %181, i32* %18, align 4
  %182 = load i8*, i8** %5, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = mul nsw i32 %187, 256
  %189 = load i8*, i8** %5, align 8
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %189, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = add nsw i32 %188, %195
  store i32 %196, i32* %18, align 4
  %197 = load i8*, i8** %5, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = load i8*, i8** %5, align 8
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* %7, align 4
  %203 = sub nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %200, i64 %204
  %206 = load i32, i32* %14, align 4
  %207 = call i32 @describeCell(i8 zeroext %199, i8* %205, i32 %206, i8** %19)
  store i32 %207, i32* %20, align 4
  %208 = load i32, i32* %15, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %249

210:                                              ; preds = %177
  %211 = load i8*, i8** %17, align 8
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load i32, i32* %20, align 4
  %216 = sext i32 %215 to i64
  %217 = call i32 @memset(i8* %214, i8 signext 42, i64 %216)
  %218 = load i8*, i8** %17, align 8
  %219 = load i32, i32* %18, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  store i8 91, i8* %221, align 1
  %222 = load i8*, i8** %17, align 8
  %223 = load i32, i32* %18, align 4
  %224 = load i32, i32* %20, align 4
  %225 = add nsw i32 %223, %224
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %222, i64 %227
  store i8 93, i8* %228, align 1
  %229 = getelementptr inbounds [30 x i8], [30 x i8]* %21, i64 0, i64 0
  %230 = load i32, i32* %11, align 4
  %231 = call i32 @sprintf(i8* %229, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %230)
  %232 = getelementptr inbounds [30 x i8], [30 x i8]* %21, i64 0, i64 0
  %233 = call i64 @strlen(i8* %232)
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %20, align 4
  %237 = sub nsw i32 %236, 2
  %238 = icmp sle i32 %235, %237
  br i1 %238, label %239, label %248

239:                                              ; preds = %210
  %240 = load i8*, i8** %17, align 8
  %241 = load i32, i32* %18, align 4
  %242 = add nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  %245 = getelementptr inbounds [30 x i8], [30 x i8]* %21, i64 0, i64 0
  %246 = load i32, i32* %12, align 4
  %247 = call i32 @memcpy(i8* %244, i8* %245, i32 %246)
  br label %248

248:                                              ; preds = %239, %210
  br label %249

249:                                              ; preds = %248, %177
  %250 = load i32, i32* %16, align 4
  %251 = icmp eq i32 %250, -2
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = load i32, i32* %18, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load i8*, i8** %19, align 8
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %253, i32 %254, i8* %255)
  br label %274

257:                                              ; preds = %249
  %258 = load i32, i32* %16, align 4
  %259 = icmp eq i32 %258, -1
  br i1 %259, label %264, label %260

260:                                              ; preds = %257
  %261 = load i32, i32* %16, align 4
  %262 = load i32, i32* %11, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %273

264:                                              ; preds = %260, %257
  %265 = load i8*, i8** %5, align 8
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %18, align 4
  %270 = load i32, i32* %7, align 4
  %271 = sub nsw i32 %269, %270
  %272 = call i32 @decodeCell(i8* %265, i32 %266, i32 %267, i32 %268, i32 %271)
  br label %273

273:                                              ; preds = %264, %260
  br label %274

274:                                              ; preds = %273, %252
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %11, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %11, align 4
  br label %173

278:                                              ; preds = %173
  %279 = load i32, i32* %15, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %301

281:                                              ; preds = %278
  %282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %283

283:                                              ; preds = %295, %281
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %287 = icmp ult i64 %285, %286
  br i1 %287, label %288, label %298

288:                                              ; preds = %283
  %289 = load i32, i32* %11, align 4
  %290 = load i8*, i8** %17, align 8
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %290, i64 %292
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %289, i8* %293)
  br label %295

295:                                              ; preds = %288
  %296 = load i32, i32* %11, align 4
  %297 = add nsw i32 %296, 64
  store i32 %297, i32* %11, align 4
  br label %283

298:                                              ; preds = %283
  %299 = load i8*, i8** %17, align 8
  %300 = call i32 @sqlite3_free(i8* %299)
  br label %301

301:                                              ; preds = %102, %298, %278
  ret void
}

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_decode_line(i8*, i32, i32, i8*) #1

declare dso_local i8* @sqlite3_malloc(i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @describeCell(i8 zeroext, i8*, i32, i8**) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @decodeCell(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
