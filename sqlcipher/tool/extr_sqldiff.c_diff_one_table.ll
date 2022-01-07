; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_diff_one_table.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_diff_one_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i8* }

@g = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@DEBUG_COLUMN_NAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Rowid not accessible for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"DROP TABLE %s;\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"DROP TABLE %s; -- due to schema mismatch\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"ALTER TABLE %s ADD COLUMN %s;\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"SELECT \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%sB.%s\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c", 1%s -- changed row\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"       A.%s IS NOT B.%s, B.%s%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"       B.%s IS NOT NULL, B.%s%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"  FROM main.%s A, aux.%s B\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c" WHERE\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"%s A.%s=B.%s\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c" AND\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"\0A   AND (\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"%sA.%s IS NOT B.%s%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"        OR \00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"%sB.%s IS NOT NULL%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c" UNION ALL\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"%sA.%s\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c", 2%s -- deleted row\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"       NULL, NULL%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"  FROM main.%s A\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c" WHERE NOT EXISTS(SELECT 1 FROM aux.%s B\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"                   WHERE\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c" UNION ALL\0ASELECT \00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c", 3%s -- inserted row\0A\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"       1, B.%s%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"  FROM aux.%s B\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c" WHERE NOT EXISTS(SELECT 1 FROM main.%s A\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c")\0A ORDER BY\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@DEBUG_DIFF_SQL = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [16 x i8] c"SQL for %s:\0A%s\0A\00", align 1
@.str.45 = private unnamed_addr constant [241 x i8] c"SELECT name FROM main.sqlite_master WHERE type='index' AND tbl_name=%Q   AND sql IS NOT NULL   AND sql NOT IN (SELECT sql FROM aux.sqlite_master                    WHERE type='index' AND tbl_name=%Q                      AND sql IS NOT NULL)\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.46 = private unnamed_addr constant [16 x i8] c"DROP INDEX %s;\0A\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"UPDATE %s\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c" SET\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"%s %s=\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"DELETE FROM %s\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"INSERT INTO %s(%s\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c") VALUES\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.57 = private unnamed_addr constant [240 x i8] c"SELECT sql FROM aux.sqlite_master WHERE type='index' AND tbl_name=%Q   AND sql IS NOT NULL   AND sql NOT IN (SELECT sql FROM main.sqlite_master                    WHERE type='index' AND tbl_name=%Q                      AND sql IS NOT NULL)\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @diff_one_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_one_table(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @safeId(i8* %19)
  store i8* %20, i8** %5, align 8
  store i8** null, i8*** %6, align 8
  store i8** null, i8*** %7, align 8
  store i32 0, i32* %10, align 4
  %21 = call i32 @strInit(%struct.TYPE_6__* %15)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g, i32 0, i32 0), align 4
  %23 = load i32, i32* @DEBUG_COLUMN_NAMES, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %2
  %26 = load i8*, i8** %3, align 8
  %27 = call i8** @columnNames(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %26, i32* %8, i32 0)
  store i8** %27, i8*** %6, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = icmp eq i8** %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %62

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %57, %33
  %37 = load i8**, i8*** %6, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %36
  %44 = load i8**, i8*** %6, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %43
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %36

60:                                               ; preds = %36
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %30
  br label %725

