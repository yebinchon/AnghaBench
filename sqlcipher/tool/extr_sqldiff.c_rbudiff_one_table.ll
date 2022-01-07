; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_rbudiff_one_table.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_rbudiff_one_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32 }

@g = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"table %s has no usable PK columns\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"CREATE TABLE IF NOT EXISTS 'data_%q'(\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"rbu_rowid, \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c", rbu_control);\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"INSERT INTO 'data_%q' (\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c", rbu_control) VALUES(\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@SQLITE_INTEGER = common dso_local global i64 0, align 8
@SQLITE_BLOB = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"x'\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"INSERT INTO rbu_count VALUES('data_%q', %d);\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @rbudiff_one_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbudiff_one_table(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_7__, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %26 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 24, i1 false)
  %27 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  %28 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 24, i1 false)
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 0), align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @checkSchemasMatch(i8* %29)
  %31 = load i8*, i8** %3, align 8
  %32 = call i8** @columnNames(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %31, i32* %6, i32* %5)
  store i8** %32, i8*** %7, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = icmp eq i8** %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @runtimeError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %2
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %47, %38
  %40 = load i8**, i8*** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %39

50:                                               ; preds = %39
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (%struct.TYPE_7__*, i8*, ...) @strPrintf(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 (%struct.TYPE_7__*, i8*, ...) @strPrintf(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i8**, i8*** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = call i32 @strPrintfArray(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %61, i32 -1)
  %63 = call i32 (%struct.TYPE_7__*, i8*, ...) @strPrintf(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i8*, i8** %3, align 8
  %65 = load i8**, i8*** %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @getRbudiffQuery(i8* %64, i8** %65, i32 %66, i32 %67, %struct.TYPE_7__* %11)
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 (%struct.TYPE_7__*, i8*, ...) @strPrintf(%struct.TYPE_7__* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = call i32 (%struct.TYPE_7__*, i8*, ...) @strPrintf(%struct.TYPE_7__* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %57
  %76 = load i8**, i8*** %7, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = call i32 @strPrintfArray(%struct.TYPE_7__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %79, i32 -1)
  %81 = call i32 (%struct.TYPE_7__*, i8*, ...) @strPrintf(%struct.TYPE_7__* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32* @db_prepare(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %83)
  store i32* %84, i32** %13, align 8
  br label %85

85:                                               ; preds = %253, %75
  %86 = load i32*, i32** %13, align 8
  %87 = call i64 @sqlite3_step(i32* %86)
  %88 = load i64, i64* @SQLITE_ROW, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %256

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %97)
  %99 = call i32 @strFree(%struct.TYPE_7__* %10)
  br label %100

100:                                              ; preds = %94, %90
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @sqlite3_column_type(i32* %107, i32 %108)
  %110 = load i64, i64* @SQLITE_INTEGER, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %100
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %129, %112
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %113
  %118 = load i32, i32* %8, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 (i32*, i8*, ...) @fprintf(i32* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32*, i32** %4, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @sqlite3_column_value(i32* %125, i32 %126)
  %128 = call i32 @printQuoted(i32* %124, i32 %127)
  br label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %113

132:                                              ; preds = %113
  br label %253

133:                                              ; preds = %100
  %134 = load i32*, i32** %13, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @sqlite3_column_bytes(i32* %134, i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  %139 = call i8* @sqlite3_malloc(i32 %138)
  store i8* %139, i8** %15, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @sqlite3_column_text(i32* %141, i32 %142)
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  %146 = call i32 @memcpy(i8* %140, i32 %143, i32 %145)
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %244, %133
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %247

151:                                              ; preds = %147
  store i32 0, i32* %17, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %232

155:                                              ; preds = %151
  %156 = load i32*, i32** %13, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i64 @sqlite3_column_type(i32* %156, i32 %157)
  %159 = load i64, i64* @SQLITE_BLOB, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %232

161:                                              ; preds = %155
  %162 = load i32*, i32** %13, align 8
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %164, %165
  %167 = call i64 @sqlite3_column_type(i32* %162, i32 %166)
  %168 = load i64, i64* @SQLITE_BLOB, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %232

170:                                              ; preds = %161
  %171 = load i32*, i32** %13, align 8
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %173, %174
  %176 = call i8* @sqlite3_column_blob(i32* %171, i32 %175)
  store i8* %176, i8** %18, align 8
  %177 = load i32*, i32** %13, align 8
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %179, %180
  %182 = call i32 @sqlite3_column_bytes(i32* %177, i32 %181)
  store i32 %182, i32* %19, align 4
  %183 = load i32*, i32** %13, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i8* @sqlite3_column_blob(i32* %183, i32 %184)
  store i8* %185, i8** %20, align 8
  %186 = load i32*, i32** %13, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @sqlite3_column_bytes(i32* %186, i32 %187)
  store i32 %188, i32* %21, align 4
  %189 = load i32, i32* %21, align 4
  %190 = add nsw i32 %189, 60
  %191 = call i8* @sqlite3_malloc(i32 %190)
  store i8* %191, i8** %22, align 8
  %192 = load i8*, i8** %18, align 8
  %193 = load i32, i32* %19, align 4
  %194 = load i8*, i8** %20, align 8
  %195 = load i32, i32* %21, align 4
  %196 = load i8*, i8** %22, align 8
  %197 = call i32 @rbuDeltaCreate(i8* %192, i32 %193, i8* %194, i32 %195, i8* %196)
  store i32 %197, i32* %23, align 4
  %198 = load i32, i32* %23, align 4
  %199 = load i32, i32* %21, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %229

201:                                              ; preds = %170
  %202 = load i32*, i32** %4, align 8
  %203 = call i32 (i32*, i8*, ...) @fprintf(i32* %202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %24, align 4
  br label %204

204:                                              ; preds = %217, %201
  %205 = load i32, i32* %24, align 4
  %206 = load i32, i32* %23, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %220

208:                                              ; preds = %204
  %209 = load i32*, i32** %4, align 8
  %210 = load i8*, i8** %22, align 8
  %211 = load i32, i32* %24, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = call i32 (i32*, i8*, ...) @fprintf(i32* %209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %208
  %218 = load i32, i32* %24, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %24, align 4
  br label %204

220:                                              ; preds = %204
  %221 = load i32*, i32** %4, align 8
  %222 = call i32 (i32*, i8*, ...) @fprintf(i32* %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %223 = load i8*, i8** %15, align 8
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* %5, align 4
  %226 = sub nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %223, i64 %227
  store i8 102, i8* %228, align 1
  store i32 1, i32* %17, align 4
  br label %229

229:                                              ; preds = %220, %170
  %230 = load i8*, i8** %22, align 8
  %231 = call i32 @sqlite3_free(i8* %230)
  br label %232

232:                                              ; preds = %229, %161, %155, %151
  %233 = load i32, i32* %17, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load i32*, i32** %4, align 8
  %237 = load i32*, i32** %13, align 8
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @sqlite3_column_value(i32* %237, i32 %238)
  %240 = call i32 @printQuoted(i32* %236, i32 %239)
  br label %241

241:                                              ; preds = %235, %232
  %242 = load i32*, i32** %4, align 8
  %243 = call i32 (i32*, i8*, ...) @fprintf(i32* %242, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %244

244:                                              ; preds = %241
  %245 = load i32, i32* %8, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %8, align 4
  br label %147

247:                                              ; preds = %147
  %248 = load i32*, i32** %4, align 8
  %249 = load i8*, i8** %15, align 8
  %250 = call i32 (i32*, i8*, ...) @fprintf(i32* %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %249)
  %251 = load i8*, i8** %15, align 8
  %252 = call i32 @sqlite3_free(i8* %251)
  br label %253

253:                                              ; preds = %247, %132
  %254 = load i32*, i32** %4, align 8
  %255 = call i32 (i32*, i8*, ...) @fprintf(i32* %254, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %85

256:                                              ; preds = %85
  %257 = load i32*, i32** %13, align 8
  %258 = call i32 @sqlite3_finalize(i32* %257)
  %259 = load i32, i32* %14, align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %271

261:                                              ; preds = %256
  %262 = bitcast %struct.TYPE_7__* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %262, i8 0, i64 24, i1 false)
  %263 = load i8*, i8** %3, align 8
  %264 = load i32, i32* %14, align 4
  %265 = call i32 (%struct.TYPE_7__*, i8*, ...) @strPrintf(%struct.TYPE_7__* %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i8* %263, i32 %264)
  %266 = load i32*, i32** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 (i32*, i8*, ...) @fprintf(i32* %266, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %268)
  %270 = call i32 @strFree(%struct.TYPE_7__* %25)
  br label %271

271:                                              ; preds = %261, %256
  %272 = call i32 @strFree(%struct.TYPE_7__* %10)
  %273 = call i32 @strFree(%struct.TYPE_7__* %11)
  %274 = call i32 @strFree(%struct.TYPE_7__* %12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @checkSchemasMatch(i8*) #2

declare dso_local i8** @columnNames(i8*, i8*, i32*, i32*) #2

declare dso_local i32 @runtimeError(i8*, i8*) #2

declare dso_local i32 @strPrintf(%struct.TYPE_7__*, i8*, ...) #2

declare dso_local i32 @strPrintfArray(%struct.TYPE_7__*, i8*, i8*, i8**, i32) #2

declare dso_local i32 @getRbudiffQuery(i8*, i8**, i32, i32, %struct.TYPE_7__*) #2

declare dso_local i32* @db_prepare(i8*, i8*) #2

declare dso_local i64 @sqlite3_step(i32*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @strFree(%struct.TYPE_7__*) #2

declare dso_local i64 @sqlite3_column_type(i32*, i32) #2

declare dso_local i32 @printQuoted(i32*, i32) #2

declare dso_local i32 @sqlite3_column_value(i32*, i32) #2

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #2

declare dso_local i8* @sqlite3_malloc(i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @sqlite3_column_text(i32*, i32) #2

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #2

declare dso_local i32 @rbuDeltaCreate(i8*, i32, i8*, i32, i8*) #2

declare dso_local i32 @sqlite3_free(i8*) #2

declare dso_local i32 @sqlite3_finalize(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
