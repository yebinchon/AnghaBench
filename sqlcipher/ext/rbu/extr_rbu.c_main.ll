; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_rbu.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_rbu.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"-vacuum\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"-presql\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-step\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"-statstep\00", align 1
@SQLITE_STATUS_MEMORY_USED = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"memory used=%lld highwater=%lld\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"  progress=%d/%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"SQLITE_OK: rbu update incomplete (%lld operations so far)\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"SQLITE_DONE: rbu update completed (%lld operations)\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"error=%d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [200 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  store i32 128, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 2
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @usage(i8* %34)
  br label %36

36:                                               ; preds = %31, %2
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %143, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %146

41:                                               ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %19, align 8
  %47 = load i8*, i8** %19, align 8
  %48 = call i32 @strlen(i8* %47)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load i32, i32* %20, align 4
  %53 = icmp sle i32 %52, 8
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i8*, i8** %19, align 8
  %56 = load i32, i32* %20, align 4
  %57 = call i64 @memcmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = icmp eq i64 0, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %14, align 4
  br label %142

60:                                               ; preds = %54, %51, %41
  %61 = load i32, i32* %20, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = load i32, i32* %20, align 4
  %65 = icmp sle i32 %64, 7
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i8*, i8** %19, align 8
  %68 = load i32, i32* %20, align 4
  %69 = call i64 @memcmp(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = icmp eq i64 0, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %20, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %15, align 8
  br label %141

84:                                               ; preds = %71, %66, %63, %60
  %85 = load i32, i32* %20, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = load i32, i32* %20, align 4
  %89 = icmp sle i32 %88, 5
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load i8*, i8** %19, align 8
  %92 = load i32, i32* %20, align 4
  %93 = call i64 @memcmp(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = icmp eq i64 0, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %20, align 4
  %98 = sub nsw i32 %97, 1
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  %103 = load i8**, i8*** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @atoi(i8* %107)
  store i32 %108, i32* %12, align 4
  br label %140

109:                                              ; preds = %95, %90, %87, %84
  %110 = load i32, i32* %20, align 4
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %134

112:                                              ; preds = %109
  %113 = load i32, i32* %20, align 4
  %114 = icmp sle i32 %113, 9
  br i1 %114, label %115, label %134

115:                                              ; preds = %112
  %116 = load i8*, i8** %19, align 8
  %117 = load i32, i32* %20, align 4
  %118 = call i64 @memcmp(i8* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = icmp eq i64 0, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %20, align 4
  %123 = sub nsw i32 %122, 1
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  %128 = load i8**, i8*** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @atoi(i8* %132)
  store i32 %133, i32* %13, align 4
  br label %139

134:                                              ; preds = %120, %115, %112, %109
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @usage(i8* %137)
  br label %139

139:                                              ; preds = %134, %125
  br label %140

140:                                              ; preds = %139, %100
  br label %141

141:                                              ; preds = %140, %76
  br label %142

142:                                              ; preds = %141, %59
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %37

146:                                              ; preds = %37
  %147 = load i8**, i8*** %5, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sub nsw i32 %148, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %147, i64 %150
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %7, align 8
  %153 = load i8**, i8*** %5, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %153, i64 %156
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** %8, align 8
  %159 = call i32 (...) @report_default_vfs()
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %146
  %163 = load i8*, i8** %7, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = call i32* @sqlite3rbu_vacuum(i8* %163, i8* %164)
  store i32* %165, i32** %11, align 8
  br label %170

166:                                              ; preds = %146
  %167 = load i8*, i8** %7, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = call i32* @sqlite3rbu_open(i8* %167, i8* %168, i32 0)
  store i32* %169, i32** %11, align 8
  br label %170

170:                                              ; preds = %166, %162
  %171 = load i32*, i32** %11, align 8
  %172 = call i32 @report_rbu_vfs(i32* %171)
  %173 = load i8*, i8** %15, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %193

175:                                              ; preds = %170
  %176 = load i32*, i32** %11, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %193

178:                                              ; preds = %175
  %179 = load i32*, i32** %11, align 8
  %180 = call i32* @sqlite3rbu_db(i32* %179, i32 0)
  store i32* %180, i32** %21, align 8
  %181 = load i32*, i32** %21, align 8
  %182 = load i8*, i8** %15, align 8
  %183 = call i32 @sqlite3_exec(i32* %181, i8* %182, i32 0, i32 0, i32 0)
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %16, align 4
  %185 = icmp eq i32 %184, 128
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = load i32*, i32** %11, align 8
  %188 = call i32* @sqlite3rbu_db(i32* %187, i32 1)
  store i32* %188, i32** %22, align 8
  %189 = load i32*, i32** %22, align 8
  %190 = load i8*, i8** %15, align 8
  %191 = call i32 @sqlite3_exec(i32* %189, i8* %190, i32 0, i32 0, i32 0)
  store i32 %191, i32* %16, align 4
  br label %192

192:                                              ; preds = %186, %178
  br label %193

193:                                              ; preds = %192, %175, %170
  %194 = load i32, i32* %16, align 4
  %195 = icmp eq i32 %194, 128
  br i1 %195, label %196, label %249

196:                                              ; preds = %193
  store i32 0, i32* %6, align 4
  br label %197

197:                                              ; preds = %241, %196
  %198 = load i32, i32* %12, align 4
  %199 = icmp sle i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %200, %197
  %205 = load i32*, i32** %11, align 8
  %206 = call i32 @sqlite3rbu_step(i32* %205)
  %207 = icmp eq i32 %206, 128
  br label %208

208:                                              ; preds = %204, %200
  %209 = phi i1 [ false, %200 ], [ %207, %204 ]
  br i1 %209, label %210, label %244

210:                                              ; preds = %208
  %211 = load i32, i32* %13, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %240

213:                                              ; preds = %210
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* %13, align 4
  %216 = srem i32 %214, %215
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %240

218:                                              ; preds = %213
  %219 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %220 = call i32 @sqlite3_status64(i32 %219, i32* %23, i32* %24, i32 0)
  %221 = load i32, i32* @stdout, align 4
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* %24, align 4
  %224 = call i32 (i32, i8*, ...) @fprintf(i32 %221, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %222, i32 %223)
  %225 = load i32, i32* %14, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %218
  %228 = load i32*, i32** %11, align 8
  %229 = call i32 @sqlite3rbu_bp_progress(i32* %228, i32* %25, i32* %26)
  %230 = load i32, i32* @stdout, align 4
  %231 = load i32, i32* %25, align 4
  %232 = load i32, i32* %26, align 4
  %233 = call i32 (i32, i8*, ...) @fprintf(i32 %230, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %231, i32 %232)
  br label %237

234:                                              ; preds = %218
  %235 = load i32, i32* @stdout, align 4
  %236 = call i32 (i32, i8*, ...) @fprintf(i32 %235, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %237

237:                                              ; preds = %234, %227
  %238 = load i32, i32* @stdout, align 4
  %239 = call i32 @fflush(i32 %238)
  br label %240

240:                                              ; preds = %237, %213, %210
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %6, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %6, align 4
  br label %197

244:                                              ; preds = %208
  %245 = load i32*, i32** %11, align 8
  %246 = call i32 @sqlite3rbu_progress(i32* %245)
  store i32 %246, i32* %17, align 4
  %247 = load i32*, i32** %11, align 8
  %248 = call i32 @sqlite3rbu_close(i32* %247, i8** %10)
  store i32 %248, i32* %16, align 4
  br label %249

249:                                              ; preds = %244, %193
  %250 = load i32, i32* %16, align 4
  switch i32 %250, label %265 [
    i32 128, label %251
    i32 129, label %258
  ]

251:                                              ; preds = %249
  %252 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %253 = load i32, i32* %17, align 4
  %254 = call i32 @sqlite3_snprintf(i32 200, i8* %252, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %253)
  %255 = load i32, i32* @stdout, align 4
  %256 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %257 = call i32 (i32, i8*, ...) @fprintf(i32 %255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %256)
  br label %270

258:                                              ; preds = %249
  %259 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %260 = load i32, i32* %17, align 4
  %261 = call i32 @sqlite3_snprintf(i32 200, i8* %259, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i32 %260)
  %262 = load i32, i32* @stdout, align 4
  %263 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %264 = call i32 (i32, i8*, ...) @fprintf(i32 %262, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %263)
  br label %270

265:                                              ; preds = %249
  %266 = load i32, i32* @stderr, align 4
  %267 = load i32, i32* %16, align 4
  %268 = load i8*, i8** %10, align 8
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %266, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %267, i8* %268)
  br label %270

270:                                              ; preds = %265, %258, %251
  %271 = load i8*, i8** %10, align 8
  %272 = call i32 @sqlite3_free(i8* %271)
  %273 = load i32, i32* %16, align 4
  %274 = icmp eq i32 %273, 128
  br i1 %274, label %278, label %275

275:                                              ; preds = %270
  %276 = load i32, i32* %16, align 4
  %277 = icmp eq i32 %276, 129
  br label %278

278:                                              ; preds = %275, %270
  %279 = phi i1 [ true, %270 ], [ %277, %275 ]
  %280 = zext i1 %279 to i64
  %281 = select i1 %279, i32 0, i32 1
  ret i32 %281
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @report_default_vfs(...) #1

declare dso_local i32* @sqlite3rbu_vacuum(i8*, i8*) #1

declare dso_local i32* @sqlite3rbu_open(i8*, i8*, i32) #1

declare dso_local i32 @report_rbu_vfs(i32*) #1

declare dso_local i32* @sqlite3rbu_db(i32*, i32) #1

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite3rbu_step(i32*) #1

declare dso_local i32 @sqlite3_status64(i32, i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sqlite3rbu_bp_progress(i32*, i32*, i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sqlite3rbu_progress(i32*) #1

declare dso_local i32 @sqlite3rbu_close(i32*, i8**) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
