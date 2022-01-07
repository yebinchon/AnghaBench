; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_dbfuzz.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_dbfuzz.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"limit-mem\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"missing argument to %s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"no-lookaside\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@SQL_OUTPUT = common dso_local global i32 0, align 4
@SQL_TRACE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"limit-vdbe\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"unknown command-line option: \22%s\22\0A\00", align 1
@SQLITE_CONFIG_LOG = common dso_local global i32 0, align 4
@sqlLog = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"cannot allocate %d-byte heap\0A\00", align 1
@SQLITE_CONFIG_HEAP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"heap configuration failed: %d\0A\00", align 1
@SQLITE_CONFIG_LOOKASIDE = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@timeoutHandler = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"DATABASE-FILE: %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"inmem\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"cannot open test.db for \22%s\22\0A\00", align 1
@progressHandler = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"SELECT sql FROM autoexec\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"PRAGMA integrity_check;\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"memory leak of %lld bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i8** null, i8*** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %169, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %172

25:                                               ; preds = %21
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %19, align 8
  %31 = load i8*, i8** %19, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 45
  br i1 %35, label %36, label %55

36:                                               ; preds = %25
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = call i8** @realloc(i8** %37, i32 %42)
  store i8** %43, i8*** %8, align 8
  %44 = load i8**, i8*** %8, align 8
  %45 = icmp eq i8** %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %36
  %49 = load i8*, i8** %19, align 8
  %50 = load i8**, i8*** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  store i8* %49, i8** %54, align 8
  br label %169

55:                                               ; preds = %25
  %56 = load i8*, i8** %19, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %19, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 45
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i8*, i8** %19, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %19, align 8
  br label %66

66:                                               ; preds = %63, %55
  %67 = load i8*, i8** %19, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @showHelp(i8* %73)
  br label %168

75:                                               ; preds = %66
  %76 = load i8*, i8** %19, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %4, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %84, %79
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @integerValue(i8* %97)
  store i32 %98, i32* %12, align 4
  br label %167

99:                                               ; preds = %75
  %100 = load i8*, i8** %19, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 1, i32* %10, align 4
  br label %166

104:                                              ; preds = %99
  %105 = load i8*, i8** %19, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %4, align 4
  %111 = sub nsw i32 %110, 1
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %113, %108
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @integerValue(i8* %126)
  store i32 %127, i32* %13, align 4
  br label %165

128:                                              ; preds = %104
  %129 = load i8*, i8** %19, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i32, i32* @SQL_OUTPUT, align 4
  %134 = load i32, i32* @SQL_TRACE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %18, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %18, align 4
  br label %164

138:                                              ; preds = %128
  %139 = load i8*, i8** %19, align 8
  %140 = call i64 @strcmp(i8* %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 1, i32* %11, align 4
  br label %163

143:                                              ; preds = %138
  %144 = load i8*, i8** %19, align 8
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i8*, i8** %19, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147, %143
  store i32 1, i32* %9, align 4
  %152 = load i32, i32* @SQL_TRACE, align 4
  %153 = load i32, i32* %18, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %18, align 4
  br label %162

155:                                              ; preds = %147
  %156 = load i8**, i8*** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %155, %151
  br label %163

163:                                              ; preds = %162, %142
  br label %164

164:                                              ; preds = %163, %132
  br label %165

165:                                              ; preds = %164, %120
  br label %166

166:                                              ; preds = %165, %103
  br label %167

167:                                              ; preds = %166, %91
  br label %168

168:                                              ; preds = %167, %70
  br label %169

169:                                              ; preds = %168, %48
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %21

172:                                              ; preds = %21
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load i8**, i8*** %5, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @showHelp(i8* %178)
  br label %180

180:                                              ; preds = %175, %172
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32, i32* @SQLITE_CONFIG_LOG, align 4
  %185 = load i32, i32* @sqlLog, align 4
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = call i32 (i32, i8*, ...) @sqlite3_config(i32 %184, i8* %187)
  br label %189

189:                                              ; preds = %183, %180
  %190 = load i32, i32* %12, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %211

192:                                              ; preds = %189
  %193 = load i32, i32* %12, align 4
  %194 = call i8* @malloc(i32 %193)
  store i8* %194, i8** %20, align 8
  %195 = load i8*, i8** %20, align 8
  %196 = icmp eq i8* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32, i32* %12, align 4
  %199 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %197, %192
  %201 = load i32, i32* @SQLITE_CONFIG_HEAP, align 4
  %202 = load i8*, i8** %20, align 8
  %203 = load i32, i32* %12, align 4
  %204 = call i32 (i32, i8*, ...) @sqlite3_config(i32 %201, i8* %202, i32 %203, i32 32)
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %200
  %208 = load i32, i32* %14, align 4
  %209 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %207, %200
  br label %211

211:                                              ; preds = %210, %189
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* @SQLITE_CONFIG_LOOKASIDE, align 4
  %216 = call i32 (i32, i8*, ...) @sqlite3_config(i32 %215, i8* null, i32 0)
  br label %217

217:                                              ; preds = %214, %211
  %218 = call i32 (...) @inmemVfsRegister()
  %219 = call i32 (...) @formatVfs()
  %220 = call i32 @StrInit(i32* %17)
  %221 = load i32, i32* @SIGALRM, align 4
  %222 = load i32, i32* @timeoutHandler, align 4
  %223 = call i32 @signal(i32 %221, i32 %222)
  store i32 0, i32* %6, align 4
  br label %224

224:                                              ; preds = %315, %217
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %318

228:                                              ; preds = %224
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %228
  %232 = load i32, i32* %7, align 4
  %233 = icmp sgt i32 %232, 1
  br i1 %233, label %234, label %243

234:                                              ; preds = %231
  %235 = load i8**, i8*** %8, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %239)
  %241 = load i32, i32* @stdout, align 4
  %242 = call i32 @fflush(i32 %241)
  br label %243

