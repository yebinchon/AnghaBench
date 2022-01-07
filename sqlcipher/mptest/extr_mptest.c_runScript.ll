; ModuleID = '/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_runScript.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_runScript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MX_ARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@g = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"testcase\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"finish\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"line %d of %s:\0AExpected [%.*s]\0A     Got [%s]\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"notglob\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"line %d of %s:\0AExpected [%s]\0A     Got [%s]\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%.*s/%s\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"begin script [%s]\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"end script [%s]\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"SELECT %.*s\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"line %d of %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"line %d of %s: bad client number: %d\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"INSERT INTO task(client,script,name) VALUES(%d,'%q',%Q)\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"breakpoint\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"show-sql-errors\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"line %d of %s: unknown command --%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*)* @runScript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @runScript(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__, align 4
  %19 = alloca [30 x i8], align 16
  %20 = alloca [1000 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i8*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %46 = load i32, i32* @MX_ARG, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %21, align 8
  %49 = alloca [100 x i8], i64 %47, align 16
  store i64 %47, i64* %22, align 8
  %50 = call i32 @memset(%struct.TYPE_7__* %18, i32 0, i32 8)
  %51 = call i32 @stringReset(%struct.TYPE_7__* %18)
  br label %52

52:                                               ; preds = %790, %108, %83, %4
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  store i32 %58, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %794

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i32 @tokenLength(i8* %65, i32* %9)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %14, align 4
  %68 = trunc i32 %67 to i8
  %69 = call i64 @ISSPACE(i8 signext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, 47
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 42
  br i1 %82, label %83, label %87

83:                                               ; preds = %74, %60
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %52

87:                                               ; preds = %74, %71
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 45
  br i1 %89, label %108, label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 45
  br i1 %98, label %108, label %99

99:                                               ; preds = %90
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = call i32 @isalpha(i8 signext %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %99, %90, %87
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %11, align 4
  br label %52

112:                                              ; preds = %99
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %119, i8* %123)
  store i8* %124, i8** %23, align 8
  %125 = load i8*, i8** %23, align 8
  %126 = call i32 @evalSql(%struct.TYPE_7__* %18, i8* %125)
  %127 = load i8*, i8** %23, align 8
  %128 = call i32 @sqlite3_free(i8* %127)
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %116, %112
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 0), align 4
  %134 = icmp sge i32 %133, 2
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* %16, align 4
  %137 = load i8*, i8** %7, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = call i32 (i8*, ...) @logMessage(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %136, i8* %140)
  br label %142

142:                                              ; preds = %135, %132
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = getelementptr inbounds i8, i8* %146, i64 2
  %148 = load i32, i32* %16, align 4
  %149 = sub nsw i32 %148, 2
  %150 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %151 = call i32 @extractToken(i8* %147, i32 %149, i8* %150, i32 30)
  store i32 %151, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %152

152:                                              ; preds = %211, %142
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %16, align 4
  %155 = sub nsw i32 %154, 2
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* @MX_ARG, align 4
  %160 = icmp slt i32 %158, %159
  br label %161

161:                                              ; preds = %157, %152
  %162 = phi i1 [ false, %152 ], [ %160, %157 ]
  br i1 %162, label %163, label %214

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %182, %163
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %16, align 4
  %167 = sub nsw i32 %166, 2
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load i8*, i8** %7, align 8
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 2
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %170, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = call i64 @ISSPACE(i8 signext %177)
  %179 = icmp ne i64 %178, 0
  br label %180

180:                                              ; preds = %169, %164
  %181 = phi i1 [ false, %164 ], [ %179, %169 ]
  br i1 %181, label %182, label %185

182:                                              ; preds = %180
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  br label %164

185:                                              ; preds = %180
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %16, align 4
  %188 = sub nsw i32 %187, 2
  %189 = icmp sge i32 %186, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %214

191:                                              ; preds = %185
  %192 = load i8*, i8** %7, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = getelementptr inbounds i8, i8* %195, i64 2
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i32, i32* %16, align 4
  %201 = sub nsw i32 %200, 2
  %202 = load i32, i32* %13, align 4
  %203 = sub nsw i32 %201, %202
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [100 x i8], [100 x i8]* %49, i64 %205
  %207 = getelementptr inbounds [100 x i8], [100 x i8]* %206, i64 0, i64 0
  %208 = call i32 @extractToken(i8* %199, i32 %203, i8* %207, i32 100)
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %13, align 4
  br label %211

211:                                              ; preds = %191
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %17, align 4
  br label %152

214:                                              ; preds = %190, %161
  %215 = load i32, i32* %17, align 4
  store i32 %215, i32* %15, align 4
  br label %216

216:                                              ; preds = %226, %214
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* @MX_ARG, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %216
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds [100 x i8], [100 x i8]* %49, i64 %223
  %225 = getelementptr inbounds [100 x i8], [100 x i8]* %224, i64 0, i64 0
  store i8 0, i8* %225, align 4
  br label %226

226:                                              ; preds = %220
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %15, align 4
  br label %216

229:                                              ; preds = %216
  %230 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %231 = call i64 @strcmp(i8* %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = getelementptr inbounds [100 x i8], [100 x i8]* %49, i64 0
  %235 = getelementptr inbounds [100 x i8], [100 x i8]* %234, i64 0, i64 0
  %236 = call i32 @atoi(i8* %235)
  %237 = call i32 @sqlite3_sleep(i32 %236)
  br label %790

238:                                              ; preds = %229
  %239 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %240 = call i64 @strcmp(i8* %239, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %257

242:                                              ; preds = %238
  %243 = getelementptr inbounds [100 x i8], [100 x i8]* %49, i64 0
  %244 = getelementptr inbounds [100 x i8], [100 x i8]* %243, i64 0, i64 0
  %245 = call i32 @atoi(i8* %244)
  store i32 %245, i32* %24, align 4
  %246 = load i32, i32* %5, align 4
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @finishScript(i32 %246, i32 %247, i32 1)
  %249 = load i32, i32* %24, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %242
  %252 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 3), align 4
  %253 = call i32 @sqlite3_close(i32 %252)
  br label %254

254:                                              ; preds = %251, %242
  %255 = load i32, i32* %24, align 4
  %256 = call i32 @exit(i32 %255) #4
  unreachable

257:                                              ; preds = %238
  %258 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %259 = call i64 @strcmp(i8* %258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %274

261:                                              ; preds = %257
  %262 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 0), align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %272

264:                                              ; preds = %261
  %265 = load i32, i32* %16, align 4
  %266 = sub nsw i32 %265, 1
  %267 = load i8*, i8** %7, align 8
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  %271 = call i32 (i8*, ...) @logMessage(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %266, i8* %270)
  br label %272

272:                                              ; preds = %264, %261
  %273 = call i32 @stringReset(%struct.TYPE_7__* %18)
  br label %788

274:                                              ; preds = %257
  %275 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %276 = call i64 @strcmp(i8* %275, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %274
  %279 = load i32, i32* %5, align 4
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %278
  %282 = load i32, i32* %5, align 4
  %283 = load i32, i32* %6, align 4
  %284 = call i32 @finishScript(i32 %282, i32 %283, i32 1)
  br label %787

285:                                              ; preds = %278, %274
  %286 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %287 = call i64 @strcmp(i8* %286, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = call i32 @stringReset(%struct.TYPE_7__* %18)
  br label %786

291:                                              ; preds = %285
  %292 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %293 = call i64 @strcmp(i8* %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %356

295:                                              ; preds = %291
  %296 = load i8*, i8** %7, align 8
  %297 = load i32, i32* %11, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  store i8* %299, i8** %26, align 8
  store i32 7, i32* %25, align 4
  br label %300

300:                                              ; preds = %316, %295
  %301 = load i32, i32* %25, align 4
  %302 = load i32, i32* %16, align 4
  %303 = sub nsw i32 %302, 1
  %304 = icmp slt i32 %301, %303
  br i1 %304, label %305, label %313

305:                                              ; preds = %300
  %306 = load i8*, i8** %26, align 8
  %307 = load i32, i32* %25, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = call i64 @ISSPACE(i8 signext %310)
  %312 = icmp ne i64 %311, 0
  br label %313

313:                                              ; preds = %305, %300
  %314 = phi i1 [ false, %300 ], [ %312, %305 ]
  br i1 %314, label %315, label %319

315:                                              ; preds = %313
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %25, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %25, align 4
  br label %300

319:                                              ; preds = %313
  %320 = load i32, i32* %25, align 4
  %321 = load i8*, i8** %26, align 8
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i8, i8* %321, i64 %322
  store i8* %323, i8** %26, align 8
  %324 = load i32, i32* %16, align 4
  %325 = load i32, i32* %25, align 4
  %326 = sub nsw i32 %324, %325
  %327 = sub nsw i32 %326, 1
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %327, %329
  br i1 %330, label %341, label %331

331:                                              ; preds = %319
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i8*, i8** %26, align 8
  %335 = load i32, i32* %16, align 4
  %336 = load i32, i32* %25, align 4
  %337 = sub nsw i32 %335, %336
  %338 = sub nsw i32 %337, 1
  %339 = call i64 @strncmp(i32 %333, i8* %334, i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %352

341:                                              ; preds = %331, %319
  %342 = load i32, i32* %10, align 4
  %343 = load i8*, i8** %8, align 8
  %344 = load i32, i32* %16, align 4
  %345 = load i32, i32* %25, align 4
  %346 = sub nsw i32 %344, %345
  %347 = sub nsw i32 %346, 1
  %348 = load i8*, i8** %26, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = call i32 (i8*, i32, i8*, ...) @errorMessage(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %342, i8* %343, i32 %347, i8* %348, i32 %350)
  br label %352

352:                                              ; preds = %341, %331
  %353 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 2), align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 2), align 4
  %355 = call i32 @stringReset(%struct.TYPE_7__* %18)
  br label %785

356:                                              ; preds = %291
  %357 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %358 = call i64 @strcmp(i8* %357, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %356
  %361 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %362 = call i64 @strcmp(i8* %361, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %364, label %429

364:                                              ; preds = %360, %356
  %365 = load i8*, i8** %7, align 8
  %366 = load i32, i32* %11, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %365, i64 %367
  store i8* %368, i8** %28, align 8
  %369 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %370 = load i8, i8* %369, align 16
  %371 = sext i8 %370 to i32
  %372 = icmp eq i32 %371, 103
  %373 = zext i1 %372 to i32
  store i32 %373, i32* %30, align 4
  %374 = load i32, i32* %30, align 4
  %375 = mul nsw i32 3, %374
  %376 = sub nsw i32 9, %375
  store i32 %376, i32* %27, align 4
  br label %377

377:                                              ; preds = %393, %364
  %378 = load i32, i32* %27, align 4
  %379 = load i32, i32* %16, align 4
  %380 = sub nsw i32 %379, 1
  %381 = icmp slt i32 %378, %380
  br i1 %381, label %382, label %390

382:                                              ; preds = %377
  %383 = load i8*, i8** %28, align 8
  %384 = load i32, i32* %27, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %383, i64 %385
  %387 = load i8, i8* %386, align 1
  %388 = call i64 @ISSPACE(i8 signext %387)
  %389 = icmp ne i64 %388, 0
  br label %390

390:                                              ; preds = %382, %377
  %391 = phi i1 [ false, %377 ], [ %389, %382 ]
  br i1 %391, label %392, label %396

392:                                              ; preds = %390
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %27, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %27, align 4
  br label %377

396:                                              ; preds = %390
  %397 = load i32, i32* %27, align 4
  %398 = load i8*, i8** %28, align 8
  %399 = sext i32 %397 to i64
  %400 = getelementptr inbounds i8, i8* %398, i64 %399
  store i8* %400, i8** %28, align 8
  %401 = load i32, i32* %16, align 4
  %402 = load i32, i32* %27, align 4
  %403 = sub nsw i32 %401, %402
  %404 = sub nsw i32 %403, 1
  %405 = load i8*, i8** %28, align 8
  %406 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %404, i8* %405)
  store i8* %406, i8** %29, align 8
  %407 = load i8*, i8** %29, align 8
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = call i64 @sqlite3_strglob(i8* %407, i32 %409)
  %411 = icmp eq i64 %410, 0
  %412 = zext i1 %411 to i32
  %413 = load i32, i32* %30, align 4
  %414 = xor i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %423

416:                                              ; preds = %396
  %417 = load i32, i32* %10, align 4
  %418 = load i8*, i8** %8, align 8
  %419 = load i8*, i8** %29, align 8
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = call i32 (i8*, i32, i8*, ...) @errorMessage(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %417, i8* %418, i8* %419, i32 %421)
  br label %423

423:                                              ; preds = %416, %396
  %424 = load i8*, i8** %29, align 8
  %425 = call i32 @sqlite3_free(i8* %424)
  %426 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 2), align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 2), align 4
  %428 = call i32 @stringReset(%struct.TYPE_7__* %18)
  br label %784

429:                                              ; preds = %360
  %430 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %431 = call i64 @strcmp(i8* %430, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %429
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = call i32 (i8*, ...) @logMessage(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %435)
  br label %783

437:                                              ; preds = %429
  %438 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %439 = call i64 @strcmp(i8* %438, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %502

441:                                              ; preds = %437
  store i8* null, i8** %33, align 8
  %442 = getelementptr inbounds [100 x i8], [100 x i8]* %49, i64 0
  %443 = getelementptr inbounds [100 x i8], [100 x i8]* %442, i64 0, i64 0
  store i8* %443, i8** %31, align 8
  %444 = load i8*, i8** %31, align 8
  %445 = getelementptr inbounds i8, i8* %444, i64 0
  %446 = load i8, i8* %445, align 1
  %447 = call i32 @isDirSep(i8 signext %446)
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %481, label %449

449:                                              ; preds = %441
  %450 = load i8*, i8** %8, align 8
  %451 = call i64 @strlen(i8* %450)
  %452 = trunc i64 %451 to i32
  %453 = sub nsw i32 %452, 1
  store i32 %453, i32* %34, align 4
  br label %454

454:                                              ; preds = %469, %449
  %455 = load i32, i32* %34, align 4
  %456 = icmp sge i32 %455, 0
  br i1 %456, label %457, label %466

457:                                              ; preds = %454
  %458 = load i8*, i8** %8, align 8
  %459 = load i32, i32* %34, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i8, i8* %458, i64 %460
  %462 = load i8, i8* %461, align 1
  %463 = call i32 @isDirSep(i8 signext %462)
  %464 = icmp ne i32 %463, 0
  %465 = xor i1 %464, true
  br label %466

466:                                              ; preds = %457, %454
  %467 = phi i1 [ false, %454 ], [ %465, %457 ]
  br i1 %467, label %468, label %472

468:                                              ; preds = %466
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %34, align 4
  %471 = add nsw i32 %470, -1
  store i32 %471, i32* %34, align 4
  br label %454

472:                                              ; preds = %466
  %473 = load i32, i32* %34, align 4
  %474 = icmp sgt i32 %473, 0
  br i1 %474, label %475, label %480

475:                                              ; preds = %472
  %476 = load i32, i32* %34, align 4
  %477 = load i8*, i8** %8, align 8
  %478 = load i8*, i8** %31, align 8
  %479 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %476, i8* %477, i8* %478)
  store i8* %479, i8** %33, align 8
  store i8* %479, i8** %31, align 8
  br label %480

480:                                              ; preds = %475, %472
  br label %481

481:                                              ; preds = %480, %441
  %482 = load i8*, i8** %31, align 8
  %483 = call i8* @readFile(i8* %482)
  store i8* %483, i8** %32, align 8
  %484 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 0), align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %481
  %487 = load i8*, i8** %31, align 8
  %488 = call i32 (i8*, ...) @logMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* %487)
  br label %489

489:                                              ; preds = %486, %481
  %490 = load i8*, i8** %32, align 8
  %491 = load i8*, i8** %31, align 8
  call void @runScript(i32 0, i32 0, i8* %490, i8* %491)
  %492 = load i8*, i8** %32, align 8
  %493 = call i32 @sqlite3_free(i8* %492)
  %494 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 0), align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %489
  %497 = load i8*, i8** %31, align 8
  %498 = call i32 (i8*, ...) @logMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %497)
  br label %499