63:                                               ; preds = %2
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g, i32 0, i32 2), align 4
  %65 = load i8*, i8** %3, align 8
  %66 = call i64 @sqlite3_table_column_metadata(i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %65, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g, i32 0, i32 2), align 4
  %70 = load i8*, i8** %3, align 8
  %71 = call i64 @sqlite3_table_column_metadata(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %70, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %4, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %73, %68
  br label %725

78:                                               ; preds = %63
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g, i32 0, i32 2), align 4
  %80 = load i8*, i8** %3, align 8
  %81 = call i64 @sqlite3_table_column_metadata(i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %80, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i8*, i8** %3, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @dump_table(i8* %84, i32* %85)
  br label %725

87:                                               ; preds = %78
  %88 = load i8*, i8** %3, align 8
  %89 = call i8** @columnNames(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %88, i32* %8, i32 0)
  store i8** %89, i8*** %6, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = call i8** @columnNames(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %90, i32* %9, i32 0)
  store i8** %91, i8*** %7, align 8
  %92 = load i8**, i8*** %6, align 8
  %93 = icmp ne i8** %92, null
  br i1 %93, label %94, label %133

94:                                               ; preds = %87
  %95 = load i8**, i8*** %7, align 8
  %96 = icmp ne i8** %95, null
  br i1 %96, label %97, label %133

97:                                               ; preds = %94
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %129, %97
  %99 = load i8**, i8*** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load i8**, i8*** %7, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br label %112

112:                                              ; preds = %105, %98
  %113 = phi i1 [ false, %98 ], [ %111, %105 ]
  br i1 %113, label %114, label %132

114:                                              ; preds = %112
  %115 = load i8**, i8*** %6, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load i8**, i8*** %7, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @sqlite3_stricmp(i8* %119, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  br label %132

128:                                              ; preds = %114
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %98

132:                                              ; preds = %127, %112
  br label %133

133:                                              ; preds = %132, %94, %87
  %134 = load i8**, i8*** %6, align 8
  %135 = icmp eq i8** %134, null
  br i1 %135, label %150, label %136

136:                                              ; preds = %133
  %137 = load i8**, i8*** %7, align 8
  %138 = icmp eq i8** %137, null
  br i1 %138, label %150, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %150, label %143

143:                                              ; preds = %139
  %144 = load i8**, i8*** %6, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %143, %139, %136, %133
  %151 = load i32*, i32** %4, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 (i32*, i8*, ...) @fprintf(i32* %151, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* %152)
  %154 = load i8*, i8** %3, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @dump_table(i8* %154, i32* %155)
  br label %725

157:                                              ; preds = %143
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %176, %157
  %160 = load i8**, i8*** %7, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %179

166:                                              ; preds = %159
  %167 = load i32*, i32** %4, align 8
  %168 = load i8*, i8** %5, align 8
  %169 = load i8**, i8*** %7, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i8* @safeId(i8* %173)
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %168, i8* %174)
  br label %176

176:                                              ; preds = %166
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %159

179:                                              ; preds = %159
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %9, align 4
  %184 = sub nsw i32 %182, %183
  %185 = mul nsw i32 2, %184
  %186 = add nsw i32 %181, %185
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %364

190:                                              ; preds = %179
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %191

191:                                              ; preds = %203, %190
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %191
  %196 = load i8*, i8** %14, align 8
  %197 = load i8**, i8*** %6, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %196, i8* %201)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %14, align 8
  br label %203

203:                                              ; preds = %195
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %191

206:                                              ; preds = %191
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)
  %212 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %211)
  br label %213

213:                                              ; preds = %220, %206
  %214 = load i8**, i8*** %6, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %248

220:                                              ; preds = %213
  %221 = load i8**, i8*** %6, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = load i8**, i8*** %7, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = load i8**, i8*** %7, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  %235 = load i8*, i8** %234, align 8
  %236 = load i8**, i8*** %7, align 8
  %237 = load i32, i32* %13, align 4
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8*, i8** %236, i64 %239
  %241 = load i8*, i8** %240, align 8
  %242 = icmp eq i8* %241, null
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)
  %245 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* %225, i8* %230, i8* %235, i8* %244)
  %246 = load i32, i32* %13, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %13, align 4
  br label %213

248:                                              ; preds = %213
  br label %249

249:                                              ; preds = %256, %248
  %250 = load i8**, i8*** %7, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %250, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %279

