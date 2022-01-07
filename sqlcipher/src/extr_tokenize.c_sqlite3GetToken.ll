; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_tokenize.c_sqlite3GetToken.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_tokenize.c_sqlite3GetToken.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3GetToken(i8* %0, i32* %1) #0 {
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
  switch i32 %15, label %857 [
    i32 133, label %16
    i32 143, label %68
    i32 145, label %99
    i32 136, label %102
    i32 135, label %105
    i32 139, label %108
    i32 132, label %111
    i32 134, label %114
    i32 141, label %169
    i32 149, label %172
    i32 144, label %182
    i32 148, label %206
    i32 154, label %224
    i32 140, label %236
    i32 153, label %248
    i32 155, label %251
    i32 131, label %254
    i32 138, label %257
    i32 150, label %325
    i32 152, label %335
    i32 137, label %569
    i32 129, label %602
    i32 151, label %619
    i32 130, label %619
    i32 146, label %734
    i32 128, label %768
    i32 147, label %853
    i32 142, label %854
  ]

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  %22 = zext i1 %21 to i32
  %23 = call i32 @testcase(i32 %22)
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 9
  %29 = zext i1 %28 to i32
  %30 = call i32 @testcase(i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 10
  %36 = zext i1 %35 to i32
  %37 = call i32 @testcase(i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 12
  %43 = zext i1 %42 to i32
  %44 = call i32 @testcase(i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 13
  %50 = zext i1 %49 to i32
  %51 = call i32 @testcase(i32 %50)
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %61, %16
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @sqlite3Isspace(i8 zeroext %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %52

64:                                               ; preds = %52
  %65 = load i32, i32* @TK_SPACE, align 4
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %876

68:                                               ; preds = %2
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 45
  br i1 %73, label %74, label %96

74:                                               ; preds = %68
  store i32 2, i32* %6, align 4
  br label %75

75:                                               ; preds = %89, %74
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 10
  br label %86

86:                                               ; preds = %83, %75
  %87 = phi i1 [ false, %75 ], [ %85, %83 ]
  br i1 %87, label %88, label %92

88:                                               ; preds = %86
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %75

92:                                               ; preds = %86
  %93 = load i32, i32* @TK_SPACE, align 4
  %94 = load i32*, i32** %5, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %876

96:                                               ; preds = %68
  %97 = load i32, i32* @TK_MINUS, align 4
  %98 = load i32*, i32** %5, align 8
  store i32 %97, i32* %98, align 4
  store i32 1, i32* %3, align 4
  br label %876

99:                                               ; preds = %2
  %100 = load i32, i32* @TK_LP, align 4
  %101 = load i32*, i32** %5, align 8
  store i32 %100, i32* %101, align 4
  store i32 1, i32* %3, align 4
  br label %876

102:                                              ; preds = %2
  %103 = load i32, i32* @TK_RP, align 4
  %104 = load i32*, i32** %5, align 8
  store i32 %103, i32* %104, align 4
  store i32 1, i32* %3, align 4
  br label %876

105:                                              ; preds = %2
  %106 = load i32, i32* @TK_SEMI, align 4
  %107 = load i32*, i32** %5, align 8
  store i32 %106, i32* %107, align 4
  store i32 1, i32* %3, align 4
  br label %876

108:                                              ; preds = %2
  %109 = load i32, i32* @TK_PLUS, align 4
  %110 = load i32*, i32** %5, align 8
  store i32 %109, i32* %110, align 4
  store i32 1, i32* %3, align 4
  br label %876

111:                                              ; preds = %2
  %112 = load i32, i32* @TK_STAR, align 4
  %113 = load i32*, i32** %5, align 8
  store i32 %112, i32* %113, align 4
  store i32 1, i32* %3, align 4
  br label %876

114:                                              ; preds = %2
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ne i32 %118, 42
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120, %114
  %127 = load i32, i32* @TK_SLASH, align 4
  %128 = load i32*, i32** %5, align 8
  store i32 %127, i32* %128, align 4
  store i32 1, i32* %3, align 4
  br label %876

129:                                              ; preds = %120
  store i32 3, i32* %6, align 4
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %156, %129
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 42
  br i1 %136, label %145, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** %4, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp ne i32 %143, 47
  br i1 %144, label %145, label %153

145:                                              ; preds = %137, %134
  %146 = load i8*, i8** %4, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  store i32 %151, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br label %153

153:                                              ; preds = %145, %137
  %154 = phi i1 [ false, %137 ], [ %152, %145 ]
  br i1 %154, label %155, label %159

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %134

159:                                              ; preds = %153
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* @TK_SPACE, align 4
  %167 = load i32*, i32** %5, align 8
  store i32 %166, i32* %167, align 4
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %876

169:                                              ; preds = %2
  %170 = load i32, i32* @TK_REM, align 4
  %171 = load i32*, i32** %5, align 8
  store i32 %170, i32* %171, align 4
  store i32 1, i32* %3, align 4
  br label %876

172:                                              ; preds = %2
  %173 = load i32, i32* @TK_EQ, align 4
  %174 = load i32*, i32** %5, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp eq i32 %178, 61
  %180 = zext i1 %179 to i32
  %181 = add nsw i32 1, %180
  store i32 %181, i32* %3, align 4
  br label %876

182:                                              ; preds = %2
  %183 = load i8*, i8** %4, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 1
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  store i32 %186, i32* %7, align 4
  %187 = icmp eq i32 %186, 61
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i32, i32* @TK_LE, align 4
  %190 = load i32*, i32** %5, align 8
  store i32 %189, i32* %190, align 4
  store i32 2, i32* %3, align 4
  br label %876

191:                                              ; preds = %182
  %192 = load i32, i32* %7, align 4
  %193 = icmp eq i32 %192, 62
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* @TK_NE, align 4
  %196 = load i32*, i32** %5, align 8
  store i32 %195, i32* %196, align 4
  store i32 2, i32* %3, align 4
  br label %876

197:                                              ; preds = %191
  %198 = load i32, i32* %7, align 4
  %199 = icmp eq i32 %198, 60
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* @TK_LSHIFT, align 4
  %202 = load i32*, i32** %5, align 8
  store i32 %201, i32* %202, align 4
  store i32 2, i32* %3, align 4
  br label %876

203:                                              ; preds = %197
  %204 = load i32, i32* @TK_LT, align 4
  %205 = load i32*, i32** %5, align 8
  store i32 %204, i32* %205, align 4
  store i32 1, i32* %3, align 4
  br label %876

206:                                              ; preds = %2
  %207 = load i8*, i8** %4, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  store i32 %210, i32* %7, align 4
  %211 = icmp eq i32 %210, 61
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load i32, i32* @TK_GE, align 4
  %214 = load i32*, i32** %5, align 8
  store i32 %213, i32* %214, align 4
  store i32 2, i32* %3, align 4
  br label %876

215:                                              ; preds = %206
  %216 = load i32, i32* %7, align 4
  %217 = icmp eq i32 %216, 62
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32, i32* @TK_RSHIFT, align 4
  %220 = load i32*, i32** %5, align 8
  store i32 %219, i32* %220, align 4
  store i32 2, i32* %3, align 4
  br label %876

221:                                              ; preds = %215
  %222 = load i32, i32* @TK_GT, align 4
  %223 = load i32*, i32** %5, align 8
  store i32 %222, i32* %223, align 4
  store i32 1, i32* %3, align 4
  br label %876

224:                                              ; preds = %2
  %225 = load i8*, i8** %4, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 1
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = icmp ne i32 %228, 61
  br i1 %229, label %230, label %233

230:                                              ; preds = %224
  %231 = load i32, i32* @TK_ILLEGAL, align 4
  %232 = load i32*, i32** %5, align 8
  store i32 %231, i32* %232, align 4
  store i32 1, i32* %3, align 4
  br label %876

233:                                              ; preds = %224
  %234 = load i32, i32* @TK_NE, align 4
  %235 = load i32*, i32** %5, align 8
  store i32 %234, i32* %235, align 4
  store i32 2, i32* %3, align 4
  br label %876

236:                                              ; preds = %2
  %237 = load i8*, i8** %4, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 1
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = icmp ne i32 %240, 124
  br i1 %241, label %242, label %245

242:                                              ; preds = %236
  %243 = load i32, i32* @TK_BITOR, align 4
  %244 = load i32*, i32** %5, align 8
  store i32 %243, i32* %244, align 4
  store i32 1, i32* %3, align 4
  br label %876

245:                                              ; preds = %236
  %246 = load i32, i32* @TK_CONCAT, align 4
  %247 = load i32*, i32** %5, align 8
  store i32 %246, i32* %247, align 4
  store i32 2, i32* %3, align 4
  br label %876

248:                                              ; preds = %2
  %249 = load i32, i32* @TK_COMMA, align 4
  %250 = load i32*, i32** %5, align 8
  store i32 %249, i32* %250, align 4
  store i32 1, i32* %3, align 4
  br label %876

251:                                              ; preds = %2
  %252 = load i32, i32* @TK_BITAND, align 4
  %253 = load i32*, i32** %5, align 8
  store i32 %252, i32* %253, align 4
  store i32 1, i32* %3, align 4
  br label %876

254:                                              ; preds = %2
  %255 = load i32, i32* @TK_BITNOT, align 4
  %256 = load i32*, i32** %5, align 8
  store i32 %255, i32* %256, align 4
  store i32 1, i32* %3, align 4
  br label %876

257:                                              ; preds = %2
  %258 = load i8*, i8** %4, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 0
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  store i32 %261, i32* %8, align 4
  %262 = load i32, i32* %8, align 4
  %263 = icmp eq i32 %262, 96
  %264 = zext i1 %263 to i32
  %265 = call i32 @testcase(i32 %264)
  %266 = load i32, i32* %8, align 4
  %267 = icmp eq i32 %266, 39
  %268 = zext i1 %267 to i32
  %269 = call i32 @testcase(i32 %268)
  %270 = load i32, i32* %8, align 4
  %271 = icmp eq i32 %270, 34
  %272 = zext i1 %271 to i32
  %273 = call i32 @testcase(i32 %272)
  store i32 1, i32* %6, align 4
  br label %274

274:                                              ; preds = %302, %257
  %275 = load i8*, i8** %4, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  store i32 %280, i32* %7, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %305

282:                                              ; preds = %274
  %283 = load i32, i32* %7, align 4
  %284 = load i32, i32* %8, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %301

286:                                              ; preds = %282
  %287 = load i8*, i8** %4, align 8
  %288 = load i32, i32* %6, align 4
  %289 = add nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %287, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = load i32, i32* %8, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %286
  %297 = load i32, i32* %6, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %6, align 4
  br label %300

299:                                              ; preds = %286
  br label %305

300:                                              ; preds = %296
  br label %301

301:                                              ; preds = %300, %282
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %6, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %6, align 4
  br label %274

305:                                              ; preds = %299, %274
  %306 = load i32, i32* %7, align 4
  %307 = icmp eq i32 %306, 39
  br i1 %307, label %308, label %313

308:                                              ; preds = %305
  %309 = load i32, i32* @TK_STRING, align 4
  %310 = load i32*, i32** %5, align 8
  store i32 %309, i32* %310, align 4
  %311 = load i32, i32* %6, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %3, align 4
  br label %876

313:                                              ; preds = %305
  %314 = load i32, i32* %7, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %313
  %317 = load i32, i32* @TK_ID, align 4
  %318 = load i32*, i32** %5, align 8
  store i32 %317, i32* %318, align 4
  %319 = load i32, i32* %6, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %3, align 4
  br label %876

321:                                              ; preds = %313
  %322 = load i32, i32* @TK_ILLEGAL, align 4
  %323 = load i32*, i32** %5, align 8
  store i32 %322, i32* %323, align 4
  %324 = load i32, i32* %6, align 4
  store i32 %324, i32* %3, align 4
  br label %876

325:                                              ; preds = %2
  %326 = load i8*, i8** %4, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 1
  %328 = load i8, i8* %327, align 1
  %329 = call i32 @sqlite3Isdigit(i8 zeroext %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %334, label %331

331:                                              ; preds = %325
  %332 = load i32, i32* @TK_DOT, align 4
  %333 = load i32*, i32** %5, align 8
  store i32 %332, i32* %333, align 4
  store i32 1, i32* %3, align 4
  br label %876

334:                                              ; preds = %325
  br label %335

335:                                              ; preds = %2, %334
  %336 = load i8*, i8** %4, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 0
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = icmp eq i32 %339, 48
  %341 = zext i1 %340 to i32
  %342 = call i32 @testcase(i32 %341)
  %343 = load i8*, i8** %4, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 0
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i32
  %347 = icmp eq i32 %346, 49
  %348 = zext i1 %347 to i32
  %349 = call i32 @testcase(i32 %348)
  %350 = load i8*, i8** %4, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 0
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  %354 = icmp eq i32 %353, 50
  %355 = zext i1 %354 to i32
  %356 = call i32 @testcase(i32 %355)
  %357 = load i8*, i8** %4, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 0
  %359 = load i8, i8* %358, align 1
  %360 = zext i8 %359 to i32
  %361 = icmp eq i32 %360, 51
  %362 = zext i1 %361 to i32
  %363 = call i32 @testcase(i32 %362)
  %364 = load i8*, i8** %4, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 0
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  %368 = icmp eq i32 %367, 52
  %369 = zext i1 %368 to i32
  %370 = call i32 @testcase(i32 %369)
  %371 = load i8*, i8** %4, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 0
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  %375 = icmp eq i32 %374, 53
  %376 = zext i1 %375 to i32
  %377 = call i32 @testcase(i32 %376)
  %378 = load i8*, i8** %4, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 0
  %380 = load i8, i8* %379, align 1
  %381 = zext i8 %380 to i32
  %382 = icmp eq i32 %381, 54
  %383 = zext i1 %382 to i32
  %384 = call i32 @testcase(i32 %383)
  %385 = load i8*, i8** %4, align 8
  %386 = getelementptr inbounds i8, i8* %385, i64 0
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  %389 = icmp eq i32 %388, 55
  %390 = zext i1 %389 to i32
  %391 = call i32 @testcase(i32 %390)
  %392 = load i8*, i8** %4, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 0
  %394 = load i8, i8* %393, align 1
  %395 = zext i8 %394 to i32
  %396 = icmp eq i32 %395, 56
  %397 = zext i1 %396 to i32
  %398 = call i32 @testcase(i32 %397)
  %399 = load i8*, i8** %4, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 0
  %401 = load i8, i8* %400, align 1
  %402 = zext i8 %401 to i32
  %403 = icmp eq i32 %402, 57
  %404 = zext i1 %403 to i32
  %405 = call i32 @testcase(i32 %404)
  %406 = load i32, i32* @TK_INTEGER, align 4
  %407 = load i32*, i32** %5, align 8
  store i32 %406, i32* %407, align 4
  %408 = load i8*, i8** %4, align 8
  %409 = getelementptr inbounds i8, i8* %408, i64 0
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i32
  %412 = icmp eq i32 %411, 48
  br i1 %412, label %413, label %446

413:                                              ; preds = %335
  %414 = load i8*, i8** %4, align 8
  %415 = getelementptr inbounds i8, i8* %414, i64 1
  %416 = load i8, i8* %415, align 1
  %417 = zext i8 %416 to i32
  %418 = icmp eq i32 %417, 120
  br i1 %418, label %425, label %419

419:                                              ; preds = %413
  %420 = load i8*, i8** %4, align 8
  %421 = getelementptr inbounds i8, i8* %420, i64 1
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i32
  %424 = icmp eq i32 %423, 88
  br i1 %424, label %425, label %446

425:                                              ; preds = %419, %413
  %426 = load i8*, i8** %4, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 2
  %428 = load i8, i8* %427, align 1
  %429 = call i32 @sqlite3Isxdigit(i8 zeroext %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %446

431:                                              ; preds = %425
  store i32 3, i32* %6, align 4
  br label %432

432:                                              ; preds = %441, %431
  %433 = load i8*, i8** %4, align 8
  %434 = load i32, i32* %6, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, i8* %433, i64 %435
  %437 = load i8, i8* %436, align 1
  %438 = call i32 @sqlite3Isxdigit(i8 zeroext %437)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %432
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %6, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %6, align 4
  br label %432

444:                                              ; preds = %432
  %445 = load i32, i32* %6, align 4
  store i32 %445, i32* %3, align 4
  br label %876

446:                                              ; preds = %425, %419, %335
  store i32 0, i32* %6, align 4
  br label %447

447:                                              ; preds = %456, %446
  %448 = load i8*, i8** %4, align 8
  %449 = load i32, i32* %6, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8, i8* %448, i64 %450
  %452 = load i8, i8* %451, align 1
  %453 = call i32 @sqlite3Isdigit(i8 zeroext %452)
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %447
  br label %456

456:                                              ; preds = %455
  %457 = load i32, i32* %6, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %6, align 4
  br label %447

459:                                              ; preds = %447
  %460 = load i8*, i8** %4, align 8
  %461 = load i32, i32* %6, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i8, i8* %460, i64 %462
  %464 = load i8, i8* %463, align 1
  %465 = zext i8 %464 to i32
  %466 = icmp eq i32 %465, 46
  br i1 %466, label %467, label %484

467:                                              ; preds = %459
  %468 = load i32, i32* %6, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %6, align 4
  br label %470

470:                                              ; preds = %478, %467
  %471 = load i8*, i8** %4, align 8
  %472 = load i32, i32* %6, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i8, i8* %471, i64 %473
  %475 = load i8, i8* %474, align 1
  %476 = call i32 @sqlite3Isdigit(i8 zeroext %475)
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %470
  %479 = load i32, i32* %6, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %6, align 4
  br label %470

481:                                              ; preds = %470
  %482 = load i32, i32* @TK_FLOAT, align 4
  %483 = load i32*, i32** %5, align 8
  store i32 %482, i32* %483, align 4
  br label %484

484:                                              ; preds = %481, %459
  %485 = load i8*, i8** %4, align 8
  %486 = load i32, i32* %6, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i8, i8* %485, i64 %487
  %489 = load i8, i8* %488, align 1
  %490 = zext i8 %489 to i32
  %491 = icmp eq i32 %490, 101
  br i1 %491, label %500, label %492

492:                                              ; preds = %484
  %493 = load i8*, i8** %4, align 8
  %494 = load i32, i32* %6, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8, i8* %493, i64 %495
  %497 = load i8, i8* %496, align 1
  %498 = zext i8 %497 to i32
  %499 = icmp eq i32 %498, 69
  br i1 %499, label %500, label %553

500:                                              ; preds = %492, %484
  %501 = load i8*, i8** %4, align 8
  %502 = load i32, i32* %6, align 4
  %503 = add nsw i32 %502, 1
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i8, i8* %501, i64 %504
  %506 = load i8, i8* %505, align 1
  %507 = call i32 @sqlite3Isdigit(i8 zeroext %506)
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %536, label %509

509:                                              ; preds = %500
  %510 = load i8*, i8** %4, align 8
  %511 = load i32, i32* %6, align 4
  %512 = add nsw i32 %511, 1
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i8, i8* %510, i64 %513
  %515 = load i8, i8* %514, align 1
  %516 = zext i8 %515 to i32
  %517 = icmp eq i32 %516, 43
  br i1 %517, label %527, label %518

518:                                              ; preds = %509
  %519 = load i8*, i8** %4, align 8
  %520 = load i32, i32* %6, align 4
  %521 = add nsw i32 %520, 1
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i8, i8* %519, i64 %522
  %524 = load i8, i8* %523, align 1
  %525 = zext i8 %524 to i32
  %526 = icmp eq i32 %525, 45
  br i1 %526, label %527, label %553

527:                                              ; preds = %518, %509
  %528 = load i8*, i8** %4, align 8
  %529 = load i32, i32* %6, align 4
  %530 = add nsw i32 %529, 2
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i8, i8* %528, i64 %531
  %533 = load i8, i8* %532, align 1
  %534 = call i32 @sqlite3Isdigit(i8 zeroext %533)
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %553

536:                                              ; preds = %527, %500
  %537 = load i32, i32* %6, align 4
  %538 = add nsw i32 %537, 2
  store i32 %538, i32* %6, align 4
  br label %539

539:                                              ; preds = %547, %536
  %540 = load i8*, i8** %4, align 8
  %541 = load i32, i32* %6, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i8, i8* %540, i64 %542
  %544 = load i8, i8* %543, align 1
  %545 = call i32 @sqlite3Isdigit(i8 zeroext %544)
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %550

547:                                              ; preds = %539
  %548 = load i32, i32* %6, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %6, align 4
  br label %539

550:                                              ; preds = %539
  %551 = load i32, i32* @TK_FLOAT, align 4
  %552 = load i32*, i32** %5, align 8
  store i32 %551, i32* %552, align 4
  br label %553

553:                                              ; preds = %550, %527, %518, %492
  br label %554

554:                                              ; preds = %562, %553
  %555 = load i8*, i8** %4, align 8
  %556 = load i32, i32* %6, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i8, i8* %555, i64 %557
  %559 = load i8, i8* %558, align 1
  %560 = call i64 @IdChar(i8 zeroext %559)
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %567

562:                                              ; preds = %554
  %563 = load i32, i32* @TK_ILLEGAL, align 4
  %564 = load i32*, i32** %5, align 8
  store i32 %563, i32* %564, align 4
  %565 = load i32, i32* %6, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %6, align 4
  br label %554

567:                                              ; preds = %554
  %568 = load i32, i32* %6, align 4
  store i32 %568, i32* %3, align 4
  br label %876

569:                                              ; preds = %2
  store i32 1, i32* %6, align 4
  %570 = load i8*, i8** %4, align 8
  %571 = getelementptr inbounds i8, i8* %570, i64 0
  %572 = load i8, i8* %571, align 1
  %573 = zext i8 %572 to i32
  store i32 %573, i32* %7, align 4
  br label %574

574:                                              ; preds = %588, %569
  %575 = load i32, i32* %7, align 4
  %576 = icmp ne i32 %575, 93
  br i1 %576, label %577, label %585

577:                                              ; preds = %574
  %578 = load i8*, i8** %4, align 8
  %579 = load i32, i32* %6, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i8, i8* %578, i64 %580
  %582 = load i8, i8* %581, align 1
  %583 = zext i8 %582 to i32
  store i32 %583, i32* %7, align 4
  %584 = icmp ne i32 %583, 0
  br label %585

585:                                              ; preds = %577, %574
  %586 = phi i1 [ false, %574 ], [ %584, %577 ]
  br i1 %586, label %587, label %591

587:                                              ; preds = %585
  br label %588

588:                                              ; preds = %587
  %589 = load i32, i32* %6, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %6, align 4
  br label %574

591:                                              ; preds = %585
  %592 = load i32, i32* %7, align 4
  %593 = icmp eq i32 %592, 93
  br i1 %593, label %594, label %596

594:                                              ; preds = %591
  %595 = load i32, i32* @TK_ID, align 4
  br label %598

596:                                              ; preds = %591
  %597 = load i32, i32* @TK_ILLEGAL, align 4
  br label %598

598:                                              ; preds = %596, %594
  %599 = phi i32 [ %595, %594 ], [ %597, %596 ]
  %600 = load i32*, i32** %5, align 8
  store i32 %599, i32* %600, align 4
  %601 = load i32, i32* %6, align 4
  store i32 %601, i32* %3, align 4
  br label %876

602:                                              ; preds = %2
  %603 = load i32, i32* @TK_VARIABLE, align 4
  %604 = load i32*, i32** %5, align 8
  store i32 %603, i32* %604, align 4
  store i32 1, i32* %6, align 4
  br label %605

605:                                              ; preds = %614, %602
  %606 = load i8*, i8** %4, align 8
  %607 = load i32, i32* %6, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i8, i8* %606, i64 %608
  %610 = load i8, i8* %609, align 1
  %611 = call i32 @sqlite3Isdigit(i8 zeroext %610)
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %617

613:                                              ; preds = %605
  br label %614

614:                                              ; preds = %613
  %615 = load i32, i32* %6, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %6, align 4
  br label %605

617:                                              ; preds = %605
  %618 = load i32, i32* %6, align 4
  store i32 %618, i32* %3, align 4
  br label %876

619:                                              ; preds = %2, %2
  store i32 0, i32* %9, align 4
  %620 = load i8*, i8** %4, align 8
  %621 = getelementptr inbounds i8, i8* %620, i64 0
  %622 = load i8, i8* %621, align 1
  %623 = zext i8 %622 to i32
  %624 = icmp eq i32 %623, 36
  %625 = zext i1 %624 to i32
  %626 = call i32 @testcase(i32 %625)
  %627 = load i8*, i8** %4, align 8
  %628 = getelementptr inbounds i8, i8* %627, i64 0
  %629 = load i8, i8* %628, align 1
  %630 = zext i8 %629 to i32
  %631 = icmp eq i32 %630, 64
  %632 = zext i1 %631 to i32
  %633 = call i32 @testcase(i32 %632)
  %634 = load i8*, i8** %4, align 8
  %635 = getelementptr inbounds i8, i8* %634, i64 0
  %636 = load i8, i8* %635, align 1
  %637 = zext i8 %636 to i32
  %638 = icmp eq i32 %637, 58
  %639 = zext i1 %638 to i32
  %640 = call i32 @testcase(i32 %639)
  %641 = load i8*, i8** %4, align 8
  %642 = getelementptr inbounds i8, i8* %641, i64 0
  %643 = load i8, i8* %642, align 1
  %644 = zext i8 %643 to i32
  %645 = icmp eq i32 %644, 35
  %646 = zext i1 %645 to i32
  %647 = call i32 @testcase(i32 %646)
  %648 = load i32, i32* @TK_VARIABLE, align 4
  %649 = load i32*, i32** %5, align 8
  store i32 %648, i32* %649, align 4
  store i32 1, i32* %6, align 4
  br label %650

650:                                              ; preds = %723, %619
  %651 = load i8*, i8** %4, align 8
  %652 = load i32, i32* %6, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i8, i8* %651, i64 %653
  %655 = load i8, i8* %654, align 1
  %656 = zext i8 %655 to i32
  store i32 %656, i32* %7, align 4
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %726

658:                                              ; preds = %650
  %659 = load i32, i32* %7, align 4
  %660 = trunc i32 %659 to i8
  %661 = call i64 @IdChar(i8 zeroext %660)
  %662 = icmp ne i64 %661, 0
  br i1 %662, label %663, label %666

663:                                              ; preds = %658
  %664 = load i32, i32* %9, align 4
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* %9, align 4
  br label %722

666:                                              ; preds = %658
  %667 = load i32, i32* %7, align 4
  %668 = icmp eq i32 %667, 40
  br i1 %668, label %669, label %704

669:                                              ; preds = %666
  %670 = load i32, i32* %9, align 4
  %671 = icmp sgt i32 %670, 0
  br i1 %671, label %672, label %704

672:                                              ; preds = %669
  br label %673

673:                                              ; preds = %692, %672
  %674 = load i32, i32* %6, align 4
  %675 = add nsw i32 %674, 1
  store i32 %675, i32* %6, align 4
  br label %676

676:                                              ; preds = %673
  %677 = load i8*, i8** %4, align 8
  %678 = load i32, i32* %6, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds i8, i8* %677, i64 %679
  %681 = load i8, i8* %680, align 1
  %682 = zext i8 %681 to i32
  store i32 %682, i32* %7, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %692

684:                                              ; preds = %676
  %685 = load i32, i32* %7, align 4
  %686 = trunc i32 %685 to i8
  %687 = call i32 @sqlite3Isspace(i8 zeroext %686)
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %692, label %689

689:                                              ; preds = %684
  %690 = load i32, i32* %7, align 4
  %691 = icmp ne i32 %690, 41
  br label %692

692:                                              ; preds = %689, %684, %676
  %693 = phi i1 [ false, %684 ], [ false, %676 ], [ %691, %689 ]
  br i1 %693, label %673, label %694

694:                                              ; preds = %692
  %695 = load i32, i32* %7, align 4
  %696 = icmp eq i32 %695, 41
  br i1 %696, label %697, label %700

697:                                              ; preds = %694
  %698 = load i32, i32* %6, align 4
  %699 = add nsw i32 %698, 1
  store i32 %699, i32* %6, align 4
  br label %703

700:                                              ; preds = %694
  %701 = load i32, i32* @TK_ILLEGAL, align 4
  %702 = load i32*, i32** %5, align 8
  store i32 %701, i32* %702, align 4
  br label %703

703:                                              ; preds = %700, %697
  br label %726

704:                                              ; preds = %669, %666
  %705 = load i32, i32* %7, align 4
  %706 = icmp eq i32 %705, 58
  br i1 %706, label %707, label %719

707:                                              ; preds = %704
  %708 = load i8*, i8** %4, align 8
  %709 = load i32, i32* %6, align 4
  %710 = add nsw i32 %709, 1
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i8, i8* %708, i64 %711
  %713 = load i8, i8* %712, align 1
  %714 = zext i8 %713 to i32
  %715 = icmp eq i32 %714, 58
  br i1 %715, label %716, label %719

716:                                              ; preds = %707
  %717 = load i32, i32* %6, align 4
  %718 = add nsw i32 %717, 1
  store i32 %718, i32* %6, align 4
  br label %720

719:                                              ; preds = %707, %704
  br label %726

720:                                              ; preds = %716
  br label %721

721:                                              ; preds = %720
  br label %722

722:                                              ; preds = %721, %663
  br label %723

723:                                              ; preds = %722
  %724 = load i32, i32* %6, align 4
  %725 = add nsw i32 %724, 1
  store i32 %725, i32* %6, align 4
  br label %650

726:                                              ; preds = %719, %703, %650
  %727 = load i32, i32* %9, align 4
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %729, label %732

729:                                              ; preds = %726
  %730 = load i32, i32* @TK_ILLEGAL, align 4
  %731 = load i32*, i32** %5, align 8
  store i32 %730, i32* %731, align 4
  br label %732

732:                                              ; preds = %729, %726
  %733 = load i32, i32* %6, align 4
  store i32 %733, i32* %3, align 4
  br label %876

734:                                              ; preds = %2
  store i32 1, i32* %6, align 4
  br label %735

735:                                              ; preds = %747, %734
  %736 = load i32*, i32** @aiClass, align 8
  %737 = load i8*, i8** %4, align 8
  %738 = load i32, i32* %6, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i8, i8* %737, i64 %739
  %741 = load i8, i8* %740, align 1
  %742 = zext i8 %741 to i64
  %743 = getelementptr inbounds i32, i32* %736, i64 %742
  %744 = load i32, i32* %743, align 4
  %745 = icmp sle i32 %744, 146
  br i1 %745, label %746, label %750

746:                                              ; preds = %735
  br label %747

747:                                              ; preds = %746
  %748 = load i32, i32* %6, align 4
  %749 = add nsw i32 %748, 1
  store i32 %749, i32* %6, align 4
  br label %735

750:                                              ; preds = %735
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
  br label %860

761:                                              ; preds = %750
  %762 = load i32, i32* @TK_ID, align 4
  %763 = load i32*, i32** %5, align 8
  store i32 %762, i32* %763, align 4
  %764 = load i8*, i8** %4, align 8
  %765 = load i32, i32* %6, align 4
  %766 = load i32*, i32** %5, align 8
  %767 = call i32 @keywordCode(i8* %764, i32 %765, i32* %766)
  store i32 %767, i32* %3, align 4
  br label %876

768:                                              ; preds = %2
  %769 = load i8*, i8** %4, align 8
  %770 = getelementptr inbounds i8, i8* %769, i64 0
  %771 = load i8, i8* %770, align 1
  %772 = zext i8 %771 to i32
  %773 = icmp eq i32 %772, 120
  %774 = zext i1 %773 to i32
  %775 = call i32 @testcase(i32 %774)
  %776 = load i8*, i8** %4, align 8
  %777 = getelementptr inbounds i8, i8* %776, i64 0
  %778 = load i8, i8* %777, align 1
  %779 = zext i8 %778 to i32
  %780 = icmp eq i32 %779, 88
  %781 = zext i1 %780 to i32
  %782 = call i32 @testcase(i32 %781)
  %783 = load i8*, i8** %4, align 8
  %784 = getelementptr inbounds i8, i8* %783, i64 1
  %785 = load i8, i8* %784, align 1
  %786 = zext i8 %785 to i32
  %787 = icmp eq i32 %786, 39
  br i1 %787, label %788, label %852

788:                                              ; preds = %768
  %789 = load i32, i32* @TK_BLOB, align 4
  %790 = load i32*, i32** %5, align 8
  store i32 %789, i32* %790, align 4
  store i32 2, i32* %6, align 4
  br label %791

791:                                              ; preds = %800, %788
  %792 = load i8*, i8** %4, align 8
  %793 = load i32, i32* %6, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds i8, i8* %792, i64 %794
  %796 = load i8, i8* %795, align 1
  %797 = call i32 @sqlite3Isxdigit(i8 zeroext %796)
  %798 = icmp ne i32 %797, 0
  br i1 %798, label %799, label %803

799:                                              ; preds = %791
  br label %800

800:                                              ; preds = %799
  %801 = load i32, i32* %6, align 4
  %802 = add nsw i32 %801, 1
  store i32 %802, i32* %6, align 4
  br label %791

803:                                              ; preds = %791
  %804 = load i8*, i8** %4, align 8
  %805 = load i32, i32* %6, align 4
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds i8, i8* %804, i64 %806
  %808 = load i8, i8* %807, align 1
  %809 = zext i8 %808 to i32
  %810 = icmp ne i32 %809, 39
  br i1 %810, label %815, label %811

811:                                              ; preds = %803
  %812 = load i32, i32* %6, align 4
  %813 = srem i32 %812, 2
  %814 = icmp ne i32 %813, 0
  br i1 %814, label %815, label %840

815:                                              ; preds = %811, %803
  %816 = load i32, i32* @TK_ILLEGAL, align 4
  %817 = load i32*, i32** %5, align 8
  store i32 %816, i32* %817, align 4
  br label %818

818:                                              ; preds = %836, %815
  %819 = load i8*, i8** %4, align 8
  %820 = load i32, i32* %6, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds i8, i8* %819, i64 %821
  %823 = load i8, i8* %822, align 1
  %824 = zext i8 %823 to i32
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %826, label %834

826:                                              ; preds = %818
  %827 = load i8*, i8** %4, align 8
  %828 = load i32, i32* %6, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds i8, i8* %827, i64 %829
  %831 = load i8, i8* %830, align 1
  %832 = zext i8 %831 to i32
  %833 = icmp ne i32 %832, 39
  br label %834

834:                                              ; preds = %826, %818
  %835 = phi i1 [ false, %818 ], [ %833, %826 ]
  br i1 %835, label %836, label %839

836:                                              ; preds = %834
  %837 = load i32, i32* %6, align 4
  %838 = add nsw i32 %837, 1
  store i32 %838, i32* %6, align 4
  br label %818

839:                                              ; preds = %834
  br label %840

840:                                              ; preds = %839, %811
  %841 = load i8*, i8** %4, align 8
  %842 = load i32, i32* %6, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds i8, i8* %841, i64 %843
  %845 = load i8, i8* %844, align 1
  %846 = icmp ne i8 %845, 0
  br i1 %846, label %847, label %850

847:                                              ; preds = %840
  %848 = load i32, i32* %6, align 4
  %849 = add nsw i32 %848, 1
  store i32 %849, i32* %6, align 4
  br label %850

850:                                              ; preds = %847, %840
  %851 = load i32, i32* %6, align 4
  store i32 %851, i32* %3, align 4
  br label %876

852:                                              ; preds = %768
  br label %853

853:                                              ; preds = %2, %852
  store i32 1, i32* %6, align 4
  br label %860

854:                                              ; preds = %2
  %855 = load i32, i32* @TK_ILLEGAL, align 4
  %856 = load i32*, i32** %5, align 8
  store i32 %855, i32* %856, align 4
  store i32 0, i32* %3, align 4
  br label %876

857:                                              ; preds = %2
  %858 = load i32, i32* @TK_ILLEGAL, align 4
  %859 = load i32*, i32** %5, align 8
  store i32 %858, i32* %859, align 4
  store i32 1, i32* %3, align 4
  br label %876

860:                                              ; preds = %853, %758
  br label %861

861:                                              ; preds = %869, %860
  %862 = load i8*, i8** %4, align 8
  %863 = load i32, i32* %6, align 4
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds i8, i8* %862, i64 %864
  %866 = load i8, i8* %865, align 1
  %867 = call i64 @IdChar(i8 zeroext %866)
  %868 = icmp ne i64 %867, 0
  br i1 %868, label %869, label %872

869:                                              ; preds = %861
  %870 = load i32, i32* %6, align 4
  %871 = add nsw i32 %870, 1
  store i32 %871, i32* %6, align 4
  br label %861

872:                                              ; preds = %861
  %873 = load i32, i32* @TK_ID, align 4
  %874 = load i32*, i32** %5, align 8
  store i32 %873, i32* %874, align 4
  %875 = load i32, i32* %6, align 4
  store i32 %875, i32* %3, align 4
  br label %876

876:                                              ; preds = %872, %857, %854, %850, %761, %732, %617, %598, %567, %444, %331, %321, %316, %308, %254, %251, %248, %245, %242, %233, %230, %221, %218, %212, %203, %200, %194, %188, %172, %169, %165, %126, %111, %108, %105, %102, %99, %96, %92, %64
  %877 = load i32, i32* %3, align 4
  ret i32 %877
}

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3Isspace(i8 zeroext) #1

declare dso_local i32 @sqlite3Isdigit(i8 zeroext) #1

declare dso_local i32 @sqlite3Isxdigit(i8 zeroext) #1

declare dso_local i64 @IdChar(i8 zeroext) #1

declare dso_local i32 @keywordCode(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
