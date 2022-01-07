; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_changeset.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_changeset.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unable to open database file \22%s\22: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@nConflict = common dso_local global i32 0, align 4
@conflictCallback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"sqlite3changeset_apply() returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%d conflicts - no changes applied\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"sqlite3changeset_apply() returns %d - no changes applied\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"cannot open \22%s\22 for writing\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"sqlite3changeset_concat() returns %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"unable to write all %d bytes of output to \22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"sqlite3changeset_start() returns %d\0A\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [42 x i8] c"%d: %s table=[%s] indirect=%d nColumn=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"    old[%d]%s = \00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"pk\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"    new[%d]%s = \00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"sqlite3changeset_invert() returns %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"sql\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"BEGIN;\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"*[^a-zA-Z0-9]*\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"\22%w\22\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"/****** Changes for table %s ***************/\0A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"/* %d */ DELETE FROM %s WHERE\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"%sc%d=\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c" AND \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"/* %d */ UPDATE %s SET\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c" WHERE\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"/* %d */ INSERT INTO %s VALUES\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"COMMIT;\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i8*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %55

50:                                               ; preds = %2
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @usage(i8* %53)
  br label %55

55:                                               ; preds = %50, %2
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @readFile(i8* %58, i32* %6, i8** %8)
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 2
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %131

65:                                               ; preds = %55
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 4
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @usage(i8* %71)
  br label %73

73:                                               ; preds = %68, %65
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 3
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @sqlite3_open(i8* %76, i32** %9)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SQLITE_OK, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  %82 = load i32, i32* @stderr, align 4
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 3
  %85 = load i8*, i8** %84, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = call i8* @sqlite3_errmsg(i32* %86)
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %85, i8* %87)
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @sqlite3_close(i32* %89)
  %91 = call i32 @exit(i32 1) #3
  unreachable

92:                                               ; preds = %73
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @sqlite3_exec(i32* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  store i32 0, i32* @nConflict, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* @conflictCallback, align 4
  %99 = call i32 @sqlite3changeset_apply(i32* %95, i32 %96, i8* %97, i32 0, i32 %98, i32 0)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load i32, i32* @stderr, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %92
  %107 = load i32, i32* @nConflict, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* @stderr, align 4
  %111 = load i32, i32* @nConflict, align 4
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @sqlite3_exec(i32* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0)
  br label %128

115:                                              ; preds = %106
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* @stderr, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @sqlite3_exec(i32* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0)
  br label %127

124:                                              ; preds = %115
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @sqlite3_exec(i32* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0, i32 0)
  br label %127

127:                                              ; preds = %124, %118
  br label %128

128:                                              ; preds = %127, %109
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @sqlite3_close(i32* %129)
  br label %552

131:                                              ; preds = %55
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %197

137:                                              ; preds = %131
  %138 = load i8**, i8*** %5, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 4
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %15, align 8
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 5
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i8**, i8*** %5, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @usage(i8* %146)
  br label %148

148:                                              ; preds = %143, %137
  %149 = load i8*, i8** %15, align 8
  %150 = call i32* @fopen(i8* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32* %150, i32** %14, align 8
  %151 = load i32*, i32** %14, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i32, i32* @stderr, align 4
  %155 = load i8*, i8** %15, align 8
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %155)
  %157 = call i32 @exit(i32 1) #3
  unreachable

158:                                              ; preds = %148
  %159 = load i8**, i8*** %5, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 3
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @readFile(i8* %161, i32* %10, i8** %11)
  %163 = load i32, i32* %6, align 4
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 @sqlite3changeset_concat(i32 %163, i8* %164, i32 %165, i8* %166, i32* %12, i8** %13)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @SQLITE_OK, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %158
  %172 = load i32, i32* @stderr, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %173)
  br label %190

175:                                              ; preds = %158
  %176 = load i32, i32* %12, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load i8*, i8** %13, align 8
  %180 = load i32, i32* %12, align 4
  %181 = load i32*, i32** %14, align 8
  %182 = call i32 @fwrite(i8* %179, i32 %180, i32 1, i32* %181)
  %183 = icmp ne i32 %182, 1
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load i32, i32* @stderr, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load i8*, i8** %15, align 8
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %186, i8* %187)
  br label %189

189:                                              ; preds = %184, %178, %175
  br label %190

190:                                              ; preds = %189, %171
  %191 = load i32*, i32** %14, align 8
  %192 = call i32 @fclose(i32* %191)
  %193 = load i8*, i8** %13, align 8
  %194 = call i32 @sqlite3_free(i8* %193)
  %195 = load i8*, i8** %11, align 8
  %196 = call i32 @sqlite3_free(i8* %195)
  br label %551