256:                                              ; preds = %249
  %257 = load i8**, i8*** %7, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %257, i64 %259
  %261 = load i8*, i8** %260, align 8
  %262 = load i8**, i8*** %7, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %262, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = load i8**, i8*** %7, align 8
  %268 = load i32, i32* %13, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %267, i64 %270
  %272 = load i8*, i8** %271, align 8
  %273 = icmp eq i8* %272, null
  %274 = zext i1 %273 to i64
  %275 = select i1 %273, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)
  %276 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8* %261, i8* %266, i8* %275)
  %277 = load i32, i32* %13, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %13, align 4
  br label %249

279:                                              ; preds = %249
  %280 = load i8*, i8** %5, align 8
  %281 = load i8*, i8** %5, align 8
  %282 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* %280, i8* %281)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %283

283:                                              ; preds = %300, %279
  %284 = load i32, i32* %13, align 4
  %285 = load i32, i32* %8, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %303

287:                                              ; preds = %283
  %288 = load i8*, i8** %14, align 8
  %289 = load i8**, i8*** %6, align 8
  %290 = load i32, i32* %13, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8*, i8** %289, i64 %291
  %293 = load i8*, i8** %292, align 8
  %294 = load i8**, i8*** %6, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %294, i64 %296
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %288, i8* %293, i8* %298)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8** %14, align 8
  br label %300

300:                                              ; preds = %287
  %301 = load i32, i32* %13, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %13, align 4
  br label %283

303:                                              ; preds = %283
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8** %14, align 8
  br label %304

304:                                              ; preds = %311, %303
  %305 = load i8**, i8*** %6, align 8
  %306 = load i32, i32* %13, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8*, i8** %305, i64 %307
  %309 = load i8*, i8** %308, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %335

311:                                              ; preds = %304
  %312 = load i8*, i8** %14, align 8
  %313 = load i8**, i8*** %6, align 8
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8*, i8** %313, i64 %315
  %317 = load i8*, i8** %316, align 8
  %318 = load i8**, i8*** %7, align 8
  %319 = load i32, i32* %13, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8*, i8** %318, i64 %320
  %322 = load i8*, i8** %321, align 8
  %323 = load i8**, i8*** %7, align 8
  %324 = load i32, i32* %13, align 4
  %325 = add nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8*, i8** %323, i64 %326
  %328 = load i8*, i8** %327, align 8
  %329 = icmp eq i8* %328, null
  %330 = zext i1 %329 to i64
  %331 = select i1 %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %332 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8* %312, i8* %317, i8* %322, i8* %331)
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8** %14, align 8
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %13, align 4
  br label %304

335:                                              ; preds = %304
  br label %336

336:                                              ; preds = %343, %335
  %337 = load i8**, i8*** %7, align 8
  %338 = load i32, i32* %13, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8*, i8** %337, i64 %339
  %341 = load i8*, i8** %340, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %362

343:                                              ; preds = %336
  %344 = load i8*, i8** %14, align 8
  %345 = load i8**, i8*** %7, align 8
  %346 = load i32, i32* %13, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8*, i8** %345, i64 %347
  %349 = load i8*, i8** %348, align 8
  %350 = load i8**, i8*** %7, align 8
  %351 = load i32, i32* %13, align 4
  %352 = add nsw i32 %351, 1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8*, i8** %350, i64 %353
  %355 = load i8*, i8** %354, align 8
  %356 = icmp eq i8* %355, null
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %359 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i8* %344, i8* %349, i8* %358)
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8** %14, align 8
  %360 = load i32, i32* %13, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %13, align 4
  br label %336

362:                                              ; preds = %336
  %363 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  br label %364

364:                                              ; preds = %362, %179
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %365

365:                                              ; preds = %377, %364
  %366 = load i32, i32* %13, align 4
  %367 = load i32, i32* %8, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %380

369:                                              ; preds = %365
  %370 = load i8*, i8** %14, align 8
  %371 = load i8**, i8*** %6, align 8
  %372 = load i32, i32* %13, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8*, i8** %371, i64 %373
  %375 = load i8*, i8** %374, align 8
  %376 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* %370, i8* %375)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %14, align 8
  br label %377