243:                                              ; preds = %234, %231, %228
  %244 = load i32, i32* %13, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i32, i32* %13, align 4
  %248 = call i32 @setAlarm(i32 %247)
  br label %249

249:                                              ; preds = %246, %243
  %250 = load i8**, i8*** %8, align 8
  %251 = load i32, i32* %6, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %250, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @createVFile(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %254)
  %256 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %257 = call i32 @sqlite3_open_v2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32** %15, i32 %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %14, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %249
  %261 = load i8**, i8*** %8, align 8
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* %265)
  %267 = call i32 (...) @reformatVfs()
  br label %315

268:                                              ; preds = %249
  %269 = load i32, i32* %11, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load i32*, i32** %15, align 8
  %273 = load i32, i32* @progressHandler, align 4
  %274 = call i32 @sqlite3_progress_handler(i32* %272, i32 100000, i32 %273, i32* %11)
  br label %275

275:                                              ; preds = %271, %268
  %276 = load i32*, i32** %15, align 8
  %277 = call i32 @sqlite3_prepare_v2(i32* %276, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 -1, i32** %16, i32 0)
  store i32 %277, i32* %14, align 4
  %278 = load i32, i32* %14, align 4
  %279 = load i32, i32* @SQLITE_OK, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %294

281:                                              ; preds = %275
  br label %282

282:                                              ; preds = %287, %281
  %283 = load i64, i64* @SQLITE_ROW, align 8
  %284 = load i32*, i32** %16, align 8
  %285 = call i64 @sqlite3_step(i32* %284)
  %286 = icmp eq i64 %283, %285
  br i1 %286, label %287, label %293

287:                                              ; preds = %282
  %288 = load i32*, i32** %16, align 8
  %289 = call i64 @sqlite3_column_text(i32* %288, i32 0)
  %290 = inttoptr i64 %289 to i8*
  %291 = call i32 @StrAppend(i32* %17, i8* %290)
  %292 = call i32 @StrAppend(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %282

293:                                              ; preds = %282
  br label %294

294:                                              ; preds = %293, %275
  %295 = load i32*, i32** %16, align 8
  %296 = call i32 @sqlite3_finalize(i32* %295)
  %297 = call i32 @StrAppend(i32* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %298 = load i32*, i32** %15, align 8
  %299 = call i32 @StrStr(i32* %17)
  %300 = load i32, i32* %18, align 4
  %301 = call i32 @runSql(i32* %298, i32 %299, i32 %300)
  %302 = load i32*, i32** %15, align 8
  %303 = call i32 @sqlite3_close(i32* %302)
  %304 = call i32 (...) @reformatVfs()
  %305 = call i32 @StrFree(i32* %17)
  %306 = call i32 (...) @sqlite3_memory_used()
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %294
  %309 = load i8**, i8*** %8, align 8
  %310 = call i32 @free(i8** %309)
  %311 = call i32 (...) @reformatVfs()
  %312 = call i32 (...) @sqlite3_memory_used()
  %313 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %312)
  br label %314

314:                                              ; preds = %308, %294
  br label %315

315:                                              ; preds = %314, %260
  %316 = load i32, i32* %6, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %6, align 4
  br label %224

318:                                              ; preds = %224
  %319 = call i32 @StrFree(i32* %17)
  %320 = call i32 (...) @reformatVfs()
  ret i32 0
}

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @fatalError(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @showHelp(i8*) #1

declare dso_local i32 @integerValue(i8*) #1

declare dso_local i32 @sqlite3_config(i32, i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @inmemVfsRegister(...) #1

declare dso_local i32 @formatVfs(...) #1

declare dso_local i32 @StrInit(i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @setAlarm(i32) #1

declare dso_local i32 @createVFile(i8*, i8*) #1

declare dso_local i32 @sqlite3_open_v2(i8*, i32**, i32, i8*) #1

declare dso_local i32 @reformatVfs(...) #1

declare dso_local i32 @sqlite3_progress_handler(i32*, i32, i32, i32*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @StrAppend(i32*, i8*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @runSql(i32*, i32, i32) #1

declare dso_local i32 @StrStr(i32*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

declare dso_local i32 @StrFree(i32*) #1

declare dso_local i32 @sqlite3_memory_used(...) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
