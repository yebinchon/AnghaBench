; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_normalize.c_sqlite3GetToken.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_normalize.c_sqlite3GetToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aiClass = common dso_local global i32* null, align 8
@TK_SPACE = common dso_local global i32 0, align 4
@TK_MINUS = common dso_local global i32 0, align 4
@TK_LP = common dso_local global i32 0, align 4
@TK_RP = common dso_local global i32 0, align 4
@TK_SEMI = common dso_local global i32 0, align 4
@TK_PLUS = common dso_local global i32 0, align 4
@TK_STAR = common dso_local global i32 0, align 4
@TK_SLASH = common dso_local global i32 0, align 4
@TK_REM = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@TK_NE = common dso_local global i32 0, align 4
@TK_LSHIFT = common dso_local global i32 0, align 4
@TK_LT = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_RSHIFT = common dso_local global i32 0, align 4
@TK_GT = common dso_local global i32 0, align 4
@TK_ILLEGAL = common dso_local global i32 0, align 4
@TK_BITOR = common dso_local global i32 0, align 4
@TK_CONCAT = common dso_local global i32 0, align 4
@TK_COMMA = common dso_local global i32 0, align 4
@TK_BITAND = common dso_local global i32 0, align 4
@TK_BITNOT = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@TK_DOT = common dso_local global i32 0, align 4
@TK_INTEGER = common dso_local global i32 0, align 4
@TK_FLOAT = common dso_local global i32 0, align 4
@TK_VARIABLE = common dso_local global i32 0, align 4
@TK_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @sqlite3GetToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite3GetToken(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** @aiClass, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %746 [
    i32 133, label %16
    i32 142, label %33
    i32 144, label %64
    i32 136, label %67
    i32 135, label %70
    i32 139, label %73
    i32 132, label %76
    i32 134, label %79
    i32 141, label %134
    i32 148, label %137
    i32 143, label %147
    i32 147, label %171
    i32 153, label %189
    i32 140, label %201
    i32 152, label %213
    i32 154, label %216
    i32 131, label %219
    i32 138, label %222
    i32 149, label %290
    i32 151, label %300
    i32 137, label %464
    i32 129, label %497
    i32 150, label %514
    i32 130, label %514
    i32 145, label %629
    i32 128, label %660
    i32 146, label %745
  ]

16:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %26, %16
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @sqlite3Isspace(i8 zeroext %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %17

29:                                               ; preds = %17
  %30 = load i32, i32* @TK_SPACE, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %765

33:                                               ; preds = %2
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  store i32 2, i32* %6, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 10
  br label %51

51:                                               ; preds = %48, %40
  %52 = phi i1 [ false, %40 ], [ %50, %48 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %40

57:                                               ; preds = %51
  %58 = load i32, i32* @TK_SPACE, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %765

61:                                               ; preds = %33
  %62 = load i32, i32* @TK_MINUS, align 4
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  store i32 1, i32* %3, align 4
  br label %765

64:                                               ; preds = %2
  %65 = load i32, i32* @TK_LP, align 4
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  store i32 1, i32* %3, align 4
  br label %765

67:                                               ; preds = %2
  %68 = load i32, i32* @TK_RP, align 4
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  store i32 1, i32* %3, align 4
  br label %765

70:                                               ; preds = %2
  %71 = load i32, i32* @TK_SEMI, align 4
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  store i32 1, i32* %3, align 4
  br label %765

73:                                               ; preds = %2
  %74 = load i32, i32* @TK_PLUS, align 4
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  store i32 1, i32* %3, align 4
  br label %765

76:                                               ; preds = %2
  %77 = load i32, i32* @TK_STAR, align 4
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  store i32 1, i32* %3, align 4
  br label %765

79:                                               ; preds = %2
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp ne i32 %83, 42
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85, %79
  %92 = load i32, i32* @TK_SLASH, align 4
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  store i32 1, i32* %3, align 4
  br label %765

94:                                               ; preds = %85
  store i32 3, i32* %6, align 4
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %121, %94
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 42
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp ne i32 %108, 47
  br i1 %109, label %110, label %118

110:                                              ; preds = %102, %99
  %111 = load i8*, i8** %4, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  store i32 %116, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %110, %102
  %119 = phi i1 [ false, %102 ], [ %117, %110 ]
  br i1 %119, label %120, label %124

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %99

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32, i32* @TK_SPACE, align 4
  %132 = load i32*, i32** %5, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %3, align 4
  br label %765

134:                                              ; preds = %2
  %135 = load i32, i32* @TK_REM, align 4
  %136 = load i32*, i32** %5, align 8
  store i32 %135, i32* %136, align 4
  store i32 1, i32* %3, align 4
  br label %765

137:                                              ; preds = %2
  %138 = load i32, i32* @TK_EQ, align 4
  %139 = load i32*, i32** %5, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 61
  %145 = zext i1 %144 to i32
  %146 = add nsw i32 1, %145
  store i32 %146, i32* %3, align 4
  br label %765

147:                                              ; preds = %2
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  store i32 %151, i32* %7, align 4
  %152 = icmp eq i32 %151, 61
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32, i32* @TK_LE, align 4
  %155 = load i32*, i32** %5, align 8
  store i32 %154, i32* %155, align 4
  store i32 2, i32* %3, align 4
  br label %765

156:                                              ; preds = %147
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %157, 62
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* @TK_NE, align 4
  %161 = load i32*, i32** %5, align 8
  store i32 %160, i32* %161, align 4
  store i32 2, i32* %3, align 4
  br label %765

162:                                              ; preds = %156
  %163 = load i32, i32* %7, align 4
  %164 = icmp eq i32 %163, 60
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* @TK_LSHIFT, align 4
  %167 = load i32*, i32** %5, align 8
  store i32 %166, i32* %167, align 4
  store i32 2, i32* %3, align 4
  br label %765

168:                                              ; preds = %162
  %169 = load i32, i32* @TK_LT, align 4
  %170 = load i32*, i32** %5, align 8
  store i32 %169, i32* %170, align 4
  store i32 1, i32* %3, align 4
  br label %765

171:                                              ; preds = %2
  %172 = load i8*, i8** %4, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  store i32 %175, i32* %7, align 4
  %176 = icmp eq i32 %175, 61
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i32, i32* @TK_GE, align 4
  %179 = load i32*, i32** %5, align 8
  store i32 %178, i32* %179, align 4
  store i32 2, i32* %3, align 4
  br label %765

180:                                              ; preds = %171
  %181 = load i32, i32* %7, align 4
  %182 = icmp eq i32 %181, 62
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* @TK_RSHIFT, align 4
  %185 = load i32*, i32** %5, align 8
  store i32 %184, i32* %185, align 4
  store i32 2, i32* %3, align 4
  br label %765

186:                                              ; preds = %180
  %187 = load i32, i32* @TK_GT, align 4
  %188 = load i32*, i32** %5, align 8
  store i32 %187, i32* %188, align 4
  store i32 1, i32* %3, align 4
  br label %765

189:                                              ; preds = %2
  %190 = load i8*, i8** %4, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp ne i32 %193, 61
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i32, i32* @TK_ILLEGAL, align 4
  %197 = load i32*, i32** %5, align 8
  store i32 %196, i32* %197, align 4
  store i32 1, i32* %3, align 4
  br label %765

198:                                              ; preds = %189
  %199 = load i32, i32* @TK_NE, align 4
  %200 = load i32*, i32** %5, align 8
  store i32 %199, i32* %200, align 4
  store i32 2, i32* %3, align 4
  br label %765

201:                                              ; preds = %2
  %202 = load i8*, i8** %4, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp ne i32 %205, 124
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load i32, i32* @TK_BITOR, align 4
  %209 = load i32*, i32** %5, align 8
  store i32 %208, i32* %209, align 4
  store i32 1, i32* %3, align 4
  br label %765

210:                                              ; preds = %201
  %211 = load i32, i32* @TK_CONCAT, align 4
  %212 = load i32*, i32** %5, align 8
  store i32 %211, i32* %212, align 4
  store i32 2, i32* %3, align 4
  br label %765

213:                                              ; preds = %2
  %214 = load i32, i32* @TK_COMMA, align 4
  %215 = load i32*, i32** %5, align 8
  store i32 %214, i32* %215, align 4
  store i32 1, i32* %3, align 4
  br label %765

216:                                              ; preds = %2
  %217 = load i32, i32* @TK_BITAND, align 4
  %218 = load i32*, i32** %5, align 8
  store i32 %217, i32* %218, align 4
  store i32 1, i32* %3, align 4
  br label %765

219:                                              ; preds = %2
  %220 = load i32, i32* @TK_BITNOT, align 4
  %221 = load i32*, i32** %5, align 8
  store i32 %220, i32* %221, align 4
  store i32 1, i32* %3, align 4
  br label %765

222:                                              ; preds = %2
  %223 = load i8*, i8** %4, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp eq i32 %227, 96
  %229 = zext i1 %228 to i32
  %230 = call i32 @testcase(i32 %229)
  %231 = load i32, i32* %8, align 4
  %232 = icmp eq i32 %231, 39
  %233 = zext i1 %232 to i32
  %234 = call i32 @testcase(i32 %233)
  %235 = load i32, i32* %8, align 4
  %236 = icmp eq i32 %235, 34
  %237 = zext i1 %236 to i32
  %238 = call i32 @testcase(i32 %237)
  store i32 1, i32* %6, align 4
  br label %239

239:                                              ; preds = %267, %222
  %240 = load i8*, i8** %4, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = zext i8 %244 to i32
  store i32 %245, i32* %7, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %270

247:                                              ; preds = %239
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %8, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %266

251:                                              ; preds = %247
  %252 = load i8*, i8** %4, align 8
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %252, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = load i32, i32* %8, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %251
  %262 = load i32, i32* %6, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %6, align 4
  br label %265

264:                                              ; preds = %251
  br label %270

265:                                              ; preds = %261
  br label %266

266:                                              ; preds = %265, %247
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %6, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %6, align 4
  br label %239

270:                                              ; preds = %264, %239
  %271 = load i32, i32* %7, align 4
  %272 = icmp eq i32 %271, 39
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load i32, i32* @TK_STRING, align 4
  %275 = load i32*, i32** %5, align 8
  store i32 %274, i32* %275, align 4
  %276 = load i32, i32* %6, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %3, align 4
  br label %765

278:                                              ; preds = %270
  %279 = load i32, i32* %7, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %278
  %282 = load i32, i32* @TK_ID, align 4
  %283 = load i32*, i32** %5, align 8
  store i32 %282, i32* %283, align 4
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %3, align 4
  br label %765

286:                                              ; preds = %278
  %287 = load i32, i32* @TK_ILLEGAL, align 4
  %288 = load i32*, i32** %5, align 8
  store i32 %287, i32* %288, align 4
  %289 = load i32, i32* %6, align 4
  store i32 %289, i32* %3, align 4
  br label %765

290:                                              ; preds = %2
  %291 = load i8*, i8** %4, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 1
  %293 = load i8, i8* %292, align 1
  %294 = call i32 @sqlite3Isdigit(i8 zeroext %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %290
  %297 = load i32, i32* @TK_DOT, align 4
  %298 = load i32*, i32** %5, align 8
  store i32 %297, i32* %298, align 4
  store i32 1, i32* %3, align 4
  br label %765

299:                                              ; preds = %290
  br label %300

300:                                              ; preds = %2, %299
  %301 = load i32, i32* @TK_INTEGER, align 4
  %302 = load i32*, i32** %5, align 8
  store i32 %301, i32* %302, align 4
  %303 = load i8*, i8** %4, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 0
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = icmp eq i32 %306, 48
  br i1 %307, label %308, label %341

308:                                              ; preds = %300
  %309 = load i8*, i8** %4, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 1
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i32
  %313 = icmp eq i32 %312, 120
  br i1 %313, label %320, label %314

314:                                              ; preds = %308
  %315 = load i8*, i8** %4, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 1
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = icmp eq i32 %318, 88
  br i1 %319, label %320, label %341

320:                                              ; preds = %314, %308
  %321 = load i8*, i8** %4, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 2
  %323 = load i8, i8* %322, align 1
  %324 = call i32 @sqlite3Isxdigit(i8 zeroext %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %341

326:                                              ; preds = %320
  store i32 3, i32* %6, align 4
  br label %327

327:                                              ; preds = %336, %326
  %328 = load i8*, i8** %4, align 8
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %328, i64 %330
  %332 = load i8, i8* %331, align 1
  %333 = call i32 @sqlite3Isxdigit(i8 zeroext %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %327
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %6, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %6, align 4
  br label %327

339:                                              ; preds = %327
  %340 = load i32, i32* %6, align 4
  store i32 %340, i32* %3, align 4
  br label %765

341:                                              ; preds = %320, %314, %300
  store i32 0, i32* %6, align 4
  br label %342

342:                                              ; preds = %351, %341
  %343 = load i8*, i8** %4, align 8
  %344 = load i32, i32* %6, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %343, i64 %345
  %347 = load i8, i8* %346, align 1
  %348 = call i32 @sqlite3Isdigit(i8 zeroext %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %342
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %6, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %6, align 4
  br label %342

354:                                              ; preds = %342
  %355 = load i8*, i8** %4, align 8
  %356 = load i32, i32* %6, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8, i8* %355, i64 %357
  %359 = load i8, i8* %358, align 1
  %360 = zext i8 %359 to i32
  %361 = icmp eq i32 %360, 46
  br i1 %361, label %362, label %379

362:                                              ; preds = %354
  %363 = load i32, i32* %6, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %6, align 4
  br label %365

365:                                              ; preds = %373, %362
  %366 = load i8*, i8** %4, align 8
  %367 = load i32, i32* %6, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, i8* %366, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = call i32 @sqlite3Isdigit(i8 zeroext %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %365
  %374 = load i32, i32* %6, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %6, align 4
  br label %365

376:                                              ; preds = %365
  %377 = load i32, i32* @TK_FLOAT, align 4
  %378 = load i32*, i32** %5, align 8
  store i32 %377, i32* %378, align 4
  br label %379

379:                                              ; preds = %376, %354
  %380 = load i8*, i8** %4, align 8
  %381 = load i32, i32* %6, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8, i8* %380, i64 %382
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = icmp eq i32 %385, 101
  br i1 %386, label %395, label %387

387:                                              ; preds = %379
  %388 = load i8*, i8** %4, align 8
  %389 = load i32, i32* %6, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8, i8* %388, i64 %390
  %392 = load i8, i8* %391, align 1
  %393 = zext i8 %392 to i32
  %394 = icmp eq i32 %393, 69
  br i1 %394, label %395, label %448

395:                                              ; preds = %387, %379
  %396 = load i8*, i8** %4, align 8
  %397 = load i32, i32* %6, align 4
  %398 = add nsw i32 %397, 1
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %396, i64 %399
  %401 = load i8, i8* %400, align 1
  %402 = call i32 @sqlite3Isdigit(i8 zeroext %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %431, label %404

404:                                              ; preds = %395
  %405 = load i8*, i8** %4, align 8
  %406 = load i32, i32* %6, align 4
  %407 = add nsw i32 %406, 1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, i8* %405, i64 %408
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i32
  %412 = icmp eq i32 %411, 43
  br i1 %412, label %422, label %413

413:                                              ; preds = %404
  %414 = load i8*, i8** %4, align 8
  %415 = load i32, i32* %6, align 4
  %416 = add nsw i32 %415, 1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i8, i8* %414, i64 %417
  %419 = load i8, i8* %418, align 1
  %420 = zext i8 %419 to i32
  %421 = icmp eq i32 %420, 45
  br i1 %421, label %422, label %448

422:                                              ; preds = %413, %404
  %423 = load i8*, i8** %4, align 8
  %424 = load i32, i32* %6, align 4
  %425 = add nsw i32 %424, 2
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, i8* %423, i64 %426
  %428 = load i8, i8* %427, align 1
  %429 = call i32 @sqlite3Isdigit(i8 zeroext %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %448

431:                                              ; preds = %422, %395
  %432 = load i32, i32* %6, align 4
  %433 = add nsw i32 %432, 2
  store i32 %433, i32* %6, align 4
  br label %434

434:                                              ; preds = %442, %431
  %435 = load i8*, i8** %4, align 8
  %436 = load i32, i32* %6, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, i8* %435, i64 %437
  %439 = load i8, i8* %438, align 1
  %440 = call i32 @sqlite3Isdigit(i8 zeroext %439)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %434
  %443 = load i32, i32* %6, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %6, align 4
  br label %434

445:                                              ; preds = %434
  %446 = load i32, i32* @TK_FLOAT, align 4
  %447 = load i32*, i32** %5, align 8
  store i32 %446, i32* %447, align 4
  br label %448

448:                                              ; preds = %445, %422, %413, %387
  br label %449

449:                                              ; preds = %457, %448
  %450 = load i8*, i8** %4, align 8
  %451 = load i32, i32* %6, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i8, i8* %450, i64 %452
  %454 = load i8, i8* %453, align 1
  %455 = call i64 @IdChar(i8 zeroext %454)
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %462

457:                                              ; preds = %449
  %458 = load i32, i32* @TK_ILLEGAL, align 4
  %459 = load i32*, i32** %5, align 8
  store i32 %458, i32* %459, align 4
  %460 = load i32, i32* %6, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %6, align 4
  br label %449

462:                                              ; preds = %449
  %463 = load i32, i32* %6, align 4
  store i32 %463, i32* %3, align 4
  br label %765

464:                                              ; preds = %2
  store i32 1, i32* %6, align 4
  %465 = load i8*, i8** %4, align 8
  %466 = getelementptr inbounds i8, i8* %465, i64 0
  %467 = load i8, i8* %466, align 1
  %468 = zext i8 %467 to i32
  store i32 %468, i32* %7, align 4
  br label %469

469:                                              ; preds = %483, %464
  %470 = load i32, i32* %7, align 4
  %471 = icmp ne i32 %470, 93
  br i1 %471, label %472, label %480

472:                                              ; preds = %469
  %473 = load i8*, i8** %4, align 8
  %474 = load i32, i32* %6, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i8, i8* %473, i64 %475
  %477 = load i8, i8* %476, align 1
  %478 = zext i8 %477 to i32
  store i32 %478, i32* %7, align 4
  %479 = icmp ne i32 %478, 0
  br label %480

480:                                              ; preds = %472, %469
  %481 = phi i1 [ false, %469 ], [ %479, %472 ]
  br i1 %481, label %482, label %486

482:                                              ; preds = %480
  br label %483

483:                                              ; preds = %482
  %484 = load i32, i32* %6, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %6, align 4
  br label %469

486:                                              ; preds = %480
  %487 = load i32, i32* %7, align 4
  %488 = icmp eq i32 %487, 93
  br i1 %488, label %489, label %491

489:                                              ; preds = %486
  %490 = load i32, i32* @TK_ID, align 4
  br label %493

491:                                              ; preds = %486
  %492 = load i32, i32* @TK_ILLEGAL, align 4
  br label %493

493:                                              ; preds = %491, %489
  %494 = phi i32 [ %490, %489 ], [ %492, %491 ]
  %495 = load i32*, i32** %5, align 8
  store i32 %494, i32* %495, align 4
  %496 = load i32, i32* %6, align 4
  store i32 %496, i32* %3, align 4
  br label %765

497:                                              ; preds = %2
  %498 = load i32, i32* @TK_VARIABLE, align 4
  %499 = load i32*, i32** %5, align 8
  store i32 %498, i32* %499, align 4
  store i32 1, i32* %6, align 4
  br label %500

500:                                              ; preds = %509, %497
  %501 = load i8*, i8** %4, align 8
  %502 = load i32, i32* %6, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i8, i8* %501, i64 %503
  %505 = load i8, i8* %504, align 1
  %506 = call i32 @sqlite3Isdigit(i8 zeroext %505)
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %512

508:                                              ; preds = %500
  br label %509

509:                                              ; preds = %508
  %510 = load i32, i32* %6, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %6, align 4
  br label %500

512:                                              ; preds = %500
  %513 = load i32, i32* %6, align 4
  store i32 %513, i32* %3, align 4
  br label %765

514:                                              ; preds = %2, %2
  store i32 0, i32* %9, align 4
  %515 = load i8*, i8** %4, align 8
  %516 = getelementptr inbounds i8, i8* %515, i64 0
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i32
  %519 = icmp eq i32 %518, 36
  %520 = zext i1 %519 to i32
  %521 = call i32 @testcase(i32 %520)
  %522 = load i8*, i8** %4, align 8
  %523 = getelementptr inbounds i8, i8* %522, i64 0
  %524 = load i8, i8* %523, align 1
  %525 = zext i8 %524 to i32
  %526 = icmp eq i32 %525, 64
  %527 = zext i1 %526 to i32
  %528 = call i32 @testcase(i32 %527)
  %529 = load i8*, i8** %4, align 8
  %530 = getelementptr inbounds i8, i8* %529, i64 0
  %531 = load i8, i8* %530, align 1
  %532 = zext i8 %531 to i32
  %533 = icmp eq i32 %532, 58
  %534 = zext i1 %533 to i32
  %535 = call i32 @testcase(i32 %534)
  %536 = load i8*, i8** %4, align 8
  %537 = getelementptr inbounds i8, i8* %536, i64 0
  %538 = load i8, i8* %537, align 1
  %539 = zext i8 %538 to i32
  %540 = icmp eq i32 %539, 35
  %541 = zext i1 %540 to i32
  %542 = call i32 @testcase(i32 %541)
  %543 = load i32, i32* @TK_VARIABLE, align 4
  %544 = load i32*, i32** %5, align 8
  store i32 %543, i32* %544, align 4
  store i32 1, i32* %6, align 4
  br label %545

545:                                              ; preds = %618, %514
  %546 = load i8*, i8** %4, align 8
  %547 = load i32, i32* %6, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i8, i8* %546, i64 %548
  %550 = load i8, i8* %549, align 1
  %551 = zext i8 %550 to i32
  store i32 %551, i32* %7, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %621

553:                                              ; preds = %545
  %554 = load i32, i32* %7, align 4
  %555 = trunc i32 %554 to i8
  %556 = call i64 @IdChar(i8 zeroext %555)
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %561

558:                                              ; preds = %553
  %559 = load i32, i32* %9, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %9, align 4
  br label %617

561:                                              ; preds = %553
  %562 = load i32, i32* %7, align 4
  %563 = icmp eq i32 %562, 40
  br i1 %563, label %564, label %599

564:                                              ; preds = %561
  %565 = load i32, i32* %9, align 4
  %566 = icmp sgt i32 %565, 0
  br i1 %566, label %567, label %599

567:                                              ; preds = %564
  br label %568

568:                                              ; preds = %587, %567
  %569 = load i32, i32* %6, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %6, align 4
  br label %571

571:                                              ; preds = %568
  %572 = load i8*, i8** %4, align 8
  %573 = load i32, i32* %6, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i8, i8* %572, i64 %574
  %576 = load i8, i8* %575, align 1
  %577 = zext i8 %576 to i32
  store i32 %577, i32* %7, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %587

579:                                              ; preds = %571
  %580 = load i32, i32* %7, align 4
  %581 = trunc i32 %580 to i8
  %582 = call i32 @sqlite3Isspace(i8 zeroext %581)
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %587, label %584

584:                                              ; preds = %579
  %585 = load i32, i32* %7, align 4
  %586 = icmp ne i32 %585, 41
  br label %587

587:                                              ; preds = %584, %579, %571
  %588 = phi i1 [ false, %579 ], [ false, %571 ], [ %586, %584 ]
  br i1 %588, label %568, label %589

589:                                              ; preds = %587
  %590 = load i32, i32* %7, align 4
  %591 = icmp eq i32 %590, 41
  br i1 %591, label %592, label %595

592:                                              ; preds = %589
  %593 = load i32, i32* %6, align 4
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %6, align 4
  br label %598

595:                                              ; preds = %589
  %596 = load i32, i32* @TK_ILLEGAL, align 4
  %597 = load i32*, i32** %5, align 8
  store i32 %596, i32* %597, align 4
  br label %598

598:                                              ; preds = %595, %592
  br label %621

599:                                              ; preds = %564, %561
  %600 = load i32, i32* %7, align 4
  %601 = icmp eq i32 %600, 58
  br i1 %601, label %602, label %614

602:                                              ; preds = %599
  %603 = load i8*, i8** %4, align 8
  %604 = load i32, i32* %6, align 4
  %605 = add nsw i32 %604, 1
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i8, i8* %603, i64 %606
  %608 = load i8, i8* %607, align 1
  %609 = zext i8 %608 to i32
  %610 = icmp eq i32 %609, 58
  br i1 %610, label %611, label %614

611:                                              ; preds = %602
  %612 = load i32, i32* %6, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %6, align 4
  br label %615

614:                                              ; preds = %602, %599
  br label %621

615:                                              ; preds = %611
  br label %616

616:                                              ; preds = %615
  br label %617

617:                                              ; preds = %616, %558
  br label %618

618:                                              ; preds = %617
  %619 = load i32, i32* %6, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %6, align 4
  br label %545

621:                                              ; preds = %614, %598, %545
  %622 = load i32, i32* %9, align 4
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %627

624:                                              ; preds = %621
  %625 = load i32, i32* @TK_ILLEGAL, align 4
  %626 = load i32*, i32** %5, align 8
  store i32 %625, i32* %626, align 4
  br label %627

627:                                              ; preds = %624, %621
  %628 = load i32, i32* %6, align 4
  store i32 %628, i32* %3, align 4
  br label %765

629:                                              ; preds = %2
  store i32 1, i32* %6, align 4
  br label %630

630:                                              ; preds = %642, %629
  %631 = load i32*, i32** @aiClass, align 8
  %632 = load i8*, i8** %4, align 8
  %633 = load i32, i32* %6, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds i8, i8* %632, i64 %634
  %636 = load i8, i8* %635, align 1
  %637 = zext i8 %636 to i64
  %638 = getelementptr inbounds i32, i32* %631, i64 %637
  %639 = load i32, i32* %638, align 4
  %640 = icmp sle i32 %639, 145
  br i1 %640, label %641, label %645

641:                                              ; preds = %630
  br label %642

642:                                              ; preds = %641
  %643 = load i32, i32* %6, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %6, align 4
  br label %630

645:                                              ; preds = %630
  %646 = load i8*, i8** %4, align 8
  %647 = load i32, i32* %6, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i8, i8* %646, i64 %648
  %650 = load i8, i8* %649, align 1
  %651 = call i64 @IdChar(i8 zeroext %650)
  %652 = icmp ne i64 %651, 0
  br i1 %652, label %653, label %656

653:                                              ; preds = %645
  %654 = load i32, i32* %6, align 4
  %655 = add nsw i32 %654, 1
  store i32 %655, i32* %6, align 4
  br label %749

656:                                              ; preds = %645
  %657 = load i32, i32* @TK_ID, align 4
  %658 = load i32*, i32** %5, align 8
  store i32 %657, i32* %658, align 4
  %659 = load i32, i32* %6, align 4
  store i32 %659, i32* %3, align 4
  br label %765

660:                                              ; preds = %2
  %661 = load i8*, i8** %4, align 8
  %662 = getelementptr inbounds i8, i8* %661, i64 0
  %663 = load i8, i8* %662, align 1
  %664 = zext i8 %663 to i32
  %665 = icmp eq i32 %664, 120
  %666 = zext i1 %665 to i32
  %667 = call i32 @testcase(i32 %666)
  %668 = load i8*, i8** %4, align 8
  %669 = getelementptr inbounds i8, i8* %668, i64 0
  %670 = load i8, i8* %669, align 1
  %671 = zext i8 %670 to i32
  %672 = icmp eq i32 %671, 88
  %673 = zext i1 %672 to i32
  %674 = call i32 @testcase(i32 %673)
  %675 = load i8*, i8** %4, align 8
  %676 = getelementptr inbounds i8, i8* %675, i64 1
  %677 = load i8, i8* %676, align 1
  %678 = zext i8 %677 to i32
  %679 = icmp eq i32 %678, 39
  br i1 %679, label %680, label %744

680:                                              ; preds = %660
  %681 = load i32, i32* @TK_BLOB, align 4
  %682 = load i32*, i32** %5, align 8
  store i32 %681, i32* %682, align 4
  store i32 2, i32* %6, align 4
  br label %683

683:                                              ; preds = %692, %680
  %684 = load i8*, i8** %4, align 8
  %685 = load i32, i32* %6, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i8, i8* %684, i64 %686
  %688 = load i8, i8* %687, align 1
  %689 = call i32 @sqlite3Isxdigit(i8 zeroext %688)
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %695

691:                                              ; preds = %683
  br label %692

692:                                              ; preds = %691
  %693 = load i32, i32* %6, align 4
  %694 = add nsw i32 %693, 1
  store i32 %694, i32* %6, align 4
  br label %683

695:                                              ; preds = %683
  %696 = load i8*, i8** %4, align 8
  %697 = load i32, i32* %6, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds i8, i8* %696, i64 %698
  %700 = load i8, i8* %699, align 1
  %701 = zext i8 %700 to i32
  %702 = icmp ne i32 %701, 39
  br i1 %702, label %707, label %703

703:                                              ; preds = %695
  %704 = load i32, i32* %6, align 4
  %705 = srem i32 %704, 2
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %732

707:                                              ; preds = %703, %695
  %708 = load i32, i32* @TK_ILLEGAL, align 4
  %709 = load i32*, i32** %5, align 8
  store i32 %708, i32* %709, align 4
  br label %710

710:                                              ; preds = %728, %707
  %711 = load i8*, i8** %4, align 8
  %712 = load i32, i32* %6, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i8, i8* %711, i64 %713
  %715 = load i8, i8* %714, align 1
  %716 = zext i8 %715 to i32
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %718, label %726

718:                                              ; preds = %710
  %719 = load i8*, i8** %4, align 8
  %720 = load i32, i32* %6, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds i8, i8* %719, i64 %721
  %723 = load i8, i8* %722, align 1
  %724 = zext i8 %723 to i32
  %725 = icmp ne i32 %724, 39
  br label %726

726:                                              ; preds = %718, %710
  %727 = phi i1 [ false, %710 ], [ %725, %718 ]
  br i1 %727, label %728, label %731

728:                                              ; preds = %726
  %729 = load i32, i32* %6, align 4
  %730 = add nsw i32 %729, 1
  store i32 %730, i32* %6, align 4
  br label %710

731:                                              ; preds = %726
  br label %732

732:                                              ; preds = %731, %703
  %733 = load i8*, i8** %4, align 8
  %734 = load i32, i32* %6, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i8, i8* %733, i64 %735
  %737 = load i8, i8* %736, align 1
  %738 = icmp ne i8 %737, 0
  br i1 %738, label %739, label %742

739:                                              ; preds = %732
  %740 = load i32, i32* %6, align 4
  %741 = add nsw i32 %740, 1
  store i32 %741, i32* %6, align 4
  br label %742

742:                                              ; preds = %739, %732
  %743 = load i32, i32* %6, align 4
  store i32 %743, i32* %3, align 4
  br label %765

744:                                              ; preds = %660
  br label %745

745:                                              ; preds = %2, %744
  store i32 1, i32* %6, align 4
  br label %749

746:                                              ; preds = %2
  %747 = load i32, i32* @TK_ILLEGAL, align 4
  %748 = load i32*, i32** %5, align 8
  store i32 %747, i32* %748, align 4
  store i32 1, i32* %3, align 4
  br label %765

749:                                              ; preds = %745, %653
  br label %750

750:                                              ; preds = %758, %749
  %751 = load i8*, i8** %4, align 8
  %752 = load i32, i32* %6, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds i8, i8* %751, i64 %753
  %755 = load i8, i8* %754, align 1
  %756 = call i64 @IdChar(i8 zeroext %755)
  %757 = icmp ne i64 %756, 0
  br i1 %757, label %758, label %761

758:                                              ; preds = %750
  %759 = load i32, i32* %6, align 4
  %760 = add nsw i32 %759, 1
  store i32 %760, i32* %6, align 4
  br label %750

761:                                              ; preds = %750
  %762 = load i32, i32* @TK_ID, align 4
  %763 = load i32*, i32** %5, align 8
  store i32 %762, i32* %763, align 4
  %764 = load i32, i32* %6, align 4
  store i32 %764, i32* %3, align 4
  br label %765

765:                                              ; preds = %761, %746, %742, %656, %627, %512, %493, %462, %339, %296, %286, %281, %273, %219, %216, %213, %210, %207, %198, %195, %186, %183, %177, %168, %165, %159, %153, %137, %134, %130, %91, %76, %73, %70, %67, %64, %61, %57, %29
  %766 = load i32, i32* %3, align 4
  ret i32 %766
}

declare dso_local i32 @sqlite3Isspace(i8 zeroext) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3Isdigit(i8 zeroext) #1

declare dso_local i32 @sqlite3Isxdigit(i8 zeroext) #1

declare dso_local i64 @IdChar(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
