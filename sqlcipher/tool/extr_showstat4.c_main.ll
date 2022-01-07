; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showstat4.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showstat4.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Usage: %s DATABASE-FILE\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot open database file [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"SELECT tbl||'.'||idx, nEq, nLT, nDLt, sample FROM sqlite_stat4 ORDER BY 1\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"\0A****************************************************\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"%s sample %d ------------------------------------\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"  nEq    = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"  nLt    = %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"  nDLt   = %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"  sample = x'\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"'\0A          \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c" <error>\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%sNULL\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%s%!.15g\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%s%lld\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%sx'\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s'\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %2
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @sqlite3_open(i8* %36, i32** %6)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @SQLITE_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32*, i32** %6, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41, %33
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %41
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @sqlite3_prepare_v2(i32* %52, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32** %7, i32 0)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @SQLITE_OK, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32*, i32** %7, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %57, %51
  %61 = load i32, i32* @stderr, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i8* @sqlite3_errmsg(i32* %62)
  %64 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @sqlite3_close(i32* %65)
  %67 = call i32 @exit(i32 1) #3
  unreachable

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %345, %139, %68
  %70 = load i64, i64* @SQLITE_ROW, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @sqlite3_step(i32* %71)
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %347

74:                                               ; preds = %69
  %75 = load i8*, i8** %8, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %8, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i8* @sqlite3_column_text(i32* %79, i32 0)
  %81 = call i64 @strcmp(i8* %78, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %77, %74
  %84 = load i8*, i8** %8, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @sqlite3_free(i8* %89)
  %91 = load i32*, i32** %7, align 8
  %92 = call i8* @sqlite3_column_text(i32* %91, i32 0)
  %93 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %92)
  store i8* %93, i8** %8, align 8
  store i32 0, i32* %18, align 4
  br label %94

94:                                               ; preds = %88, %77
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %18, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %95, i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = call i8* @sqlite3_column_text(i32* %99, i32 1)
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %100)
  %102 = load i32*, i32** %7, align 8
  %103 = call i8* @sqlite3_column_text(i32* %102, i32 2)
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %103)
  %105 = load i32*, i32** %7, align 8
  %106 = call i8* @sqlite3_column_text(i32* %105, i32 3)
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %106)
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %109 = load i32*, i32** %7, align 8
  %110 = call i8* @sqlite3_column_blob(i32* %109, i32 4)
  store i8* %110, i8** %14, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @sqlite3_column_bytes(i32* %111, i32 4)
  store i32 %112, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %125, %94
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load i8*, i8** %14, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %113

128:                                              ; preds = %113
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %17, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = call i32 @decodeVarint(i8* %130, i32* %16)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135, %128
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %69

141:                                              ; preds = %135
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %13, align 4
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %341, %141
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %345

147:                                              ; preds = %143
  %148 = load i8*, i8** %14, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = call i32 @decodeVarint(i8* %151, i32* %16)
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %345

159:                                              ; preds = %147
  %160 = load i32, i32* %16, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %345

163:                                              ; preds = %159
  %164 = load i32, i32* %16, align 4
  switch i32 %164, label %176 [
    i32 0, label %165
    i32 1, label %166
    i32 2, label %167
    i32 3, label %168
    i32 4, label %169
    i32 5, label %170
    i32 6, label %171
    i32 7, label %172
    i32 8, label %173
    i32 9, label %174
    i32 10, label %175
    i32 11, label %175
  ]

165:                                              ; preds = %163
  store i32 0, i32* %19, align 4
  br label %180

166:                                              ; preds = %163
  store i32 1, i32* %19, align 4
  br label %180

167:                                              ; preds = %163
  store i32 2, i32* %19, align 4
  br label %180

168:                                              ; preds = %163
  store i32 3, i32* %19, align 4
  br label %180

169:                                              ; preds = %163
  store i32 4, i32* %19, align 4
  br label %180

170:                                              ; preds = %163
  store i32 6, i32* %19, align 4
  br label %180

171:                                              ; preds = %163
  store i32 8, i32* %19, align 4
  br label %180

172:                                              ; preds = %163
  store i32 8, i32* %19, align 4
  br label %180

173:                                              ; preds = %163
  store i32 0, i32* %19, align 4
  br label %180

174:                                              ; preds = %163
  store i32 0, i32* %19, align 4
  br label %180

175:                                              ; preds = %163, %163
  store i32 0, i32* %19, align 4
  br label %180

176:                                              ; preds = %163
  %177 = load i32, i32* %16, align 4
  %178 = sub nsw i32 %177, 12
  %179 = sdiv i32 %178, 2
  store i32 %179, i32* %19, align 4
  br label %180

180:                                              ; preds = %176, %175, %174, %173, %172, %171, %170, %169, %168, %167, %166, %165
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %19, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %15, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %345

187:                                              ; preds = %180
  %188 = load i32, i32* %16, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i8*, i8** %17, align 8
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %191)
  br label %341

193:                                              ; preds = %187
  %194 = load i32, i32* %16, align 4
  %195 = icmp eq i32 %194, 8
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %16, align 4
  %198 = icmp eq i32 %197, 9
  br i1 %198, label %199, label %204

199:                                              ; preds = %196, %193
  %200 = load i8*, i8** %17, align 8
  %201 = load i32, i32* %16, align 4
  %202 = sub nsw i32 %201, 8
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %200, i32 %202)
  br label %340