377:                                              ; preds = %369
  %378 = load i32, i32* %13, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %13, align 4
  br label %365

380:                                              ; preds = %365
  %381 = load i32, i32* %8, align 4
  %382 = load i32, i32* %10, align 4
  %383 = icmp eq i32 %381, %382
  %384 = zext i1 %383 to i64
  %385 = select i1 %383, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)
  %386 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i8* %385)
  br label %387

387:                                              ; preds = %394, %380
  %388 = load i8**, i8*** %7, align 8
  %389 = load i32, i32* %13, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8*, i8** %388, i64 %390
  %392 = load i8*, i8** %391, align 8
  %393 = icmp ne i8* %392, null
  br i1 %393, label %394, label %404

394:                                              ; preds = %387
  %395 = load i32, i32* %13, align 4
  %396 = load i32, i32* %11, align 4
  %397 = sub nsw i32 %396, 1
  %398 = icmp eq i32 %395, %397
  %399 = zext i1 %398 to i64
  %400 = select i1 %398, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)
  %401 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8* %400)
  %402 = load i32, i32* %13, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %13, align 4
  br label %387

404:                                              ; preds = %387
  %405 = load i8*, i8** %5, align 8
  %406 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0), i8* %405)
  %407 = load i8*, i8** %5, align 8
  %408 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i8* %407)
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0), i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %409

409:                                              ; preds = %426, %404
  %410 = load i32, i32* %13, align 4
  %411 = load i32, i32* %8, align 4
  %412 = icmp slt i32 %410, %411
  br i1 %412, label %413, label %429

413:                                              ; preds = %409
  %414 = load i8*, i8** %14, align 8
  %415 = load i8**, i8*** %6, align 8
  %416 = load i32, i32* %13, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i8*, i8** %415, i64 %417
  %419 = load i8*, i8** %418, align 8
  %420 = load i8**, i8*** %6, align 8
  %421 = load i32, i32* %13, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8*, i8** %420, i64 %422
  %424 = load i8*, i8** %423, align 8
  %425 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %414, i8* %419, i8* %424)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8** %14, align 8
  br label %426

426:                                              ; preds = %413
  %427 = load i32, i32* %13, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %13, align 4
  br label %409

429:                                              ; preds = %409
  %430 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %431

431:                                              ; preds = %443, %429
  %432 = load i32, i32* %13, align 4
  %433 = load i32, i32* %8, align 4
  %434 = icmp slt i32 %432, %433
  br i1 %434, label %435, label %446

435:                                              ; preds = %431
  %436 = load i8*, i8** %14, align 8
  %437 = load i8**, i8*** %6, align 8
  %438 = load i32, i32* %13, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8*, i8** %437, i64 %439
  %441 = load i8*, i8** %440, align 8
  %442 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %436, i8* %441)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %14, align 8
  br label %443

443:                                              ; preds = %435
  %444 = load i32, i32* %13, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %13, align 4
  br label %431

446:                                              ; preds = %431
  %447 = load i32, i32* %8, align 4
  %448 = load i32, i32* %10, align 4
  %449 = icmp eq i32 %447, %448
  %450 = zext i1 %449 to i64
  %451 = select i1 %449, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)
  %452 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i8* %451)
  br label %453

453:                                              ; preds = %460, %446
  %454 = load i8**, i8*** %7, align 8
  %455 = load i32, i32* %13, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8*, i8** %454, i64 %456
  %458 = load i8*, i8** %457, align 8
  %459 = icmp ne i8* %458, null
  br i1 %459, label %460, label %478

