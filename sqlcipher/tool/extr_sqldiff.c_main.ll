; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32 }

@stdout = common dso_local global i32* null, align 8
@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SQLITE_CONFIG_SINGLETHREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"changeset\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"missing argument to %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"cannot open: %s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"primarykey\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"rbu\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"summary\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"transaction\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"vtab\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"unknown option: %s\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"unknown argument: %s\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"two database arguments required\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"cannot open database file \22%s\22\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"SELECT * FROM sqlite_master\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"\22%s\22 does not appear to be a valid SQLite database\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"error loading %s: %s\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"ATTACH %Q as aux;\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"cannot attach database \22%s\22\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"SELECT * FROM aux.sqlite_master\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"BEGIN TRANSACTION;\0A\00", align 1
@.str.27 = private unnamed_addr constant [103 x i8] c"CREATE TABLE IF NOT EXISTS rbu_count(tbl TEXT PRIMARY KEY COLLATE NOCASE, cnt INTEGER) WITHOUT ROWID;\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"COMMIT;\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca void (i8*, i32*)*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %13, align 8
  %21 = load i32*, i32** @stdout, align 8
  store i32* %21, i32** %14, align 8
  store void (i8*, i32*)* @diff_one_table, void (i8*, i32*)** %15, align 8
  store i32 0, i32* %16, align 4
  store i8** null, i8*** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %25 = load i32, i32* @SQLITE_CONFIG_SINGLETHREAD, align 4
  %26 = call i32 @sqlite3_config(i32 %25)
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %260, %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %263

31:                                               ; preds = %27
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %20, align 8
  %37 = load i8*, i8** %20, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %42, label %232

42:                                               ; preds = %31
  %43 = load i8*, i8** %20, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %20, align 8
  %45 = load i8*, i8** %20, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i8*, i8** %20, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %20, align 8
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i8*, i8** %20, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %62, %57
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32* @fopen(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %76, i32** %14, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %79, %69
  store void (i8*, i32*)* @changeset_one_table, void (i8*, i32*)** %15, align 8
  store i32 1, i32* %19, align 4
  br label %231

87:                                               ; preds = %53
  %88 = load i8*, i8** %20, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %4, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %96, %91
  %104 = load i8**, i8*** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strtol(i8* %109, i32 0, i32 0)
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 5), align 8
  br label %230

111:                                              ; preds = %87
  %112 = load i8*, i8** %20, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call i32 (...) @showHelp()
  store i32 0, i32* %3, align 4
  br label %394

117:                                              ; preds = %111
  %118 = load i8*, i8** %20, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** %20, align 8
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %161

125:                                              ; preds = %121, %117
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %4, align 4
  %128 = sub nsw i32 %127, 1
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %130, %125
  %138 = load i8**, i8*** %17, align 8
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = mul i64 8, %141
  %143 = trunc i64 %142 to i32
  %144 = call i8** @realloc(i8** %138, i32 %143)
  store i8** %144, i8*** %17, align 8
  %145 = load i8**, i8*** %17, align 8
  %146 = icmp eq i8** %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %137
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %150, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = load i8**, i8*** %17, align 8
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8*, i8** %156, i64 %159
  store i8* %155, i8** %160, align 8
  br label %228

