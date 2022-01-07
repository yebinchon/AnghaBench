; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_index_usage.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_index_usage.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"The --progress option requires an argument\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"using\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"The --using option requires an argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Unknown command-line option: \22%s\22\0A\00", align 1
@SQLITE_OPEN_READONLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Cannot open \22%s\22 for reading: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"SELECT * FROM sqlite_master\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Cannot read the schema from \22%s\22 - %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [125 x i8] c"CREATE TABLE temp.idxu(\0A  tbl TEXT COLLATE nocase,\0A  idx TEXT COLLATE nocase,\0A  cnt INT,\0A  PRIMARY KEY(idx)\0A) WITHOUT ROWID;\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Cannot create the result table - %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [118 x i8] c"INSERT INTO temp.idxu(tbl,idx,cnt) SELECT tbl_name, name, 0 FROM sqlite_master WHERE type='index' AND sql IS NOT NULL\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"ATTACH %Q AS log\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Cannot open the LOG database \22%s\22 - %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [104 x i8] c"SELECT sql, rowid FROM log.sqllog WHERE upper(substr(sql,1,5)) NOT IN ('BEGIN','COMMI','ROLLB','PRAGM')\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"Cannot read the SQLLOG table in the LOG database \22%s\22 - %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"UPDATE temp.idxu SET cnt=cnt+1 WHERE idx=?1\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"Cannot prepare a statement to increment a counter for indexes used\0A\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [22 x i8] c"EXPLAIN QUERY PLAN %s\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"Cannot compile LOG entry %d (%s): %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"%d...\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c" USING INDEX \00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"Using %s:\0A%s\0A\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [240 x i8] c"SELECT tbl, idx, cnt,    (SELECT group_concat(name,',') FROM pragma_index_info(idx)) FROM temp.idxu, main.sqlite_master WHERE temp.idxu.tbl=main.sqlite_master.tbl_name   AND temp.idxu.idx=main.sqlite_master.name ORDER BY cnt DESC, tbl, idx\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Cannot query the result table - %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"%10d %s on %s(%s)\0A\00", align 1

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
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %14, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %25

25:                                               ; preds = %133, %2
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %136

29:                                               ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %18, align 8
  %35 = load i8*, i8** %18, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %116

40:                                               ; preds = %29
  %41 = load i8*, i8** %18, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %18, align 8
  %43 = load i8*, i8** %18, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 45
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i8*, i8** %18, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %18, align 8
  br label %51

51:                                               ; preds = %48, %40
  %52 = load i8*, i8** %18, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strtol(i8* %66, i32 0, i32 0)
  store i32 %67, i32* %17, align 4
  br label %133

68:                                               ; preds = %55
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 @exit(i32 0) #3
  unreachable

71:                                               ; preds = %51
  %72 = load i8*, i8** %18, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %11, align 4
  br label %133

76:                                               ; preds = %71
  %77 = load i8*, i8** %18, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %14, align 8
  br label %133

92:                                               ; preds = %80
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %94 = call i32 @exit(i32 0) #3
  unreachable

95:                                               ; preds = %76
  %96 = load i8*, i8** %18, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i8*, i8** %18, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99, %95
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @usage(i8* %106)
  br label %108

108:                                              ; preds = %103, %99
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %113)
  %115 = call i32 @exit(i32 0) #3
  unreachable

116:                                              ; preds = %29
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8*, i8** %126, i64 %129
  store i8* %125, i8** %130, align 8
  br label %131

131:                                              ; preds = %120, %116
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132, %85, %75, %60
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %25

136:                                              ; preds = %25
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 3
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @usage(i8* %143)
  br label %145

145:                                              ; preds = %140, %136
  %146 = load i8**, i8*** %5, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 1
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* @SQLITE_OPEN_READONLY, align 4
  %150 = call i32 @sqlite3_open_v2(i8* %148, i32** %6, i32 %149, i32 0)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %145
  %154 = load i8**, i8*** %5, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 1
  %156 = load i8*, i8** %155, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = call i8* @sqlite3_errmsg(i32* %157)
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %156, i8* %158)
  br label %377

160:                                              ; preds = %145
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 @sqlite3_prepare_v2(i32* %161, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 -1, i32** %7, i32 0)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load i8**, i8*** %5, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 1
  %168 = load i8*, i8** %167, align 8
  %169 = load i32*, i32** %6, align 8
  %170 = call i8* @sqlite3_errmsg(i32* %169)
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* %168, i8* %170)
  br label %377

172:                                              ; preds = %160
  %173 = load i32*, i32** %7, align 8
  %174 = call i32 @sqlite3_finalize(i32* %173)
  store i32* null, i32** %7, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 @sqlite3_exec(i32* %175, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 0, i32 0)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i32*, i32** %6, align 8
  %181 = call i8* @sqlite3_errmsg(i32* %180)
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i8* %181)
  br label %377