460:                                              ; preds = %453
  %461 = load i8**, i8*** %7, align 8
  %462 = load i32, i32* %13, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8*, i8** %461, i64 %463
  %465 = load i8*, i8** %464, align 8
  %466 = load i8**, i8*** %7, align 8
  %467 = load i32, i32* %13, align 4
  %468 = add nsw i32 %467, 1
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i8*, i8** %466, i64 %469
  %471 = load i8*, i8** %470, align 8
  %472 = icmp eq i8* %471, null
  %473 = zext i1 %472 to i64
  %474 = select i1 %472, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)
  %475 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i8* %465, i8* %474)
  %476 = load i32, i32* %13, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %13, align 4
  br label %453

478:                                              ; preds = %453
  %479 = load i8*, i8** %5, align 8
  %480 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* %479)
  %481 = load i8*, i8** %5, align 8
  %482 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), i8* %481)
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0), i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %483

483:                                              ; preds = %500, %478
  %484 = load i32, i32* %13, align 4
  %485 = load i32, i32* %8, align 4
  %486 = icmp slt i32 %484, %485
  br i1 %486, label %487, label %503

487:                                              ; preds = %483
  %488 = load i8*, i8** %14, align 8
  %489 = load i8**, i8*** %6, align 8
  %490 = load i32, i32* %13, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i8*, i8** %489, i64 %491
  %493 = load i8*, i8** %492, align 8
  %494 = load i8**, i8*** %6, align 8
  %495 = load i32, i32* %13, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8*, i8** %494, i64 %496
  %498 = load i8*, i8** %497, align 8
  %499 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %488, i8* %493, i8* %498)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8** %14, align 8
  br label %500

500:                                              ; preds = %487
  %501 = load i32, i32* %13, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %13, align 4
  br label %483

503:                                              ; preds = %483
  %504 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0))
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i8** %14, align 8
  store i32 1, i32* %13, align 4
  br label %505

505:                                              ; preds = %513, %503
  %506 = load i32, i32* %13, align 4
  %507 = load i32, i32* %8, align 4
  %508 = icmp sle i32 %506, %507
  br i1 %508, label %509, label %516

509:                                              ; preds = %505
  %510 = load i8*, i8** %14, align 8
  %511 = load i32, i32* %13, align 4
  %512 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i8* %510, i32 %511)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %14, align 8
  br label %513

513:                                              ; preds = %509
  %514 = load i32, i32* %13, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %13, align 4
  br label %505

516:                                              ; preds = %505
  %517 = call i32 (%struct.TYPE_6__*, i8*, ...) @strPrintf(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0))
  %518 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g, i32 0, i32 0), align 4
  %519 = load i32, i32* @DEBUG_DIFF_SQL, align 4
  %520 = and i32 %518, %519
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %527

522:                                              ; preds = %516
  %523 = load i8*, i8** %5, align 8
  %524 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %525 = load i8*, i8** %524, align 8
  %526 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* %523, i8* %525)
  br label %725

527:                                              ; preds = %516
  %528 = load i8*, i8** %3, align 8
  %529 = load i8*, i8** %3, align 8
  %530 = call i32* (i8*, i8*, ...) @db_prepare(i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.45, i64 0, i64 0), i8* %528, i8* %529)
  store i32* %530, i32** %16, align 8
  br label %531

531:                                              ; preds = %536, %527
  %532 = load i64, i64* @SQLITE_ROW, align 8
  %533 = load i32*, i32** %16, align 8
  %534 = call i64 @sqlite3_step(i32* %533)
  %535 = icmp eq i64 %532, %534
  br i1 %535, label %536, label %545

536:                                              ; preds = %531
  %537 = load i32*, i32** %16, align 8
  %538 = call i8* @sqlite3_column_text(i32* %537, i32 0)
  %539 = call i8* @safeId(i8* %538)
  store i8* %539, i8** %17, align 8
  %540 = load i32*, i32** %4, align 8
  %541 = load i8*, i8** %17, align 8
  %542 = call i32 (i32*, i8*, ...) @fprintf(i32* %540, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i8* %541)
  %543 = load i8*, i8** %17, align 8
  %544 = call i32 @sqlite3_free(i8* %543)
  br label %531

