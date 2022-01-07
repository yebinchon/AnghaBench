; ModuleID = '/home/carl/AnghaBench/zstd/zlibWrapper/examples/extr_zwrapbench.c_main.c'
source_filename = "/home/carl/AnghaBench/zstd/zlibWrapper/examples/extr_zwrapbench.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTDCLI_CLEVEL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"zstd: %s \0A\00", align 1
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@displayOut = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@stdout = common dso_local global i32 0, align 4
@WELCOME_MESSAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@g_displayLevel = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* @ZSTDCLI_CLEVEL_DEFAULT, align 4
  store i32 %23, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @malloc(i32 %27)
  %29 = inttoptr i64 %28 to i8**
  store i8** %29, i8*** %14, align 8
  store i32 0, i32* %15, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %33 = load i8**, i8*** %14, align 8
  %34 = icmp eq i8** %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %2
  %41 = load i32, i32* @stderr, align 4
  store i32 %41, i32* @displayOut, align 4
  %42 = load i8*, i8** %16, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = trunc i64 %43 to i32
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %19, align 8
  br label %46

46:                                               ; preds = %60, %40
  %47 = load i64, i64* %19, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i8*, i8** %16, align 8
  %51 = load i64, i64* %19, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 47
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i64, i64* %19, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %19, align 8
  br label %63

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %19, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %19, align 8
  br label %46

63:                                               ; preds = %56, %46
  %64 = load i64, i64* %19, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8* %66, i8** %16, align 8
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %261, %63
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %264

71:                                               ; preds = %67
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %20, align 8
  %77 = load i8*, i8** %20, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  br label %261

80:                                               ; preds = %71
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %249

83:                                               ; preds = %80
  %84 = load i8*, i8** %20, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 1, i32* %10, align 4
  br label %261

88:                                               ; preds = %83
  %89 = load i8*, i8** %20, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @stdout, align 4
  store i32 %93, i32* @displayOut, align 4
  %94 = load i32, i32* @WELCOME_MESSAGE, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 (i8*, ...) @DISPLAY(i8* %96)
  %98 = call i32 @CLEAN_RETURN(i32 0)
  br label %99

99:                                               ; preds = %92, %88
  %100 = load i8*, i8** %20, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @stdout, align 4
  store i32 %104, i32* @displayOut, align 4
  %105 = load i8*, i8** %16, align 8
  %106 = call i32 @usage(i8* %105)
  %107 = call i32 @CLEAN_RETURN(i32 %106)
  br label %108

108:                                              ; preds = %103, %99
  %109 = load i8*, i8** %20, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* @g_displayLevel, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @g_displayLevel, align 4
  br label %261

115:                                              ; preds = %108
  %116 = load i8*, i8** %20, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @g_displayLevel, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* @g_displayLevel, align 4
  br label %261

122:                                              ; preds = %115
  %123 = load i8*, i8** %20, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 45
  br i1 %127, label %128, label %248

128:                                              ; preds = %122
  %129 = load i8*, i8** %20, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %20, align 8
  br label %131

131:                                              ; preds = %246, %128
  %132 = load i8*, i8** %20, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %247

137:                                              ; preds = %131
  %138 = load i8*, i8** %20, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  switch i32 %141, label %242 [
    i32 86, label %142
    i32 72, label %149
    i32 104, label %149
    i32 68, label %154
    i32 118, label %157
    i32 113, label %162
    i32 98, label %167
    i32 101, label %172
    i32 105, label %177
    i32 66, label %185
    i32 112, label %225
  ]

142:                                              ; preds = %137
  %143 = load i32, i32* @stdout, align 4
  store i32 %143, i32* @displayOut, align 4
  %144 = load i32, i32* @WELCOME_MESSAGE, align 4
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i8*
  %147 = call i32 (i8*, ...) @DISPLAY(i8* %146)
  %148 = call i32 @CLEAN_RETURN(i32 0)
  br label %149

149:                                              ; preds = %137, %137, %142
  %150 = load i32, i32* @stdout, align 4
  store i32 %150, i32* @displayOut, align 4
  %151 = load i8*, i8** %16, align 8
  %152 = call i32 @usage(i8* %151)
  %153 = call i32 @CLEAN_RETURN(i32 %152)
  br label %154

154:                                              ; preds = %137, %149
  store i32 1, i32* %8, align 4
  %155 = load i8*, i8** %20, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %20, align 8
  br label %246

157:                                              ; preds = %137
  %158 = load i32, i32* @g_displayLevel, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @g_displayLevel, align 4
  %160 = load i8*, i8** %20, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %20, align 8
  br label %246

162:                                              ; preds = %137
  %163 = load i32, i32* @g_displayLevel, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* @g_displayLevel, align 4
  %165 = load i8*, i8** %20, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %20, align 8
  br label %246

167:                                              ; preds = %137
  %168 = load i8*, i8** %20, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %20, align 8
  %170 = call i8* @readU32FromChar(i8** %20)
  %171 = ptrtoint i8* %170 to i32
  store i32 %171, i32* %11, align 4
  br label %246

172:                                              ; preds = %137
  %173 = load i8*, i8** %20, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %20, align 8
  %175 = call i8* @readU32FromChar(i8** %20)
  %176 = ptrtoint i8* %175 to i32
  store i32 %176, i32* %12, align 4
  br label %246

177:                                              ; preds = %137
  %178 = load i8*, i8** %20, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %20, align 8
  %180 = call i8* @readU32FromChar(i8** %20)
  store i8* %180, i8** %21, align 8
  %181 = load i32, i32* @g_displayLevel, align 4
  %182 = call i32 @BMK_setNotificationLevel(i32 %181)
  %183 = load i8*, i8** %21, align 8
  %184 = call i32 @BMK_SetNbIterations(i8* %183)
  br label %246