183:                                              ; preds = %172
  %184 = load i32*, i32** %6, align 8
  %185 = call i32 @sqlite3_exec(i32* %184, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.13, i64 0, i64 0), i32 0, i32 0, i32 0)
  store i32 %185, i32* %10, align 4
  %186 = load i8**, i8*** %5, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 2
  %188 = load i8*, i8** %187, align 8
  %189 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %188)
  store i8* %189, i8** %8, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = load i8*, i8** %8, align 8
  %192 = call i32 @sqlite3_exec(i32* %190, i8* %191, i32 0, i32 0, i32 0)
  store i32 %192, i32* %10, align 4
  %193 = load i8*, i8** %8, align 8
  %194 = call i32 @sqlite3_free(i8* %193)
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %183
  %198 = load i8**, i8*** %5, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 2
  %200 = load i8*, i8** %199, align 8
  %201 = load i32*, i32** %6, align 8
  %202 = call i8* @sqlite3_errmsg(i32* %201)
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i8* %200, i8* %202)
  br label %377

204:                                              ; preds = %183
  %205 = load i32*, i32** %6, align 8
  %206 = call i32 @sqlite3_prepare_v2(i32* %205, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.16, i64 0, i64 0), i32 -1, i32** %7, i32 0)
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %10, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %204
  %210 = load i8**, i8*** %5, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 2
  %212 = load i8*, i8** %211, align 8
  %213 = load i32*, i32** %6, align 8
  %214 = call i8* @sqlite3_errmsg(i32* %213)
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i64 0, i64 0), i8* %212, i8* %214)
  br label %377

216:                                              ; preds = %204
  %217 = load i32*, i32** %6, align 8
  %218 = call i32 @sqlite3_prepare_v2(i32* %217, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 -1, i32** %15, i32 0)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i64 0, i64 0))
  br label %377

223:                                              ; preds = %216
  br label %224

224:                                              ; preds = %344, %234, %223
  %225 = load i32*, i32** %7, align 8
  %226 = call i64 @sqlite3_step(i32* %225)
  %227 = load i64, i64* @SQLITE_ROW, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %347

229:                                              ; preds = %224
  %230 = load i32*, i32** %7, align 8
  %231 = call i8* @sqlite3_column_text(i32* %230, i32 0)
  store i8* %231, i8** %19, align 8
  %232 = load i8*, i8** %19, align 8
  %233 = icmp eq i8* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %224

235:                                              ; preds = %229
  %236 = load i8*, i8** %19, align 8
  %237 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* %236)
  store i8* %237, i8** %8, align 8
  %238 = load i32*, i32** %6, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = call i32 @sqlite3_prepare_v2(i32* %238, i8* %239, i32 -1, i32** %20, i32 0)
  store i32 %240, i32* %10, align 4
  %241 = load i8*, i8** %8, align 8
  %242 = call i32 @sqlite3_free(i8* %241)
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %260

245:                                              ; preds = %235
  %246 = load i32, i32* %11, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %257, label %248

248:                                              ; preds = %245
  %249 = load i32*, i32** %7, align 8
  %250 = call i32 @sqlite3_column_int(i32* %249, i32 1)
  %251 = load i8*, i8** %19, align 8
  %252 = load i32*, i32** %6, align 8
  %253 = call i8* @sqlite3_errmsg(i32* %252)
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i32 %250, i8* %251, i8* %253)
  %255 = load i32, i32* @stdout, align 4
  %256 = call i32 @fflush(i32 %255)
  br label %257

257:                                              ; preds = %248, %245
  %258 = load i32, i32* %9, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %9, align 4
  br label %344

260:                                              ; preds = %235
  %261 = load i32, i32* %16, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %16, align 4
  %263 = load i32, i32* %17, align 4
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %260
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* %17, align 4
  %268 = srem i32 %266, %267
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load i32, i32* %16, align 4
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* @stdout, align 4
  %274 = call i32 @fflush(i32 %273)
  br label %275

275:                                              ; preds = %270, %265, %260
  br label %276

276:                                              ; preds = %333, %288, %275
  %277 = load i32*, i32** %20, align 8
  %278 = call i64 @sqlite3_step(i32* %277)
  %279 = load i64, i64* @SQLITE_ROW, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %343