545:                                              ; preds = %531
  %546 = load i32*, i32** %16, align 8
  %547 = call i32 @sqlite3_finalize(i32* %546)
  %548 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g, i32 0, i32 1), align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %708, label %550

550:                                              ; preds = %545
  %551 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %552 = load i8*, i8** %551, align 8
  %553 = call i32* (i8*, i8*, ...) @db_prepare(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i8* %552)
  store i32* %553, i32** %16, align 8
  br label %554

554:                                              ; preds = %704, %550
  %555 = load i64, i64* @SQLITE_ROW, align 8
  %556 = load i32*, i32** %16, align 8
  %557 = call i64 @sqlite3_step(i32* %556)
  %558 = icmp eq i64 %555, %557
  br i1 %558, label %559, label %705

559:                                              ; preds = %554
  %560 = load i32*, i32** %16, align 8
  %561 = load i32, i32* %8, align 4
  %562 = call i32 @sqlite3_column_int(i32* %560, i32 %561)
  store i32 %562, i32* %18, align 4
  %563 = load i32, i32* %18, align 4
  %564 = icmp eq i32 %563, 1
  br i1 %564, label %568, label %565

565:                                              ; preds = %559
  %566 = load i32, i32* %18, align 4
  %567 = icmp eq i32 %566, 2
  br i1 %567, label %568, label %639

568:                                              ; preds = %565, %559
  %569 = load i32, i32* %18, align 4
  %570 = icmp eq i32 %569, 1
  br i1 %570, label %571, label %610

571:                                              ; preds = %568
  %572 = load i32*, i32** %4, align 8
  %573 = load i8*, i8** %5, align 8
  %574 = call i32 (i32*, i8*, ...) @fprintf(i32* %572, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i8* %573)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i8** %14, align 8
  %575 = load i32, i32* %8, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %13, align 4
  br label %577

577:                                              ; preds = %606, %571
  %578 = load i32, i32* %13, align 4
  %579 = load i32, i32* %12, align 4
  %580 = icmp slt i32 %578, %579
  br i1 %580, label %581, label %609

581:                                              ; preds = %577
  %582 = load i32*, i32** %16, align 8
  %583 = load i32, i32* %13, align 4
  %584 = call i32 @sqlite3_column_int(i32* %582, i32 %583)
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %587

586:                                              ; preds = %581
  br label %606

587:                                              ; preds = %581
  %588 = load i32*, i32** %4, align 8
  %589 = load i8*, i8** %14, align 8
  %590 = load i8**, i8*** %7, align 8
  %591 = load i32, i32* %13, align 4
  %592 = load i32, i32* %8, align 4
  %593 = add nsw i32 %591, %592
  %594 = sub nsw i32 %593, 1
  %595 = sdiv i32 %594, 2
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i8*, i8** %590, i64 %596
  %598 = load i8*, i8** %597, align 8
  %599 = call i32 (i32*, i8*, ...) @fprintf(i32* %588, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8* %589, i8* %598)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %14, align 8
  %600 = load i32*, i32** %4, align 8
  %601 = load i32*, i32** %16, align 8
  %602 = load i32, i32* %13, align 4
  %603 = add nsw i32 %602, 1
  %604 = call i32 @sqlite3_column_value(i32* %601, i32 %603)
  %605 = call i32 @printQuoted(i32* %600, i32 %604)
  br label %606

606:                                              ; preds = %587, %586
  %607 = load i32, i32* %13, align 4
  %608 = add nsw i32 %607, 2
  store i32 %608, i32* %13, align 4
  br label %577

609:                                              ; preds = %577
  br label %614

610:                                              ; preds = %568
  %611 = load i32*, i32** %4, align 8
  %612 = load i8*, i8** %5, align 8
  %613 = call i32 (i32*, i8*, ...) @fprintf(i32* %611, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i8* %612)
  br label %614