161:                                              ; preds = %121
  %162 = load i8*, i8** %20, align 8
  %163 = call i64 @strcmp(i8* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  br label %227

166:                                              ; preds = %161
  %167 = load i8*, i8** %20, align 8
  %168 = call i64 @strcmp(i8* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store void (i8*, i32*)* @rbudiff_one_table, void (i8*, i32*)** %15, align 8
  br label %226

171:                                              ; preds = %166
  %172 = load i8*, i8** %20, align 8
  %173 = call i64 @strcmp(i8* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 4
  br label %225

176:                                              ; preds = %171
  %177 = load i8*, i8** %20, align 8
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store void (i8*, i32*)* @summarize_one_table, void (i8*, i32*)** %15, align 8
  br label %224

181:                                              ; preds = %176
  %182 = load i8*, i8** %20, align 8
  %183 = call i64 @strcmp(i8* %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %181
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %4, align 4
  %188 = sub nsw i32 %187, 1
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  %191 = load i8**, i8*** %5, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %190, %185
  %198 = load i8**, i8*** %5, align 8
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %198, i64 %201
  %203 = load i8*, i8** %202, align 8
  store i8* %203, i8** %13, align 8
  br label %223

204:                                              ; preds = %181
  %205 = load i8*, i8** %20, align 8
  %206 = call i64 @strcmp(i8* %205, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i32 1, i32* %18, align 4
  br label %222

209:                                              ; preds = %204
  %210 = load i8*, i8** %20, align 8
  %211 = call i64 @strcmp(i8* %210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 3), align 8
  br label %221

214:                                              ; preds = %209
  %215 = load i8**, i8*** %5, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %219)
  br label %221

221:                                              ; preds = %214, %213
  br label %222

222:                                              ; preds = %221, %208
  br label %223

223:                                              ; preds = %222, %197
  br label %224

224:                                              ; preds = %223, %180
  br label %225

225:                                              ; preds = %224, %175
  br label %226

226:                                              ; preds = %225, %170
  br label %227

227:                                              ; preds = %226, %165
  br label %228

228:                                              ; preds = %227, %149
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229, %103
  br label %231

231:                                              ; preds = %230, %86
  br label %259

232:                                              ; preds = %31
  %233 = load i8*, i8** %6, align 8
  %234 = icmp eq i8* %233, null
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load i8**, i8*** %5, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  %240 = load i8*, i8** %239, align 8
  store i8* %240, i8** %6, align 8
  br label %258

241:                                              ; preds = %232
  %242 = load i8*, i8** %7, align 8
  %243 = icmp eq i8* %242, null
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = load i8**, i8*** %5, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  %249 = load i8*, i8** %248, align 8
  store i8* %249, i8** %7, align 8
  br label %257

250:                                              ; preds = %241
  %251 = load i8**, i8*** %5, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %251, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %255)
  br label %257

257:                                              ; preds = %250, %244
  br label %258

258:                                              ; preds = %257, %235
  br label %259

259:                                              ; preds = %258, %231
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %8, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %8, align 4
  br label %27

263:                                              ; preds = %27
  %264 = load i8*, i8** %7, align 8
  %265 = icmp eq i8* %264, null
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %263
  %269 = load i8*, i8** %6, align 8
  %270 = call i32 @sqlite3_open(i8* %269, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 4))
  store i32 %270, i32* %9, align 4
  %271 = load i32, i32* %9, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = load i8*, i8** %6, align 8
  %275 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* %274)
  br label %276

276:                                              ; preds = %273, %268
  %277 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 4), align 4
  %278 = call i32 @sqlite3_exec(i32 %277, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i32 0, i32 0, i8** %10)
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %276
  %282 = load i8*, i8** %10, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %287

284:                                              ; preds = %281, %276
  %285 = load i8*, i8** %6, align 8
  %286 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i64 0, i64 0), i8* %285)
  br label %287

287:                                              ; preds = %284, %281
  %288 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 4), align 4
  %289 = call i32 @sqlite3_enable_load_extension(i32 %288, i32 1)
  store i32 0, i32* %8, align 4
  br label %290

290:                                              ; preds = %316, %287
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* %16, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %319

294:                                              ; preds = %290
  %295 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 4), align 4
  %296 = load i8**, i8*** %17, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8*, i8** %296, i64 %298
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @sqlite3_load_extension(i32 %295, i8* %300, i32 0, i8** %10)
  store i32 %301, i32* %9, align 4
  %302 = load i32, i32* %9, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %307, label %304

304:                                              ; preds = %294
  %305 = load i8*, i8** %10, align 8
  %306 = icmp ne i8* %305, null
  br i1 %306, label %307, label %315

307:                                              ; preds = %304, %294
  %308 = load i8**, i8*** %17, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8*, i8** %308, i64 %310
  %312 = load i8*, i8** %311, align 8
  %313 = load i8*, i8** %10, align 8
  %314 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %312, i8* %313)
  br label %315

315:                                              ; preds = %307, %304
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %8, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %8, align 4
  br label %290

319:                                              ; preds = %290
  %320 = load i8**, i8*** %17, align 8
  %321 = call i32 @free(i8** %320)
  %322 = load i8*, i8** %7, align 8
  %323 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* %322)
  store i8* %323, i8** %11, align 8
  %324 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 4), align 4
  %325 = load i8*, i8** %11, align 8
  %326 = call i32 @sqlite3_exec(i32 %324, i8* %325, i32 0, i32 0, i8** %10)
  store i32 %326, i32* %9, align 4
  %327 = load i32, i32* %9, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %319
  %330 = load i8*, i8** %10, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %332, label %335