499:                                              ; preds = %496, %489
  %500 = load i8*, i8** %33, align 8
  %501 = call i32 @sqlite3_free(i8* %500)
  br label %782

502:                                              ; preds = %437
  %503 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %504 = call i64 @strcmp(i8* %503, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %506, label %539

506:                                              ; preds = %502
  store i32 7, i32* %35, align 4
  br label %507

507:                                              ; preds = %524, %506
  %508 = load i32, i32* %35, align 4
  %509 = load i32, i32* %16, align 4
  %510 = icmp slt i32 %508, %509
  br i1 %510, label %511, label %521

511:                                              ; preds = %507
  %512 = load i8*, i8** %7, align 8
  %513 = load i32, i32* %11, align 4
  %514 = load i32, i32* %35, align 4
  %515 = add nsw i32 %513, %514
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i8, i8* %512, i64 %516
  %518 = load i8, i8* %517, align 1
  %519 = call i64 @ISSPACE(i8 signext %518)
  %520 = icmp ne i64 %519, 0
  br label %521

521:                                              ; preds = %511, %507
  %522 = phi i1 [ false, %507 ], [ %520, %511 ]
  br i1 %522, label %523, label %527

523:                                              ; preds = %521
  br label %524

524:                                              ; preds = %523
  %525 = load i32, i32* %35, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %35, align 4
  br label %507

527:                                              ; preds = %521
  %528 = load i32, i32* %16, align 4
  %529 = load i32, i32* %35, align 4
  %530 = sub nsw i32 %528, %529
  %531 = load i8*, i8** %7, align 8
  %532 = load i32, i32* %11, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8, i8* %531, i64 %533
  %535 = load i32, i32* %35, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i8, i8* %534, i64 %536
  %538 = call i32 (i8*, ...) @logMessage(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %530, i8* %537)
  br label %781

539:                                              ; preds = %502
  %540 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %541 = call i64 @strcmp(i8* %540, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %543, label %601

543:                                              ; preds = %539
  store i32 4, i32* %36, align 4
  br label %544

544:                                              ; preds = %561, %543
  %545 = load i32, i32* %36, align 4
  %546 = load i32, i32* %16, align 4
  %547 = icmp slt i32 %545, %546
  br i1 %547, label %548, label %558

548:                                              ; preds = %544
  %549 = load i8*, i8** %7, align 8
  %550 = load i32, i32* %11, align 4
  %551 = load i32, i32* %36, align 4
  %552 = add nsw i32 %550, %551
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i8, i8* %549, i64 %553
  %555 = load i8, i8* %554, align 1
  %556 = call i64 @ISSPACE(i8 signext %555)
  %557 = icmp ne i64 %556, 0
  br label %558

558:                                              ; preds = %548, %544
  %559 = phi i1 [ false, %544 ], [ %557, %548 ]
  br i1 %559, label %560, label %564

560:                                              ; preds = %558
  br label %561

561:                                              ; preds = %560
  %562 = load i32, i32* %36, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %36, align 4
  br label %544

564:                                              ; preds = %558
  %565 = load i32, i32* %16, align 4
  %566 = load i32, i32* %36, align 4
  %567 = sub nsw i32 %565, %566
  %568 = load i8*, i8** %7, align 8
  %569 = load i32, i32* %11, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i8, i8* %568, i64 %570
  %572 = load i32, i32* %36, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i8, i8* %571, i64 %573
  %575 = call i32* @prepareSql(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %567, i8* %574)
  store i32* %575, i32** %38, align 8
  %576 = load i32*, i32** %38, align 8
  %577 = call i32 @sqlite3_step(i32* %576)
  store i32 %577, i32* %37, align 4
  %578 = load i32, i32* %37, align 4
  %579 = load i32, i32* @SQLITE_ROW, align 4
  %580 = icmp ne i32 %578, %579
  br i1 %580, label %585, label %581

581:                                              ; preds = %564
  %582 = load i32*, i32** %38, align 8
  %583 = call i64 @sqlite3_column_int(i32* %582, i32 0)
  %584 = icmp eq i64 %583, 0
  br i1 %584, label %585, label %598

585:                                              ; preds = %581, %564
  %586 = load i8*, i8** %7, align 8
  %587 = load i32, i32* %11, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i8, i8* %586, i64 %588
  %590 = load i32, i32* %16, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i8, i8* %589, i64 %591
  %593 = call i64 @findEndif(i8* %592, i32 1, i32* %9)
  %594 = load i32, i32* %11, align 4
  %595 = sext i32 %594 to i64
  %596 = add nsw i64 %595, %593
  %597 = trunc i64 %596 to i32
  store i32 %597, i32* %11, align 4
  br label %598

598:                                              ; preds = %585, %581
  %599 = load i32*, i32** %38, align 8
  %600 = call i32 @sqlite3_finalize(i32* %599)
  br label %780

601:                                              ; preds = %539
  %602 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %603 = call i64 @strcmp(i8* %602, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %604 = icmp eq i64 %603, 0
  br i1 %604, label %605, label %618

605:                                              ; preds = %601
  %606 = load i8*, i8** %7, align 8
  %607 = load i32, i32* %11, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i8, i8* %606, i64 %608
  %610 = load i32, i32* %16, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i8, i8* %609, i64 %611
  %613 = call i64 @findEndif(i8* %612, i32 0, i32* %9)
  %614 = load i32, i32* %11, align 4
  %615 = sext i32 %614 to i64
  %616 = add nsw i64 %615, %613
  %617 = trunc i64 %616 to i32
  store i32 %617, i32* %11, align 4
  br label %779

618:                                              ; preds = %601
  %619 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %620 = call i64 @strcmp(i8* %619, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %621 = icmp eq i64 %620, 0
  br i1 %621, label %622, label %623

622:                                              ; preds = %618
  br label %778

623:                                              ; preds = %618
  %624 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %625 = call i64 @strcmp(i8* %624, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %626 = icmp eq i64 %625, 0
  br i1 %626, label %627, label %640

627:                                              ; preds = %623
  %628 = load i32, i32* %5, align 4
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %640

630:                                              ; preds = %627
  %631 = getelementptr inbounds [100 x i8], [100 x i8]* %49, i64 0
  %632 = getelementptr inbounds [100 x i8], [100 x i8]* %631, i64 0, i64 0
  %633 = call i32 @atoi(i8* %632)
  store i32 %633, i32* %39, align 4
  %634 = load i32, i32* %39, align 4
  %635 = icmp sgt i32 %634, 0
  br i1 %635, label %636, label %639

636:                                              ; preds = %630
  %637 = load i32, i32* %39, align 4
  %638 = call i32 @startClient(i32 %637)
  br label %639

639:                                              ; preds = %636, %630
  br label %777

640:                                              ; preds = %627, %623
  %641 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %642 = call i64 @strcmp(i8* %641, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %643 = icmp eq i64 %642, 0
  br i1 %643, label %644, label %667

644:                                              ; preds = %640
  %645 = load i32, i32* %5, align 4
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %667

647:                                              ; preds = %644
  %648 = load i32, i32* %17, align 4
  %649 = icmp sge i32 %648, 2
  br i1 %649, label %650, label %654

650:                                              ; preds = %647
  %651 = getelementptr inbounds [100 x i8], [100 x i8]* %49, i64 1
  %652 = getelementptr inbounds [100 x i8], [100 x i8]* %651, i64 0, i64 0
  %653 = call i32 @atoi(i8* %652)
  br label %655

654:                                              ; preds = %647
  br label %655

655:                                              ; preds = %654, %650
  %656 = phi i32 [ %653, %650 ], [ 10000, %654 ]
  store i32 %656, i32* %40, align 4
  %657 = getelementptr inbounds [1000 x i8], [1000 x i8]* %20, i64 0, i64 0
  %658 = load i32, i32* %10, align 4
  %659 = load i8*, i8** %8, align 8
  %660 = call i32 @sqlite3_snprintf(i32 1000, i8* %657, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 %658, i8* %659)
  %661 = getelementptr inbounds [100 x i8], [100 x i8]* %49, i64 0
  %662 = getelementptr inbounds [100 x i8], [100 x i8]* %661, i64 0, i64 0
  %663 = call i32 @atoi(i8* %662)
  %664 = load i32, i32* %40, align 4
  %665 = getelementptr inbounds [1000 x i8], [1000 x i8]* %20, i64 0, i64 0
  %666 = call i32 @waitForClient(i32 %663, i32 %664, i8* %665)
  br label %776

667:                                              ; preds = %644, %640
  %668 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %669 = call i64 @strcmp(i8* %668, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %670 = icmp eq i64 %669, 0
  br i1 %670, label %671, label %745

671:                                              ; preds = %667
  %672 = load i32, i32* %5, align 4
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %745

674:                                              ; preds = %671
  %675 = getelementptr inbounds [100 x i8], [100 x i8]* %49, i64 0
  %676 = getelementptr inbounds [100 x i8], [100 x i8]* %675, i64 0, i64 0
  %677 = call i32 @atoi(i8* %676)
  store i32 %677, i32* %41, align 4
  %678 = load i8*, i8** %7, align 8
  %679 = load i32, i32* %11, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i8, i8* %678, i64 %680
  %682 = load i32, i32* %16, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i8, i8* %681, i64 %683
  %685 = call i32 @findEnd(i8* %684, i32* %9)
  store i32 %685, i32* %42, align 4
  %686 = load i32, i32* %41, align 4
  %687 = icmp slt i32 %686, 0
  br i1 %687, label %688, label %693

688:                                              ; preds = %674
  %689 = load i32, i32* %10, align 4
  %690 = load i8*, i8** %8, align 8
  %691 = load i32, i32* %41, align 4
  %692 = call i32 (i8*, i32, i8*, ...) @errorMessage(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0), i32 %689, i8* %690, i32 %691)
  br label %725

693:                                              ; preds = %674
  %694 = load i32, i32* %42, align 4
  %695 = load i8*, i8** %7, align 8
  %696 = load i32, i32* %11, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds i8, i8* %695, i64 %697
  %699 = load i32, i32* %16, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i8, i8* %698, i64 %700
  %702 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %694, i8* %701)
  store i8* %702, i8** %43, align 8
  %703 = load i32, i32* %17, align 4
  %704 = icmp sgt i32 %703, 1
  br i1 %704, label %705, label %709

705:                                              ; preds = %693
  %706 = getelementptr inbounds [100 x i8], [100 x i8]* %49, i64 1
  %707 = getelementptr inbounds [100 x i8], [100 x i8]* %706, i64 0, i64 0
  %708 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %707)
  store i8* %708, i8** %44, align 8
  br label %714

709:                                              ; preds = %693
  %710 = load i8*, i8** %8, align 8
  %711 = call i32 @filenameTail(i8* %710)
  %712 = load i32, i32* %10, align 4
  %713 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32 %711, i32 %712)
  store i8* %713, i8** %44, align 8
  br label %714

714:                                              ; preds = %709, %705
  %715 = load i32, i32* %41, align 4
  %716 = call i32 @startClient(i32 %715)
  %717 = load i32, i32* %41, align 4
  %718 = load i8*, i8** %43, align 8
  %719 = load i8*, i8** %44, align 8
  %720 = call i32 (i8*, ...) @runSql(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.28, i64 0, i64 0), i32 %717, i8* %718, i8* %719)
  %721 = load i8*, i8** %43, align 8
  %722 = call i32 @sqlite3_free(i8* %721)
  %723 = load i8*, i8** %44, align 8
  %724 = call i32 @sqlite3_free(i8* %723)
  br label %725

725:                                              ; preds = %714, %688
  %726 = load i8*, i8** %7, align 8
  %727 = load i32, i32* %11, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds i8, i8* %726, i64 %728
  %730 = load i32, i32* %16, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i8, i8* %729, i64 %731
  %733 = load i32, i32* %42, align 4
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds i8, i8* %732, i64 %734
  %736 = call i32 @tokenLength(i8* %735, i32* %9)
  %737 = load i32, i32* %42, align 4
  %738 = add nsw i32 %737, %736
  store i32 %738, i32* %42, align 4
  %739 = load i32, i32* %42, align 4
  %740 = load i32, i32* %16, align 4
  %741 = add nsw i32 %740, %739
  store i32 %741, i32* %16, align 4
  %742 = load i32, i32* %11, align 4
  %743 = load i32, i32* %16, align 4
  %744 = add nsw i32 %742, %743
  store i32 %744, i32* %12, align 4
  br label %775

745:                                              ; preds = %671, %667
  %746 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %747 = call i64 @strcmp(i8* %746, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0))
  %748 = icmp eq i64 %747, 0
  br i1 %748, label %749, label %751

749:                                              ; preds = %745
  %750 = call i32 (...) @test_breakpoint()
  br label %774

751:                                              ; preds = %745
  %752 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %753 = call i64 @strcmp(i8* %752, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  %754 = icmp eq i64 %753, 0
  br i1 %754, label %755, label %768

755:                                              ; preds = %751
  %756 = load i32, i32* %17, align 4
  %757 = icmp sge i32 %756, 1
  br i1 %757, label %758, label %765

758:                                              ; preds = %755
  %759 = getelementptr inbounds [100 x i8], [100 x i8]* %49, i64 0
  %760 = getelementptr inbounds [100 x i8], [100 x i8]* %759, i64 0, i64 0
  %761 = call i32 @booleanValue(i8* %760)
  %762 = icmp ne i32 %761, 0
  %763 = xor i1 %762, true
  %764 = zext i1 %763 to i32
  br label %766

765:                                              ; preds = %755
  br label %766

766:                                              ; preds = %765, %758
  %767 = phi i32 [ %764, %758 ], [ 1, %765 ]
  store i32 %767, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 1), align 4
  br label %773

768:                                              ; preds = %751
  %769 = load i32, i32* %10, align 4
  %770 = load i8*, i8** %8, align 8
  %771 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %772 = call i32 (i8*, i32, i8*, ...) @errorMessage(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i64 0, i64 0), i32 %769, i8* %770, i8* %771)
  br label %773