614:                                              ; preds = %610, %609
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %615

615:                                              ; preds = %633, %614
  %616 = load i32, i32* %13, align 4
  %617 = load i32, i32* %8, align 4
  %618 = icmp slt i32 %616, %617
  br i1 %618, label %619, label %636

619:                                              ; preds = %615
  %620 = load i32*, i32** %4, align 8
  %621 = load i8*, i8** %14, align 8
  %622 = load i8**, i8*** %7, align 8
  %623 = load i32, i32* %13, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i8*, i8** %622, i64 %624
  %626 = load i8*, i8** %625, align 8
  %627 = call i32 (i32*, i8*, ...) @fprintf(i32* %620, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8* %621, i8* %626)
  %628 = load i32*, i32** %4, align 8
  %629 = load i32*, i32** %16, align 8
  %630 = load i32, i32* %13, align 4
  %631 = call i32 @sqlite3_column_value(i32* %629, i32 %630)
  %632 = call i32 @printQuoted(i32* %628, i32 %631)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8** %14, align 8
  br label %633

633:                                              ; preds = %619
  %634 = load i32, i32* %13, align 4
  %635 = add nsw i32 %634, 1
  store i32 %635, i32* %13, align 4
  br label %615

636:                                              ; preds = %615
  %637 = load i32*, i32** %4, align 8
  %638 = call i32 (i32*, i8*, ...) @fprintf(i32* %637, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0))
  br label %704

639:                                              ; preds = %565
  %640 = load i32*, i32** %4, align 8
  %641 = load i8*, i8** %5, align 8
  %642 = load i8**, i8*** %7, align 8
  %643 = getelementptr inbounds i8*, i8** %642, i64 0
  %644 = load i8*, i8** %643, align 8
  %645 = call i32 (i32*, i8*, ...) @fprintf(i32* %640, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i64 0, i64 0), i8* %641, i8* %644)
  store i32 1, i32* %13, align 4
  br label %646

646:                                              ; preds = %661, %639
  %647 = load i8**, i8*** %7, align 8
  %648 = load i32, i32* %13, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i8*, i8** %647, i64 %649
  %651 = load i8*, i8** %650, align 8
  %652 = icmp ne i8* %651, null
  br i1 %652, label %653, label %664

653:                                              ; preds = %646
  %654 = load i32*, i32** %4, align 8
  %655 = load i8**, i8*** %7, align 8
  %656 = load i32, i32* %13, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds i8*, i8** %655, i64 %657
  %659 = load i8*, i8** %658, align 8
  %660 = call i32 (i32*, i8*, ...) @fprintf(i32* %654, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* %659)
  br label %661

661:                                              ; preds = %653
  %662 = load i32, i32* %13, align 4
  %663 = add nsw i32 %662, 1
  store i32 %663, i32* %13, align 4
  br label %646

664:                                              ; preds = %646
  %665 = load i32*, i32** %4, align 8
  %666 = call i32 (i32*, i8*, ...) @fprintf(i32* %665, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0))
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %667

667:                                              ; preds = %680, %664
  %668 = load i32, i32* %13, align 4
  %669 = load i32, i32* %9, align 4
  %670 = icmp slt i32 %668, %669
  br i1 %670, label %671, label %683

671:                                              ; preds = %667
  %672 = load i32*, i32** %4, align 8
  %673 = load i8*, i8** %14, align 8
  %674 = call i32 (i32*, i8*, ...) @fprintf(i32* %672, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i8* %673)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %14, align 8
  %675 = load i32*, i32** %4, align 8
  %676 = load i32*, i32** %16, align 8
  %677 = load i32, i32* %13, align 4
  %678 = call i32 @sqlite3_column_value(i32* %676, i32 %677)
  %679 = call i32 @printQuoted(i32* %675, i32 %678)
  br label %680