332:                                              ; preds = %329, %319
  %333 = load i8*, i8** %7, align 8
  %334 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i8* %333)
  br label %335

335:                                              ; preds = %332, %329
  %336 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 4), align 4
  %337 = call i32 @sqlite3_exec(i32 %336, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i32 0, i32 0, i8** %10)
  store i32 %337, i32* %9, align 4
  %338 = load i32, i32* %9, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %335
  %341 = load i8*, i8** %10, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %340, %335
  %344 = load i8*, i8** %7, align 8
  %345 = call i32 (i8*, ...) @cmdlineError(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i64 0, i64 0), i8* %344)
  br label %346

346:                                              ; preds = %343, %340
  %347 = load i32, i32* %19, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  store i32 0, i32* %18, align 4
  br label %350

350:                                              ; preds = %349, %346
  %351 = load i32, i32* %18, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %350
  %354 = load i32*, i32** %14, align 8
  %355 = call i32 @fprintf(i32* %354, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  br label %356

356:                                              ; preds = %353, %350
  %357 = load void (i8*, i32*)*, void (i8*, i32*)** %15, align 8
  %358 = icmp eq void (i8*, i32*)* %357, @rbudiff_one_table
  br i1 %358, label %359, label %362

359:                                              ; preds = %356
  %360 = load i32*, i32** %14, align 8
  %361 = call i32 @fprintf(i32* %360, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.27, i64 0, i64 0))
  br label %362

362:                                              ; preds = %359, %356
  %363 = load i8*, i8** %13, align 8
  %364 = icmp ne i8* %363, null
  br i1 %364, label %365, label %369

365:                                              ; preds = %362
  %366 = load void (i8*, i32*)*, void (i8*, i32*)** %15, align 8
  %367 = load i8*, i8** %13, align 8
  %368 = load i32*, i32** %14, align 8
  call void %366(i8* %367, i32* %368)
  br label %386

369:                                              ; preds = %362
  %370 = call i32 (...) @all_tables_sql()
  %371 = call i32* @db_prepare(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 %370)
  store i32* %371, i32** %12, align 8
  br label %372

372:                                              ; preds = %377, %369
  %373 = load i64, i64* @SQLITE_ROW, align 8
  %374 = load i32*, i32** %12, align 8
  %375 = call i64 @sqlite3_step(i32* %374)
  %376 = icmp eq i64 %373, %375
  br i1 %376, label %377, label %383

377:                                              ; preds = %372
  %378 = load void (i8*, i32*)*, void (i8*, i32*)** %15, align 8
  %379 = load i32*, i32** %12, align 8
  %380 = call i64 @sqlite3_column_text(i32* %379, i32 0)
  %381 = inttoptr i64 %380 to i8*
  %382 = load i32*, i32** %14, align 8
  call void %378(i8* %381, i32* %382)
  br label %372

383:                                              ; preds = %372
  %384 = load i32*, i32** %12, align 8
  %385 = call i32 @sqlite3_finalize(i32* %384)
  br label %386

386:                                              ; preds = %383, %365
  %387 = load i32, i32* %18, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %386
  %390 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  br label %391

391:                                              ; preds = %389, %386
  %392 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 4), align 4
  %393 = call i32 @sqlite3_close(i32 %392)
  store i32 0, i32* %3, align 4
  br label %394

394:                                              ; preds = %391, %115
  %395 = load i32, i32* %3, align 4
  ret i32 %395
}

declare dso_local void @diff_one_table(i8*, i32*) #1

declare dso_local i32 @sqlite3_config(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @cmdlineError(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local void @changeset_one_table(i8*, i32*) #1

declare dso_local i32 @strtol(i8*, i32, i32) #1

declare dso_local i32 @showHelp(...) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local void @rbudiff_one_table(i8*, i32*) #1

declare dso_local void @summarize_one_table(i8*, i32*) #1

declare dso_local i32 @sqlite3_open(i8*, i32*) #1

declare dso_local i32 @sqlite3_exec(i32, i8*, i32, i32, i8**) #1

declare dso_local i32 @sqlite3_enable_load_extension(i32, i32) #1

declare dso_local i32 @sqlite3_load_extension(i32, i8*, i32, i8**) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32* @db_prepare(i8*, i32) #1

declare dso_local i32 @all_tables_sql(...) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sqlite3_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