197:                                              ; preds = %131
  %198 = load i8**, i8*** %5, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 2
  %200 = load i8*, i8** %199, align 8
  %201 = call i64 @strcmp(i8* %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %297

203:                                              ; preds = %197
  store i32 0, i32* %16, align 4
  %204 = load i32, i32* %6, align 4
  %205 = load i8*, i8** %8, align 8
  %206 = call i32 @sqlite3changeset_start(i32** %18, i32 %204, i8* %205)
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* @SQLITE_OK, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = load i32, i32* @stderr, align 4
  %212 = load i32, i32* %7, align 4
  %213 = call i32 (i32, i8*, ...) @fprintf(i32 %211, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %212)
  %214 = call i32 @exit(i32 1) #3
  unreachable

215:                                              ; preds = %203
  br label %216

216:                                              ; preds = %293, %215
  %217 = load i32*, i32** %18, align 8
  %218 = call i64 @sqlite3changeset_next(i32* %217)
  %219 = load i64, i64* @SQLITE_ROW, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %294

221:                                              ; preds = %216
  %222 = load i32*, i32** %18, align 8
  %223 = call i32 @sqlite3changeset_op(i32* %222, i8** %22, i32* %21, i32* %19, i32* %20)
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %16, align 4
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* %19, align 4
  %228 = icmp eq i32 %227, 129
  br i1 %228, label %229, label %230

229:                                              ; preds = %221
  br label %235

230:                                              ; preds = %221
  %231 = load i32, i32* %19, align 4
  %232 = icmp eq i32 %231, 128
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)
  br label %235

235:                                              ; preds = %230, %229
  %236 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %229 ], [ %234, %230 ]
  %237 = load i8*, i8** %22, align 8
  %238 = load i32, i32* %20, align 4
  %239 = load i32, i32* %21, align 4
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %226, i8* %236, i8* %237, i32 %238, i32 %239)
  %241 = load i32*, i32** %18, align 8
  %242 = call i32 @sqlite3changeset_pk(i32* %241, i8** %23, i32 0)
  store i32 0, i32* %17, align 4
  br label %243

243:                                              ; preds = %290, %235
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %21, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %293

247:                                              ; preds = %243
  store i32* null, i32** %24, align 8
  %248 = load i32*, i32** %18, align 8
  %249 = load i32, i32* %17, align 4
  %250 = call i32 @sqlite3changeset_old(i32* %248, i32 %249, i32** %24)
  %251 = load i32*, i32** %24, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %268

253:                                              ; preds = %247
  %254 = load i32, i32* %17, align 4
  %255 = load i8*, i8** %23, align 8
  %256 = load i32, i32* %17, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp ne i32 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %254, i8* %263)
  %265 = load i32*, i32** %24, align 8
  %266 = call i32 @renderValue(i32* %265)
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %268

268:                                              ; preds = %253, %247
  store i32* null, i32** %24, align 8
  %269 = load i32*, i32** %18, align 8
  %270 = load i32, i32* %17, align 4
  %271 = call i32 @sqlite3changeset_new(i32* %269, i32 %270, i32** %24)
  %272 = load i32*, i32** %24, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %289

274:                                              ; preds = %268
  %275 = load i32, i32* %17, align 4
  %276 = load i8*, i8** %23, align 8
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %276, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = icmp ne i32 %281, 0
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)
  %285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 %275, i8* %284)
  %286 = load i32*, i32** %24, align 8
  %287 = call i32 @renderValue(i32* %286)
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %289

289:                                              ; preds = %274, %268
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %17, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %17, align 4
  br label %243

293:                                              ; preds = %243
  br label %216

294:                                              ; preds = %216
  %295 = load i32*, i32** %18, align 8
  %296 = call i32 @sqlite3changeset_finalize(i32* %295)
  br label %550