185:                                              ; preds = %137
  %186 = load i8*, i8** %20, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %20, align 8
  %188 = call i8* @readU32FromChar(i8** %20)
  %189 = ptrtoint i8* %188 to i64
  store i64 %189, i64* %22, align 8
  %190 = load i8*, i8** %20, align 8
  %191 = load i8, i8* %190, align 1
  %192 = call signext i8 @toupper(i8 signext %191)
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 75
  br i1 %194, label %195, label %200

195:                                              ; preds = %185
  %196 = load i64, i64* %22, align 8
  %197 = shl i64 %196, 10
  store i64 %197, i64* %22, align 8
  %198 = load i8*, i8** %20, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %20, align 8
  br label %200

200:                                              ; preds = %195, %185
  %201 = load i8*, i8** %20, align 8
  %202 = load i8, i8* %201, align 1
  %203 = call signext i8 @toupper(i8 signext %202)
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 77
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load i64, i64* %22, align 8
  %208 = shl i64 %207, 20
  store i64 %208, i64* %22, align 8
  %209 = load i8*, i8** %20, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %20, align 8
  br label %211

211:                                              ; preds = %206, %200
  %212 = load i8*, i8** %20, align 8
  %213 = load i8, i8* %212, align 1
  %214 = call signext i8 @toupper(i8 signext %213)
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 66
  br i1 %216, label %217, label %220

217:                                              ; preds = %211
  %218 = load i8*, i8** %20, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %20, align 8
  br label %220

220:                                              ; preds = %217, %211
  %221 = load i32, i32* @g_displayLevel, align 4
  %222 = call i32 @BMK_setNotificationLevel(i32 %221)
  %223 = load i64, i64* %22, align 8
  %224 = call i32 @BMK_SetBlockSize(i64 %223)
  br label %246

225:                                              ; preds = %137
  %226 = load i8*, i8** %20, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %20, align 8
  %228 = load i8*, i8** %20, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp sge i32 %230, 48
  br i1 %231, label %232, label %240

232:                                              ; preds = %225
  %233 = load i8*, i8** %20, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp sle i32 %235, 57
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = call i8* @readU32FromChar(i8** %20)
  %239 = call i32 @BMK_setAdditionalParam(i8* %238)
  br label %241

240:                                              ; preds = %232, %225
  store i32 1, i32* %7, align 4
  br label %241

241:                                              ; preds = %240, %237
  br label %246

242:                                              ; preds = %137
  %243 = load i8*, i8** %16, align 8
  %244 = call i32 @badusage(i8* %243)
  %245 = call i32 @CLEAN_RETURN(i32 %244)
  br label %246

246:                                              ; preds = %242, %241, %220, %177, %172, %167, %162, %157, %154
  br label %131

247:                                              ; preds = %131
  br label %261

248:                                              ; preds = %122
  br label %249

249:                                              ; preds = %248, %80
  %250 = load i32, i32* %8, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %249
  store i32 0, i32* %8, align 4
  %253 = load i8*, i8** %20, align 8
  store i8* %253, i8** %17, align 8
  br label %261

254:                                              ; preds = %249
  %255 = load i8*, i8** %20, align 8
  %256 = load i8**, i8*** %14, align 8
  %257 = load i32, i32* %15, align 4
  %258 = add i32 %257, 1
  store i32 %258, i32* %15, align 4
  %259 = zext i32 %257 to i64
  %260 = getelementptr inbounds i8*, i8** %256, i64 %259
  store i8* %255, i8** %260, align 8
  br label %261

261:                                              ; preds = %254, %252, %247, %119, %112, %87, %79
  %262 = load i32, i32* %6, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %6, align 4
  br label %67

264:                                              ; preds = %67
  %265 = load i32, i32* @WELCOME_MESSAGE, align 4
  %266 = sext i32 %265 to i64
  %267 = inttoptr i64 %266 to i8*
  %268 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* %267)
  %269 = load i32, i32* @g_displayLevel, align 4
  %270 = call i32 @BMK_setNotificationLevel(i32 %269)
  %271 = load i8**, i8*** %14, align 8
  %272 = load i32, i32* %15, align 4
  %273 = load i8*, i8** %17, align 8
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* %12, align 4
  %276 = call i32 @BMK_benchFiles(i8** %271, i32 %272, i8* %273, i32 %274, i32 %275)
  br label %277

277:                                              ; preds = %264
  %278 = load i32, i32* %7, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %277
  %281 = call i32 (...) @waitEnter()
  br label %282

282:                                              ; preds = %280, %277
  %283 = load i8*, i8** %18, align 8
  %284 = call i32 @free(i8* %283)
  %285 = load i8**, i8*** %14, align 8
  %286 = bitcast i8** %285 to i8*
  %287 = call i32 @free(i8* %286)
  %288 = load i32, i32* %9, align 4
  ret i32 %288
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @CLEAN_RETURN(i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i8* @readU32FromChar(i8**) #1

declare dso_local i32 @BMK_setNotificationLevel(i32) #1

declare dso_local i32 @BMK_SetNbIterations(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @BMK_SetBlockSize(i64) #1

declare dso_local i32 @BMK_setAdditionalParam(i8*) #1

declare dso_local i32 @badusage(i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @BMK_benchFiles(i8**, i32, i8*, i32, i32) #1

declare dso_local i32 @waitEnter(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