281:                                              ; preds = %276
  %282 = load i32*, i32** %20, align 8
  %283 = call i8* @sqlite3_column_text(i32* %282, i32 3)
  store i8* %283, i8** %21, align 8
  %284 = load i8*, i8** %21, align 8
  %285 = call i8* @strstr(i8* %284, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  store i8* %285, i8** %22, align 8
  %286 = load i8*, i8** %22, align 8
  %287 = icmp eq i8* %286, null
  br i1 %287, label %288, label %289

288:                                              ; preds = %281
  br label %276

289:                                              ; preds = %281
  %290 = load i8*, i8** %22, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 13
  store i8* %291, i8** %22, align 8
  %292 = load i8*, i8** %22, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 1
  store i8* %293, i8** %23, align 8
  br label %294

294:                                              ; preds = %309, %289
  %295 = load i8*, i8** %23, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 0
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %294
  %301 = load i8*, i8** %23, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 1
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp ne i32 %304, 40
  br label %306

306:                                              ; preds = %300, %294
  %307 = phi i1 [ false, %294 ], [ %305, %300 ]
  br i1 %307, label %308, label %312

308:                                              ; preds = %306
  br label %309

309:                                              ; preds = %308
  %310 = load i8*, i8** %23, align 8
  %311 = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %311, i8** %23, align 8
  br label %294

312:                                              ; preds = %306
  %313 = load i8*, i8** %23, align 8
  %314 = load i8*, i8** %22, align 8
  %315 = ptrtoint i8* %313 to i64
  %316 = ptrtoint i8* %314 to i64
  %317 = sub i64 %315, %316
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %24, align 4
  %319 = load i8*, i8** %14, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %333

321:                                              ; preds = %312
  %322 = load i8*, i8** %14, align 8
  %323 = load i8*, i8** %22, align 8
  %324 = load i32, i32* %24, align 4
  %325 = call i64 @sqlite3_strnicmp(i8* %322, i8* %323, i32 %324)
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %321
  %328 = load i8*, i8** %14, align 8
  %329 = load i8*, i8** %19, align 8
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* %328, i8* %329)
  %331 = load i32, i32* @stdout, align 4
  %332 = call i32 @fflush(i32 %331)
  br label %333

333:                                              ; preds = %327, %321, %312
  %334 = load i32*, i32** %15, align 8
  %335 = load i8*, i8** %22, align 8
  %336 = load i32, i32* %24, align 4
  %337 = load i32, i32* @SQLITE_STATIC, align 4
  %338 = call i32 @sqlite3_bind_text(i32* %334, i32 1, i8* %335, i32 %336, i32 %337)
  %339 = load i32*, i32** %15, align 8
  %340 = call i64 @sqlite3_step(i32* %339)
  %341 = load i32*, i32** %15, align 8
  %342 = call i32 @sqlite3_reset(i32* %341)
  br label %276

343:                                              ; preds = %276
  br label %344

344:                                              ; preds = %343, %257
  %345 = load i32*, i32** %20, align 8
  %346 = call i32 @sqlite3_finalize(i32* %345)
  br label %224

347:                                              ; preds = %224
  %348 = load i32*, i32** %7, align 8
  %349 = call i32 @sqlite3_finalize(i32* %348)
  %350 = load i32*, i32** %6, align 8
  %351 = call i32 @sqlite3_prepare_v2(i32* %350, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.25, i64 0, i64 0), i32 -1, i32** %7, i32 0)
  store i32 %351, i32* %10, align 4
  %352 = load i32, i32* %10, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %347
  %355 = load i32*, i32** %6, align 8
  %356 = call i8* @sqlite3_errmsg(i32* %355)
  %357 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8* %356)
  br label %377

358:                                              ; preds = %347
  br label %359

359:                                              ; preds = %364, %358
  %360 = load i32*, i32** %7, align 8
  %361 = call i64 @sqlite3_step(i32* %360)
  %362 = load i64, i64* @SQLITE_ROW, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %374

364:                                              ; preds = %359
  %365 = load i32*, i32** %7, align 8
  %366 = call i32 @sqlite3_column_int(i32* %365, i32 2)
  %367 = load i32*, i32** %7, align 8
  %368 = call i8* @sqlite3_column_text(i32* %367, i32 1)
  %369 = load i32*, i32** %7, align 8
  %370 = call i8* @sqlite3_column_text(i32* %369, i32 0)
  %371 = load i32*, i32** %7, align 8
  %372 = call i8* @sqlite3_column_text(i32* %371, i32 3)
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i32 %366, i8* %368, i8* %370, i8* %372)
  br label %359

374:                                              ; preds = %359
  %375 = load i32*, i32** %7, align 8
  %376 = call i32 @sqlite3_finalize(i32* %375)
  store i32* null, i32** %7, align 8
  br label %377

377:                                              ; preds = %374, %354, %221, %209, %197, %179, %165, %153
  %378 = load i32*, i32** %15, align 8
  %379 = call i32 @sqlite3_finalize(i32* %378)
  %380 = load i32*, i32** %7, align 8
  %381 = call i32 @sqlite3_finalize(i32* %380)
  %382 = load i32*, i32** %6, align 8
  %383 = call i32 @sqlite3_close(i32* %382)
  %384 = load i32, i32* %9, align 4
  ret i32 %384
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @sqlite3_open_v2(i8*, i32**, i32, i32) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