773:                                              ; preds = %768, %766
  br label %774

774:                                              ; preds = %773, %749
  br label %775

775:                                              ; preds = %774, %725
  br label %776

776:                                              ; preds = %775, %655
  br label %777

777:                                              ; preds = %776, %639
  br label %778

778:                                              ; preds = %777, %622
  br label %779

779:                                              ; preds = %778, %605
  br label %780

780:                                              ; preds = %779, %598
  br label %781

781:                                              ; preds = %780, %527
  br label %782

782:                                              ; preds = %781, %499
  br label %783

783:                                              ; preds = %782, %433
  br label %784

784:                                              ; preds = %783, %423
  br label %785

785:                                              ; preds = %784, %352
  br label %786

786:                                              ; preds = %785, %289
  br label %787

787:                                              ; preds = %786, %281
  br label %788

788:                                              ; preds = %787, %272
  br label %789

789:                                              ; preds = %788
  br label %790

790:                                              ; preds = %789, %233
  %791 = load i32, i32* %16, align 4
  %792 = load i32, i32* %11, align 4
  %793 = add nsw i32 %792, %791
  store i32 %793, i32* %11, align 4
  br label %52

794:                                              ; preds = %52
  %795 = load i32, i32* %12, align 4
  %796 = load i32, i32* %11, align 4
  %797 = icmp slt i32 %795, %796
  br i1 %797, label %798, label %811