297:                                              ; preds = %197
  %298 = load i8**, i8*** %5, align 8
  %299 = getelementptr inbounds i8*, i8** %298, i64 2
  %300 = load i8*, i8** %299, align 8
  %301 = call i64 @strcmp(i8* %300, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %355

303:                                              ; preds = %297
  store i32 0, i32* %26, align 4
  store i8* null, i8** %27, align 8
  %304 = load i8**, i8*** %5, align 8
  %305 = getelementptr inbounds i8*, i8** %304, i64 3
  %306 = load i8*, i8** %305, align 8
  store i8* %306, i8** %28, align 8
  %307 = load i32, i32* %4, align 4
  %308 = icmp ne i32 %307, 4
  br i1 %308, label %309, label %314

309:                                              ; preds = %303
  %310 = load i8**, i8*** %5, align 8
  %311 = getelementptr inbounds i8*, i8** %310, i64 0
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 @usage(i8* %312)
  br label %314

314:                                              ; preds = %309, %303
  %315 = load i8*, i8** %28, align 8
  %316 = call i32* @fopen(i8* %315, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32* %316, i32** %25, align 8
  %317 = load i32*, i32** %25, align 8
  %318 = icmp eq i32* %317, null
  br i1 %318, label %319, label %324

319:                                              ; preds = %314
  %320 = load i32, i32* @stderr, align 4
  %321 = load i8*, i8** %28, align 8
  %322 = call i32 (i32, i8*, ...) @fprintf(i32 %320, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %321)
  %323 = call i32 @exit(i32 1) #3
  unreachable

324:                                              ; preds = %314
  %325 = load i32, i32* %6, align 4
  %326 = load i8*, i8** %8, align 8
  %327 = call i32 @sqlite3changeset_invert(i32 %325, i8* %326, i32* %26, i8** %27)
  store i32 %327, i32* %7, align 4
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* @SQLITE_OK, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %324
  %332 = load i32, i32* @stderr, align 4
  %333 = load i32, i32* %7, align 4
  %334 = call i32 (i32, i8*, ...) @fprintf(i32 %332, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i32 %333)
  br label %350

335:                                              ; preds = %324
  %336 = load i32, i32* %26, align 4
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %349

338:                                              ; preds = %335
  %339 = load i8*, i8** %27, align 8
  %340 = load i32, i32* %26, align 4
  %341 = load i32*, i32** %25, align 8
  %342 = call i32 @fwrite(i8* %339, i32 %340, i32 1, i32* %341)
  %343 = icmp ne i32 %342, 1
  br i1 %343, label %344, label %349

344:                                              ; preds = %338
  %345 = load i32, i32* @stderr, align 4
  %346 = load i32, i32* %26, align 4
  %347 = load i8*, i8** %28, align 8
  %348 = call i32 (i32, i8*, ...) @fprintf(i32 %345, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %346, i8* %347)
  br label %349

349:                                              ; preds = %344, %338, %335
  br label %350

350:                                              ; preds = %349, %331
  %351 = load i32*, i32** %25, align 8
  %352 = call i32 @fclose(i32* %351)
  %353 = load i8*, i8** %27, align 8
  %354 = call i32 @sqlite3_free(i8* %353)
  br label %549

355:                                              ; preds = %297
  %356 = load i8**, i8*** %5, align 8
  %357 = getelementptr inbounds i8*, i8** %356, i64 2
  %358 = load i8*, i8** %357, align 8
  %359 = call i64 @strcmp(i8* %358, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %543

361:                                              ; preds = %355
  store i32 0, i32* %29, align 4
  store i8* null, i8** %30, align 8
  store i8* null, i8** %31, align 8
  store i32* null, i32** %32, align 8
  %362 = load i32, i32* %6, align 4
  %363 = load i8*, i8** %8, align 8
  %364 = call i32 @sqlite3changeset_start(i32** %32, i32 %362, i8* %363)
  store i32 %364, i32* %7, align 4
  %365 = load i32, i32* %7, align 4
  %366 = load i32, i32* @SQLITE_OK, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %373

368:                                              ; preds = %361
  %369 = load i32, i32* @stderr, align 4
  %370 = load i32, i32* %7, align 4
  %371 = call i32 (i32, i8*, ...) @fprintf(i32 %369, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %370)
  %372 = call i32 @exit(i32 1) #3
  unreachable

373:                                              ; preds = %361
  %374 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  br label %375

375:                                              ; preds = %534, %373
  %376 = load i32*, i32** %32, align 8
  %377 = call i64 @sqlite3changeset_next(i32* %376)
  %378 = load i64, i64* @SQLITE_ROW, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %535

380:                                              ; preds = %375
  %381 = load i32*, i32** %32, align 8
  %382 = call i32 @sqlite3changeset_op(i32* %381, i8** %36, i32* %35, i32* %33, i32* %34)
  %383 = load i32, i32* %29, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %29, align 4
  %385 = load i8*, i8** %30, align 8
  %386 = icmp eq i8* %385, null
  br i1 %386, label %392, label %387

387:                                              ; preds = %380
  %388 = load i8*, i8** %30, align 8
  %389 = load i8*, i8** %36, align 8
  %390 = call i64 @strcmp(i8* %388, i8* %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %417

392:                                              ; preds = %387, %380
  %393 = load i8*, i8** %30, align 8
  %394 = call i32 @sqlite3_free(i8* %393)
  %395 = load i8*, i8** %31, align 8
  %396 = call i32 @sqlite3_free(i8* %395)
  %397 = load i8*, i8** %36, align 8
  %398 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %397)
  store i8* %398, i8** %30, align 8
  %399 = load i8*, i8** %36, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 0
  %401 = load i8, i8* %400, align 1
  %402 = call i32 @isalnum(i8 signext %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %392
  %405 = load i8*, i8** %36, align 8
  %406 = call i64 @sqlite3_strglob(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8* %405)
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %404, %392
  %409 = load i8*, i8** %36, align 8
  %410 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* %409)
  store i8* %410, i8** %31, align 8
  br label %414

411:                                              ; preds = %404
  %412 = load i8*, i8** %36, align 8
  %413 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %412)
  store i8* %413, i8** %31, align 8
  br label %414

414:                                              ; preds = %411, %408
  %415 = load i8*, i8** %31, align 8
  %416 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i64 0, i64 0), i8* %415)
  br label %417