680:                                              ; preds = %671
  %681 = load i32, i32* %13, align 4
  %682 = add nsw i32 %681, 1
  store i32 %682, i32* %13, align 4
  br label %667

683:                                              ; preds = %667
  %684 = load i32, i32* %9, align 4
  %685 = add nsw i32 %684, 2
  store i32 %685, i32* %13, align 4
  br label %686

686:                                              ; preds = %698, %683
  %687 = load i32, i32* %13, align 4
  %688 = load i32, i32* %12, align 4
  %689 = icmp slt i32 %687, %688
  br i1 %689, label %690, label %701

690:                                              ; preds = %686
  %691 = load i32*, i32** %4, align 8
  %692 = call i32 (i32*, i8*, ...) @fprintf(i32* %691, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %693 = load i32*, i32** %4, align 8
  %694 = load i32*, i32** %16, align 8
  %695 = load i32, i32* %13, align 4
  %696 = call i32 @sqlite3_column_value(i32* %694, i32 %695)
  %697 = call i32 @printQuoted(i32* %693, i32 %696)
  br label %698

698:                                              ; preds = %690
  %699 = load i32, i32* %13, align 4
  %700 = add nsw i32 %699, 2
  store i32 %700, i32* %13, align 4
  br label %686

701:                                              ; preds = %686
  %702 = load i32*, i32** %4, align 8
  %703 = call i32 (i32*, i8*, ...) @fprintf(i32* %702, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0))
  br label %704

704:                                              ; preds = %701, %636
  br label %554

705:                                              ; preds = %554
  %706 = load i32*, i32** %16, align 8
  %707 = call i32 @sqlite3_finalize(i32* %706)
  br label %708

708:                                              ; preds = %705, %545
  %709 = load i8*, i8** %3, align 8
  %710 = load i8*, i8** %3, align 8
  %711 = call i32* (i8*, i8*, ...) @db_prepare(i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.57, i64 0, i64 0), i8* %709, i8* %710)
  store i32* %711, i32** %16, align 8
  br label %712

712:                                              ; preds = %717, %708
  %713 = load i64, i64* @SQLITE_ROW, align 8
  %714 = load i32*, i32** %16, align 8
  %715 = call i64 @sqlite3_step(i32* %714)
  %716 = icmp eq i64 %713, %715
  br i1 %716, label %717, label %722

717:                                              ; preds = %712
  %718 = load i32*, i32** %4, align 8
  %719 = load i32*, i32** %16, align 8
  %720 = call i8* @sqlite3_column_text(i32* %719, i32 0)
  %721 = call i32 (i32*, i8*, ...) @fprintf(i32* %718, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), i8* %720)
  br label %712

722:                                              ; preds = %712
  %723 = load i32*, i32** %16, align 8
  %724 = call i32 @sqlite3_finalize(i32* %723)
  br label %725

725:                                              ; preds = %722, %522, %150, %83, %77, %62
  %726 = call i32 @strFree(%struct.TYPE_6__* %15)
  %727 = load i8*, i8** %5, align 8
  %728 = call i32 @sqlite3_free(i8* %727)
  %729 = load i8**, i8*** %6, align 8
  %730 = call i32 @namelistFree(i8** %729)
  %731 = load i8**, i8*** %7, align 8
  %732 = call i32 @namelistFree(i8** %731)
  ret void
}

declare dso_local i8* @safeId(i8*) #1

declare dso_local i32 @strInit(%struct.TYPE_6__*) #1

declare dso_local i8** @columnNames(i8*, i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @sqlite3_table_column_metadata(i32, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @dump_table(i8*, i32*) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @strPrintf(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32* @db_prepare(i8*, i8*, ...) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @printQuoted(i32*, i32) #1

declare dso_local i32 @sqlite3_column_value(i32*, i32) #1

declare dso_local i32 @strFree(%struct.TYPE_6__*) #1

declare dso_local i32 @namelistFree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
