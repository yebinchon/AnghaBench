; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5PorterStep2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5PorterStep2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"ational\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ate\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tional\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tion\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"enci\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ence\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"anci\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ance\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"izer\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ize\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"logi\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"bli\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ble\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"alli\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"al\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"entli\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ent\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"eli\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"ousli\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ous\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"ization\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"ation\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"ator\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"alism\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"iveness\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"ive\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"fulness\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"ful\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"ousness\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"aliti\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"iviti\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"biliti\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @fts5PorterStep2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5PorterStep2(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %646 [
    i32 97, label %16
    i32 99, label %76
    i32 101, label %136
    i32 103, label %166
    i32 108, label %196
    i32 111, label %346
    i32 115, label %436
    i32 116, label %556
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 7
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = call i32 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %24, i32 7)
  %26 = icmp eq i32 0, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 7
  %31 = call i32 @fts5Porter_MGt0(i8* %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 7
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = call i32 @memcpy(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 7
  %42 = add nsw i32 %41, 3
  %43 = load i32*, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %33, %27
  br label %75

45:                                               ; preds = %19, %16
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 6
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 6
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = call i32 @memcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %53, i32 6)
  %55 = icmp eq i32 0, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %48
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 6
  %60 = call i32 @fts5Porter_MGt0(i8* %57, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i8*, i8** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 6
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = call i32 @memcpy(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 6
  %71 = add nsw i32 %70, 4
  %72 = load i32*, i32** %4, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %62, %56
  br label %74

74:                                               ; preds = %73, %48, %45
  br label %75

75:                                               ; preds = %74, %44
  br label %646

76:                                               ; preds = %2
  %77 = load i32, i32* %6, align 4
  %78 = icmp sgt i32 %77, 4
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load i8*, i8** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %81, 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %84, i32 4)
  %86 = icmp eq i32 0, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %79
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %89, 4
  %91 = call i32 @fts5Porter_MGt0(i8* %88, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = load i8*, i8** %3, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %95, 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = call i32 @memcpy(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 4
  %102 = add nsw i32 %101, 4
  %103 = load i32*, i32** %4, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %93, %87
  br label %135

105:                                              ; preds = %79, %76
  %106 = load i32, i32* %6, align 4
  %107 = icmp sgt i32 %106, 4
  br i1 %107, label %108, label %134

108:                                              ; preds = %105
  %109 = load i8*, i8** %3, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 %110, 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %113, i32 4)
  %115 = icmp eq i32 0, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %108
  %117 = load i8*, i8** %3, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %118, 4
  %120 = call i32 @fts5Porter_MGt0(i8* %117, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %116
  %123 = load i8*, i8** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %124, 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = call i32 @memcpy(i8* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %129 = load i32, i32* %6, align 4
  %130 = sub nsw i32 %129, 4
  %131 = add nsw i32 %130, 4
  %132 = load i32*, i32** %4, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %122, %116
  br label %134

134:                                              ; preds = %133, %108, %105
  br label %135

135:                                              ; preds = %134, %104
  br label %646

136:                                              ; preds = %2
  %137 = load i32, i32* %6, align 4
  %138 = icmp sgt i32 %137, 4
  br i1 %138, label %139, label %165

139:                                              ; preds = %136
  %140 = load i8*, i8** %3, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sub nsw i32 %141, 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  %145 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %144, i32 4)
  %146 = icmp eq i32 0, %145
  br i1 %146, label %147, label %165

147:                                              ; preds = %139
  %148 = load i8*, i8** %3, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sub nsw i32 %149, 4
  %151 = call i32 @fts5Porter_MGt0(i8* %148, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %147
  %154 = load i8*, i8** %3, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sub nsw i32 %155, 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = call i32 @memcpy(i8* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %160 = load i32, i32* %6, align 4
  %161 = sub nsw i32 %160, 4
  %162 = add nsw i32 %161, 3
  %163 = load i32*, i32** %4, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %153, %147
  br label %165

165:                                              ; preds = %164, %139, %136
  br label %646

166:                                              ; preds = %2
  %167 = load i32, i32* %6, align 4
  %168 = icmp sgt i32 %167, 4
  br i1 %168, label %169, label %195

169:                                              ; preds = %166
  %170 = load i8*, i8** %3, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sub nsw i32 %171, 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %174, i32 4)
  %176 = icmp eq i32 0, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %169
  %178 = load i8*, i8** %3, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sub nsw i32 %179, 4
  %181 = call i32 @fts5Porter_MGt0(i8* %178, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %177
  %184 = load i8*, i8** %3, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sub nsw i32 %185, 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = call i32 @memcpy(i8* %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3)
  %190 = load i32, i32* %6, align 4
  %191 = sub nsw i32 %190, 4
  %192 = add nsw i32 %191, 3
  %193 = load i32*, i32** %4, align 8
  store i32 %192, i32* %193, align 4
  br label %194

194:                                              ; preds = %183, %177
  br label %195

195:                                              ; preds = %194, %169, %166
  br label %646

196:                                              ; preds = %2
  %197 = load i32, i32* %6, align 4
  %198 = icmp sgt i32 %197, 3
  br i1 %198, label %199, label %225

199:                                              ; preds = %196
  %200 = load i8*, i8** %3, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sub nsw i32 %201, 3
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  %205 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %204, i32 3)
  %206 = icmp eq i32 0, %205
  br i1 %206, label %207, label %225

207:                                              ; preds = %199
  %208 = load i8*, i8** %3, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sub nsw i32 %209, 3
  %211 = call i32 @fts5Porter_MGt0(i8* %208, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %207
  %214 = load i8*, i8** %3, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sub nsw i32 %215, 3
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %214, i64 %217
  %219 = call i32 @memcpy(i8* %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3)
  %220 = load i32, i32* %6, align 4
  %221 = sub nsw i32 %220, 3
  %222 = add nsw i32 %221, 3
  %223 = load i32*, i32** %4, align 8
  store i32 %222, i32* %223, align 4
  br label %224

224:                                              ; preds = %213, %207
  br label %345

225:                                              ; preds = %199, %196
  %226 = load i32, i32* %6, align 4
  %227 = icmp sgt i32 %226, 4
  br i1 %227, label %228, label %254

228:                                              ; preds = %225
  %229 = load i8*, i8** %3, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sub nsw i32 %230, 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  %234 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %233, i32 4)
  %235 = icmp eq i32 0, %234
  br i1 %235, label %236, label %254

236:                                              ; preds = %228
  %237 = load i8*, i8** %3, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sub nsw i32 %238, 4
  %240 = call i32 @fts5Porter_MGt0(i8* %237, i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %236
  %243 = load i8*, i8** %3, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sub nsw i32 %244, 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %243, i64 %246
  %248 = call i32 @memcpy(i8* %247, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 2)
  %249 = load i32, i32* %6, align 4
  %250 = sub nsw i32 %249, 4
  %251 = add nsw i32 %250, 2
  %252 = load i32*, i32** %4, align 8
  store i32 %251, i32* %252, align 4
  br label %253

253:                                              ; preds = %242, %236
  br label %344

254:                                              ; preds = %228, %225
  %255 = load i32, i32* %6, align 4
  %256 = icmp sgt i32 %255, 5
  br i1 %256, label %257, label %283

257:                                              ; preds = %254
  %258 = load i8*, i8** %3, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sub nsw i32 %259, 5
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, i8* %258, i64 %261
  %263 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %262, i32 5)
  %264 = icmp eq i32 0, %263
  br i1 %264, label %265, label %283

265:                                              ; preds = %257
  %266 = load i8*, i8** %3, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sub nsw i32 %267, 5
  %269 = call i32 @fts5Porter_MGt0(i8* %266, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %282

271:                                              ; preds = %265
  %272 = load i8*, i8** %3, align 8
  %273 = load i32, i32* %6, align 4
  %274 = sub nsw i32 %273, 5
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %272, i64 %275
  %277 = call i32 @memcpy(i8* %276, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 3)
  %278 = load i32, i32* %6, align 4
  %279 = sub nsw i32 %278, 5
  %280 = add nsw i32 %279, 3
  %281 = load i32*, i32** %4, align 8
  store i32 %280, i32* %281, align 4
  br label %282

282:                                              ; preds = %271, %265
  br label %343

283:                                              ; preds = %257, %254
  %284 = load i32, i32* %6, align 4
  %285 = icmp sgt i32 %284, 3
  br i1 %285, label %286, label %312

286:                                              ; preds = %283
  %287 = load i8*, i8** %3, align 8
  %288 = load i32, i32* %6, align 4
  %289 = sub nsw i32 %288, 3
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %287, i64 %290
  %292 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %291, i32 3)
  %293 = icmp eq i32 0, %292
  br i1 %293, label %294, label %312

294:                                              ; preds = %286
  %295 = load i8*, i8** %3, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sub nsw i32 %296, 3
  %298 = call i32 @fts5Porter_MGt0(i8* %295, i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %311

300:                                              ; preds = %294
  %301 = load i8*, i8** %3, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sub nsw i32 %302, 3
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %301, i64 %304
  %306 = call i32 @memcpy(i8* %305, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 1)
  %307 = load i32, i32* %6, align 4
  %308 = sub nsw i32 %307, 3
  %309 = add nsw i32 %308, 1
  %310 = load i32*, i32** %4, align 8
  store i32 %309, i32* %310, align 4
  br label %311

311:                                              ; preds = %300, %294
  br label %342

312:                                              ; preds = %286, %283
  %313 = load i32, i32* %6, align 4
  %314 = icmp sgt i32 %313, 5
  br i1 %314, label %315, label %341

315:                                              ; preds = %312
  %316 = load i8*, i8** %3, align 8
  %317 = load i32, i32* %6, align 4
  %318 = sub nsw i32 %317, 5
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %316, i64 %319
  %321 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %320, i32 5)
  %322 = icmp eq i32 0, %321
  br i1 %322, label %323, label %341

323:                                              ; preds = %315
  %324 = load i8*, i8** %3, align 8
  %325 = load i32, i32* %6, align 4
  %326 = sub nsw i32 %325, 5
  %327 = call i32 @fts5Porter_MGt0(i8* %324, i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %340

329:                                              ; preds = %323
  %330 = load i8*, i8** %3, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sub nsw i32 %331, 5
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, i8* %330, i64 %333
  %335 = call i32 @memcpy(i8* %334, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 3)
  %336 = load i32, i32* %6, align 4
  %337 = sub nsw i32 %336, 5
  %338 = add nsw i32 %337, 3
  %339 = load i32*, i32** %4, align 8
  store i32 %338, i32* %339, align 4
  br label %340

340:                                              ; preds = %329, %323
  br label %341

341:                                              ; preds = %340, %315, %312
  br label %342

342:                                              ; preds = %341, %311
  br label %343

343:                                              ; preds = %342, %282
  br label %344

344:                                              ; preds = %343, %253
  br label %345

345:                                              ; preds = %344, %224
  br label %646

346:                                              ; preds = %2
  %347 = load i32, i32* %6, align 4
  %348 = icmp sgt i32 %347, 7
  br i1 %348, label %349, label %375

349:                                              ; preds = %346
  %350 = load i8*, i8** %3, align 8
  %351 = load i32, i32* %6, align 4
  %352 = sub nsw i32 %351, 7
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, i8* %350, i64 %353
  %355 = call i32 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %354, i32 7)
  %356 = icmp eq i32 0, %355
  br i1 %356, label %357, label %375

357:                                              ; preds = %349
  %358 = load i8*, i8** %3, align 8
  %359 = load i32, i32* %6, align 4
  %360 = sub nsw i32 %359, 7
  %361 = call i32 @fts5Porter_MGt0(i8* %358, i32 %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %374

363:                                              ; preds = %357
  %364 = load i8*, i8** %3, align 8
  %365 = load i32, i32* %6, align 4
  %366 = sub nsw i32 %365, 7
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %364, i64 %367
  %369 = call i32 @memcpy(i8* %368, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %370 = load i32, i32* %6, align 4
  %371 = sub nsw i32 %370, 7
  %372 = add nsw i32 %371, 3
  %373 = load i32*, i32** %4, align 8
  store i32 %372, i32* %373, align 4
  br label %374

374:                                              ; preds = %363, %357
  br label %435

375:                                              ; preds = %349, %346
  %376 = load i32, i32* %6, align 4
  %377 = icmp sgt i32 %376, 5
  br i1 %377, label %378, label %404

378:                                              ; preds = %375
  %379 = load i8*, i8** %3, align 8
  %380 = load i32, i32* %6, align 4
  %381 = sub nsw i32 %380, 5
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8, i8* %379, i64 %382
  %384 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* %383, i32 5)
  %385 = icmp eq i32 0, %384
  br i1 %385, label %386, label %404

386:                                              ; preds = %378
  %387 = load i8*, i8** %3, align 8
  %388 = load i32, i32* %6, align 4
  %389 = sub nsw i32 %388, 5
  %390 = call i32 @fts5Porter_MGt0(i8* %387, i32 %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %403

392:                                              ; preds = %386
  %393 = load i8*, i8** %3, align 8
  %394 = load i32, i32* %6, align 4
  %395 = sub nsw i32 %394, 5
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8, i8* %393, i64 %396
  %398 = call i32 @memcpy(i8* %397, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %399 = load i32, i32* %6, align 4
  %400 = sub nsw i32 %399, 5
  %401 = add nsw i32 %400, 3
  %402 = load i32*, i32** %4, align 8
  store i32 %401, i32* %402, align 4
  br label %403

403:                                              ; preds = %392, %386
  br label %434

404:                                              ; preds = %378, %375
  %405 = load i32, i32* %6, align 4
  %406 = icmp sgt i32 %405, 4
  br i1 %406, label %407, label %433

407:                                              ; preds = %404
  %408 = load i8*, i8** %3, align 8
  %409 = load i32, i32* %6, align 4
  %410 = sub nsw i32 %409, 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, i8* %408, i64 %411
  %413 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %412, i32 4)
  %414 = icmp eq i32 0, %413
  br i1 %414, label %415, label %433

415:                                              ; preds = %407
  %416 = load i8*, i8** %3, align 8
  %417 = load i32, i32* %6, align 4
  %418 = sub nsw i32 %417, 4
  %419 = call i32 @fts5Porter_MGt0(i8* %416, i32 %418)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %432

421:                                              ; preds = %415
  %422 = load i8*, i8** %3, align 8
  %423 = load i32, i32* %6, align 4
  %424 = sub nsw i32 %423, 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, i8* %422, i64 %425
  %427 = call i32 @memcpy(i8* %426, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %428 = load i32, i32* %6, align 4
  %429 = sub nsw i32 %428, 4
  %430 = add nsw i32 %429, 3
  %431 = load i32*, i32** %4, align 8
  store i32 %430, i32* %431, align 4
  br label %432

432:                                              ; preds = %421, %415
  br label %433

433:                                              ; preds = %432, %407, %404
  br label %434

434:                                              ; preds = %433, %403
  br label %435

435:                                              ; preds = %434, %374
  br label %646

436:                                              ; preds = %2
  %437 = load i32, i32* %6, align 4
  %438 = icmp sgt i32 %437, 5
  br i1 %438, label %439, label %465

439:                                              ; preds = %436
  %440 = load i8*, i8** %3, align 8
  %441 = load i32, i32* %6, align 4
  %442 = sub nsw i32 %441, 5
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i8, i8* %440, i64 %443
  %445 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* %444, i32 5)
  %446 = icmp eq i32 0, %445
  br i1 %446, label %447, label %465

447:                                              ; preds = %439
  %448 = load i8*, i8** %3, align 8
  %449 = load i32, i32* %6, align 4
  %450 = sub nsw i32 %449, 5
  %451 = call i32 @fts5Porter_MGt0(i8* %448, i32 %450)
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %464

453:                                              ; preds = %447
  %454 = load i8*, i8** %3, align 8
  %455 = load i32, i32* %6, align 4
  %456 = sub nsw i32 %455, 5
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i8, i8* %454, i64 %457
  %459 = call i32 @memcpy(i8* %458, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 2)
  %460 = load i32, i32* %6, align 4
  %461 = sub nsw i32 %460, 5
  %462 = add nsw i32 %461, 2
  %463 = load i32*, i32** %4, align 8
  store i32 %462, i32* %463, align 4
  br label %464

464:                                              ; preds = %453, %447
  br label %555

465:                                              ; preds = %439, %436
  %466 = load i32, i32* %6, align 4
  %467 = icmp sgt i32 %466, 7
  br i1 %467, label %468, label %494

468:                                              ; preds = %465
  %469 = load i8*, i8** %3, align 8
  %470 = load i32, i32* %6, align 4
  %471 = sub nsw i32 %470, 7
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i8, i8* %469, i64 %472
  %474 = call i32 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* %473, i32 7)
  %475 = icmp eq i32 0, %474
  br i1 %475, label %476, label %494

476:                                              ; preds = %468
  %477 = load i8*, i8** %3, align 8
  %478 = load i32, i32* %6, align 4
  %479 = sub nsw i32 %478, 7
  %480 = call i32 @fts5Porter_MGt0(i8* %477, i32 %479)
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %493

482:                                              ; preds = %476
  %483 = load i8*, i8** %3, align 8
  %484 = load i32, i32* %6, align 4
  %485 = sub nsw i32 %484, 7
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i8, i8* %483, i64 %486
  %488 = call i32 @memcpy(i8* %487, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 3)
  %489 = load i32, i32* %6, align 4
  %490 = sub nsw i32 %489, 7
  %491 = add nsw i32 %490, 3
  %492 = load i32*, i32** %4, align 8
  store i32 %491, i32* %492, align 4
  br label %493

493:                                              ; preds = %482, %476
  br label %554

494:                                              ; preds = %468, %465
  %495 = load i32, i32* %6, align 4
  %496 = icmp sgt i32 %495, 7
  br i1 %496, label %497, label %523

497:                                              ; preds = %494
  %498 = load i8*, i8** %3, align 8
  %499 = load i32, i32* %6, align 4
  %500 = sub nsw i32 %499, 7
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i8, i8* %498, i64 %501
  %503 = call i32 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* %502, i32 7)
  %504 = icmp eq i32 0, %503
  br i1 %504, label %505, label %523

505:                                              ; preds = %497
  %506 = load i8*, i8** %3, align 8
  %507 = load i32, i32* %6, align 4
  %508 = sub nsw i32 %507, 7
  %509 = call i32 @fts5Porter_MGt0(i8* %506, i32 %508)
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %522

511:                                              ; preds = %505
  %512 = load i8*, i8** %3, align 8
  %513 = load i32, i32* %6, align 4
  %514 = sub nsw i32 %513, 7
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i8, i8* %512, i64 %515
  %517 = call i32 @memcpy(i8* %516, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32 3)
  %518 = load i32, i32* %6, align 4
  %519 = sub nsw i32 %518, 7
  %520 = add nsw i32 %519, 3
  %521 = load i32*, i32** %4, align 8
  store i32 %520, i32* %521, align 4
  br label %522

522:                                              ; preds = %511, %505
  br label %553

523:                                              ; preds = %497, %494
  %524 = load i32, i32* %6, align 4
  %525 = icmp sgt i32 %524, 7
  br i1 %525, label %526, label %552

526:                                              ; preds = %523
  %527 = load i8*, i8** %3, align 8
  %528 = load i32, i32* %6, align 4
  %529 = sub nsw i32 %528, 7
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i8, i8* %527, i64 %530
  %532 = call i32 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i8* %531, i32 7)
  %533 = icmp eq i32 0, %532
  br i1 %533, label %534, label %552

534:                                              ; preds = %526
  %535 = load i8*, i8** %3, align 8
  %536 = load i32, i32* %6, align 4
  %537 = sub nsw i32 %536, 7
  %538 = call i32 @fts5Porter_MGt0(i8* %535, i32 %537)
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %551

540:                                              ; preds = %534
  %541 = load i8*, i8** %3, align 8
  %542 = load i32, i32* %6, align 4
  %543 = sub nsw i32 %542, 7
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8, i8* %541, i64 %544
  %546 = call i32 @memcpy(i8* %545, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 3)
  %547 = load i32, i32* %6, align 4
  %548 = sub nsw i32 %547, 7
  %549 = add nsw i32 %548, 3
  %550 = load i32*, i32** %4, align 8
  store i32 %549, i32* %550, align 4
  br label %551

551:                                              ; preds = %540, %534
  br label %552

552:                                              ; preds = %551, %526, %523
  br label %553

553:                                              ; preds = %552, %522
  br label %554

554:                                              ; preds = %553, %493
  br label %555

555:                                              ; preds = %554, %464
  br label %646

556:                                              ; preds = %2
  %557 = load i32, i32* %6, align 4
  %558 = icmp sgt i32 %557, 5
  br i1 %558, label %559, label %585

559:                                              ; preds = %556
  %560 = load i8*, i8** %3, align 8
  %561 = load i32, i32* %6, align 4
  %562 = sub nsw i32 %561, 5
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i8, i8* %560, i64 %563
  %565 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* %564, i32 5)
  %566 = icmp eq i32 0, %565
  br i1 %566, label %567, label %585

567:                                              ; preds = %559
  %568 = load i8*, i8** %3, align 8
  %569 = load i32, i32* %6, align 4
  %570 = sub nsw i32 %569, 5
  %571 = call i32 @fts5Porter_MGt0(i8* %568, i32 %570)
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %584

573:                                              ; preds = %567
  %574 = load i8*, i8** %3, align 8
  %575 = load i32, i32* %6, align 4
  %576 = sub nsw i32 %575, 5
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i8, i8* %574, i64 %577
  %579 = call i32 @memcpy(i8* %578, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 2)
  %580 = load i32, i32* %6, align 4
  %581 = sub nsw i32 %580, 5
  %582 = add nsw i32 %581, 2
  %583 = load i32*, i32** %4, align 8
  store i32 %582, i32* %583, align 4
  br label %584

584:                                              ; preds = %573, %567
  br label %645

585:                                              ; preds = %559, %556
  %586 = load i32, i32* %6, align 4
  %587 = icmp sgt i32 %586, 5
  br i1 %587, label %588, label %614

588:                                              ; preds = %585
  %589 = load i8*, i8** %3, align 8
  %590 = load i32, i32* %6, align 4
  %591 = sub nsw i32 %590, 5
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i8, i8* %589, i64 %592
  %594 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* %593, i32 5)
  %595 = icmp eq i32 0, %594
  br i1 %595, label %596, label %614

596:                                              ; preds = %588
  %597 = load i8*, i8** %3, align 8
  %598 = load i32, i32* %6, align 4
  %599 = sub nsw i32 %598, 5
  %600 = call i32 @fts5Porter_MGt0(i8* %597, i32 %599)
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %613

602:                                              ; preds = %596
  %603 = load i8*, i8** %3, align 8
  %604 = load i32, i32* %6, align 4
  %605 = sub nsw i32 %604, 5
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i8, i8* %603, i64 %606
  %608 = call i32 @memcpy(i8* %607, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 3)
  %609 = load i32, i32* %6, align 4
  %610 = sub nsw i32 %609, 5
  %611 = add nsw i32 %610, 3
  %612 = load i32*, i32** %4, align 8
  store i32 %611, i32* %612, align 4
  br label %613

613:                                              ; preds = %602, %596
  br label %644

614:                                              ; preds = %588, %585
  %615 = load i32, i32* %6, align 4
  %616 = icmp sgt i32 %615, 6
  br i1 %616, label %617, label %643

617:                                              ; preds = %614
  %618 = load i8*, i8** %3, align 8
  %619 = load i32, i32* %6, align 4
  %620 = sub nsw i32 %619, 6
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i8, i8* %618, i64 %621
  %623 = call i32 @memcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* %622, i32 6)
  %624 = icmp eq i32 0, %623
  br i1 %624, label %625, label %643

625:                                              ; preds = %617
  %626 = load i8*, i8** %3, align 8
  %627 = load i32, i32* %6, align 4
  %628 = sub nsw i32 %627, 6
  %629 = call i32 @fts5Porter_MGt0(i8* %626, i32 %628)
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %642

631:                                              ; preds = %625
  %632 = load i8*, i8** %3, align 8
  %633 = load i32, i32* %6, align 4
  %634 = sub nsw i32 %633, 6
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i8, i8* %632, i64 %635
  %637 = call i32 @memcpy(i8* %636, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3)
  %638 = load i32, i32* %6, align 4
  %639 = sub nsw i32 %638, 6
  %640 = add nsw i32 %639, 3
  %641 = load i32*, i32** %4, align 8
  store i32 %640, i32* %641, align 4
  br label %642

642:                                              ; preds = %631, %625
  br label %643

643:                                              ; preds = %642, %617, %614
  br label %644

644:                                              ; preds = %643, %613
  br label %645

645:                                              ; preds = %644, %584
  br label %646

646:                                              ; preds = %2, %645, %555, %435, %345, %195, %165, %135, %75
  %647 = load i32, i32* %5, align 4
  ret i32 %647
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fts5Porter_MGt0(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