417:                                              ; preds = %414, %387
  %418 = load i32, i32* %33, align 4
  switch i32 %418, label %534 [
    i32 130, label %419
    i32 128, label %453
    i32 129, label %510
  ]

419:                                              ; preds = %417
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8** %39, align 8
  %420 = load i32*, i32** %32, align 8
  %421 = call i32 @sqlite3changeset_pk(i32* %420, i8** %37, i32 0)
  %422 = load i32, i32* %29, align 4
  %423 = load i8*, i8** %31, align 8
  %424 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), i32 %422, i8* %423)
  store i32 0, i32* %38, align 4
  br label %425

425:                                              ; preds = %448, %419
  %426 = load i32, i32* %38, align 4
  %427 = load i32, i32* %35, align 4
  %428 = icmp slt i32 %426, %427
  br i1 %428, label %429, label %451

429:                                              ; preds = %425
  %430 = load i8*, i8** %37, align 8
  %431 = load i32, i32* %38, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8, i8* %430, i64 %432
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i32
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %429
  br label %448

438:                                              ; preds = %429
  %439 = load i8*, i8** %39, align 8
  %440 = load i32, i32* %38, align 4
  %441 = add nsw i32 %440, 1
  %442 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i8* %439, i32 %441)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8** %39, align 8
  %443 = load i32*, i32** %32, align 8
  %444 = load i32, i32* %38, align 4
  %445 = call i32 @sqlite3changeset_old(i32* %443, i32 %444, i32** %40)
  %446 = load i32*, i32** %40, align 8
  %447 = call i32 @renderValue(i32* %446)
  br label %448

448:                                              ; preds = %438, %437
  %449 = load i32, i32* %38, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %38, align 4
  br label %425

451:                                              ; preds = %425
  %452 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %534

453:                                              ; preds = %417
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8** %43, align 8
  %454 = load i32*, i32** %32, align 8
  %455 = call i32 @sqlite3changeset_pk(i32* %454, i8** %41, i32 0)
  %456 = load i32, i32* %29, align 4
  %457 = load i8*, i8** %31, align 8
  %458 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i32 %456, i8* %457)
  store i32 0, i32* %42, align 4
  br label %459

459:                                              ; preds = %477, %453
  %460 = load i32, i32* %42, align 4
  %461 = load i32, i32* %35, align 4
  %462 = icmp slt i32 %460, %461
  br i1 %462, label %463, label %480

463:                                              ; preds = %459
  store i32* null, i32** %44, align 8
  %464 = load i32*, i32** %32, align 8
  %465 = load i32, i32* %42, align 4
  %466 = call i32 @sqlite3changeset_new(i32* %464, i32 %465, i32** %44)
  %467 = load i32*, i32** %44, align 8
  %468 = icmp ne i32* %467, null
  br i1 %468, label %469, label %476

469:                                              ; preds = %463
  %470 = load i8*, i8** %43, align 8
  %471 = load i32, i32* %42, align 4
  %472 = add nsw i32 %471, 1
  %473 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i8* %470, i32 %472)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8** %43, align 8
  %474 = load i32*, i32** %44, align 8
  %475 = call i32 @renderValue(i32* %474)
  br label %476

476:                                              ; preds = %469, %463
  br label %477

477:                                              ; preds = %476
  %478 = load i32, i32* %42, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %42, align 4
  br label %459