204:                                              ; preds = %196
  %205 = load i32, i32* %16, align 4
  %206 = icmp sle i32 %205, 7
  br i1 %206, label %207, label %250

207:                                              ; preds = %204
  %208 = load i8*, i8** %14, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  store i32 %213, i32* %20, align 4
  store i32 1, i32* %10, align 4
  br label %214

214:                                              ; preds = %230, %207
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %19, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %233

218:                                              ; preds = %214
  %219 = load i32, i32* %20, align 4
  %220 = shl i32 %219, 8
  %221 = load i8*, i8** %14, align 8
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %221, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = add nsw i32 %220, %228
  store i32 %229, i32* %20, align 4
  br label %230

230:                                              ; preds = %218
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %214

233:                                              ; preds = %214
  %234 = load i32, i32* %16, align 4
  %235 = icmp eq i32 %234, 7
  br i1 %235, label %236, label %245

236:                                              ; preds = %233
  %237 = call i32 @memcpy(double* %21, i32* %20, i32 8)
  %238 = load i8*, i8** %17, align 8
  %239 = load double, double* %21, align 8
  %240 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* %238, double %239)
  store i8* %240, i8** %22, align 8
  %241 = load i8*, i8** %22, align 8
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %241)
  %243 = load i8*, i8** %22, align 8
  %244 = call i32 @sqlite3_free(i8* %243)
  br label %249

245:                                              ; preds = %233
  %246 = load i8*, i8** %17, align 8
  %247 = load i32, i32* %20, align 4
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* %246, i32 %247)
  br label %249

249:                                              ; preds = %245, %236
  br label %339

250:                                              ; preds = %204
  %251 = load i32, i32* %16, align 4
  %252 = and i32 %251, 1
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %276

254:                                              ; preds = %250
  %255 = load i8*, i8** %17, align 8
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %255)
  store i32 0, i32* %10, align 4
  br label %257

257:                                              ; preds = %271, %254
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %19, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %274

261:                                              ; preds = %257
  %262 = load i8*, i8** %14, align 8
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %262, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %261
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %10, align 4
  br label %257

274:                                              ; preds = %257
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %338

276:                                              ; preds = %250
  %277 = load i8*, i8** %17, align 8
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* %277)
  store i32 0, i32* %10, align 4
  br label %279

279:                                              ; preds = %333, %276
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* %19, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %336

283:                                              ; preds = %279
  %284 = load i8*, i8** %14, align 8
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %10, align 4
  %287 = add nsw i32 %285, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %284, i64 %288
  %290 = load i8, i8* %289, align 1
  store i8 %290, i8* %23, align 1
  %291 = load i8, i8* %23, align 1
  %292 = call i64 @ISPRINT(i8 signext %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %307

294:                                              ; preds = %283
  %295 = load i8, i8* %23, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp eq i32 %296, 39
  br i1 %297, label %302, label %298

298:                                              ; preds = %294
  %299 = load i8, i8* %23, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 92
  br i1 %301, label %302, label %304

302:                                              ; preds = %298, %294
  %303 = call i32 @putchar(i8 signext 92)
  br label %304

304:                                              ; preds = %302, %298
  %305 = load i8, i8* %23, align 1
  %306 = call i32 @putchar(i8 signext %305)
  br label %332

307:                                              ; preds = %283
  %308 = load i8, i8* %23, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 10
  br i1 %310, label %311, label %313

311:                                              ; preds = %307
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %331

313:                                              ; preds = %307
  %314 = load i8, i8* %23, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp eq i32 %315, 9
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  br label %330

319:                                              ; preds = %313
  %320 = load i8, i8* %23, align 1
  %321 = sext i8 %320 to i32
  %322 = icmp eq i32 %321, 13
  br i1 %322, label %323, label %325

323:                                              ; preds = %319
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  br label %329

325:                                              ; preds = %319
  %326 = load i8, i8* %23, align 1
  %327 = sext i8 %326 to i32
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %327)
  br label %329

329:                                              ; preds = %325, %323
  br label %330

330:                                              ; preds = %329, %317
  br label %331

331:                                              ; preds = %330, %311
  br label %332

332:                                              ; preds = %331, %304
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %10, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %10, align 4
  br label %279

336:                                              ; preds = %279
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %338

338:                                              ; preds = %336, %274
  br label %339

339:                                              ; preds = %338, %249
  br label %340

340:                                              ; preds = %339, %199
  br label %341

341:                                              ; preds = %340, %190
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8** %17, align 8
  %342 = load i32, i32* %19, align 4
  %343 = load i32, i32* %12, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %12, align 4
  br label %143

345:                                              ; preds = %186, %162, %158, %143
  %346 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  br label %69

347:                                              ; preds = %69
  %348 = load i8*, i8** %8, align 8
  %349 = call i32 @sqlite3_free(i8* %348)
  %350 = load i32*, i32** %7, align 8
  %351 = call i32 @sqlite3_finalize(i32* %350)
  %352 = load i32*, i32** %6, align 8
  %353 = call i32 @sqlite3_close(i32* %352)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sqlite3_open(i8*, i32**) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, ...) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @decodeVarint(i8*, i32*) #1

declare dso_local i32 @memcpy(double*, i32*, i32) #1

declare dso_local i64 @ISPRINT(i8 signext) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