798:                                              ; preds = %794
  %799 = load i32, i32* %11, align 4
  %800 = load i32, i32* %12, align 4
  %801 = sub nsw i32 %799, %800
  %802 = load i8*, i8** %7, align 8
  %803 = load i32, i32* %12, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i8, i8* %802, i64 %804
  %806 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %801, i8* %805)
  store i8* %806, i8** %45, align 8
  %807 = load i8*, i8** %45, align 8
  %808 = call i32 (i8*, ...) @runSql(i8* %807)
  %809 = load i8*, i8** %45, align 8
  %810 = call i32 @sqlite3_free(i8* %809)
  br label %811

811:                                              ; preds = %798, %794
  %812 = call i32 @stringFree(%struct.TYPE_7__* %18)
  %813 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %813)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @stringReset(%struct.TYPE_7__*) #2

declare dso_local i32 @tokenLength(i8*, i32*) #2

declare dso_local i64 @ISSPACE(i8 signext) #2

declare dso_local i32 @isalpha(i8 signext) #2

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #2

declare dso_local i32 @evalSql(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @sqlite3_free(i8*) #2

declare dso_local i32 @logMessage(i8*, ...) #2

declare dso_local i32 @extractToken(i8*, i32, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @sqlite3_sleep(i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @finishScript(i32, i32, i32) #2

declare dso_local i32 @sqlite3_close(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @strncmp(i32, i8*, i32) #2

declare dso_local i32 @errorMessage(i8*, i32, i8*, ...) #2

declare dso_local i64 @sqlite3_strglob(i8*, i32) #2

declare dso_local i32 @isDirSep(i8 signext) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @readFile(i8*) #2

declare dso_local i32* @prepareSql(i8*, i32, i8*) #2

declare dso_local i32 @sqlite3_step(i32*) #2

declare dso_local i64 @sqlite3_column_int(i32*, i32) #2

declare dso_local i64 @findEndif(i8*, i32, i32*) #2

declare dso_local i32 @sqlite3_finalize(i32*) #2

declare dso_local i32 @startClient(i32) #2

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, i8*) #2

declare dso_local i32 @waitForClient(i32, i32, i8*) #2

declare dso_local i32 @findEnd(i8*, i32*) #2

declare dso_local i32 @filenameTail(i8*) #2

declare dso_local i32 @runSql(i8*, ...) #2

declare dso_local i32 @test_breakpoint(...) #2

declare dso_local i32 @booleanValue(i8*) #2

declare dso_local i32 @stringFree(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