480:                                              ; preds = %459
  %481 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8** %43, align 8
  store i32 0, i32* %42, align 4
  br label %482

482:                                              ; preds = %505, %480
  %483 = load i32, i32* %42, align 4
  %484 = load i32, i32* %35, align 4
  %485 = icmp slt i32 %483, %484
  br i1 %485, label %486, label %508

486:                                              ; preds = %482
  %487 = load i8*, i8** %41, align 8
  %488 = load i32, i32* %42, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* %487, i64 %489
  %491 = load i8, i8* %490, align 1
  %492 = zext i8 %491 to i32
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %495

494:                                              ; preds = %486
  br label %505

495:                                              ; preds = %486
  %496 = load i8*, i8** %43, align 8
  %497 = load i32, i32* %42, align 4
  %498 = add nsw i32 %497, 1
  %499 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i8* %496, i32 %498)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8** %43, align 8
  %500 = load i32*, i32** %32, align 8
  %501 = load i32, i32* %42, align 4
  %502 = call i32 @sqlite3changeset_old(i32* %500, i32 %501, i32** %45)
  %503 = load i32*, i32** %45, align 8
  %504 = call i32 @renderValue(i32* %503)
  br label %505

505:                                              ; preds = %495, %494
  %506 = load i32, i32* %42, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %42, align 4
  br label %482

508:                                              ; preds = %482
  %509 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %534

510:                                              ; preds = %417
  %511 = load i32, i32* %29, align 4
  %512 = load i8*, i8** %31, align 8
  %513 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i32 %511, i8* %512)
  store i32 0, i32* %46, align 4
  br label %514

514:                                              ; preds = %529, %510
  %515 = load i32, i32* %46, align 4
  %516 = load i32, i32* %35, align 4
  %517 = icmp slt i32 %515, %516
  br i1 %517, label %518, label %532

518:                                              ; preds = %514
  %519 = load i32, i32* %46, align 4
  %520 = icmp eq i32 %519, 0
  %521 = zext i1 %520 to i64
  %522 = select i1 %520, i32 40, i32 44
  %523 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 %522)
  %524 = load i32*, i32** %32, align 8
  %525 = load i32, i32* %46, align 4
  %526 = call i32 @sqlite3changeset_new(i32* %524, i32 %525, i32** %47)
  %527 = load i32*, i32** %47, align 8
  %528 = call i32 @renderValue(i32* %527)
  br label %529

529:                                              ; preds = %518
  %530 = load i32, i32* %46, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %46, align 4
  br label %514

532:                                              ; preds = %514
  %533 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0))
  br label %534

534:                                              ; preds = %417, %532, %508, %451
  br label %375

535:                                              ; preds = %375
  %536 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0))
  %537 = load i32*, i32** %32, align 8
  %538 = call i32 @sqlite3changeset_finalize(i32* %537)
  %539 = load i8*, i8** %30, align 8
  %540 = call i32 @sqlite3_free(i8* %539)
  %541 = load i8*, i8** %31, align 8
  %542 = call i32 @sqlite3_free(i8* %541)
  br label %548

543:                                              ; preds = %355
  %544 = load i8**, i8*** %5, align 8
  %545 = getelementptr inbounds i8*, i8** %544, i64 0
  %546 = load i8*, i8** %545, align 8
  %547 = call i32 @usage(i8* %546)
  br label %548

548:                                              ; preds = %543, %535
  br label %549

549:                                              ; preds = %548, %350
  br label %550

550:                                              ; preds = %549, %294
  br label %551

551:                                              ; preds = %550, %190
  br label %552

552:                                              ; preds = %551, %128
  %553 = load i8*, i8** %8, align 8
  %554 = call i32 @sqlite3_free(i8* %553)
  ret i32 0
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @readFile(i8*, i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sqlite3_open(i8*, i32**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite3changeset_apply(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @sqlite3changeset_concat(i32, i8*, i32, i8*, i32*, i8**) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3changeset_start(i32**, i32, i8*) #1

declare dso_local i64 @sqlite3changeset_next(i32*) #1

declare dso_local i32 @sqlite3changeset_op(i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sqlite3changeset_pk(i32*, i8**, i32) #1

declare dso_local i32 @sqlite3changeset_old(i32*, i32, i32**) #1

declare dso_local i32 @renderValue(i32*) #1

declare dso_local i32 @sqlite3changeset_new(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3changeset_finalize(i32*) #1

declare dso_local i32 @sqlite3changeset_invert(i32, i8*, i32*, i8**) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i64 @sqlite3_strglob(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
