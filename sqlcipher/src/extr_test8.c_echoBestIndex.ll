; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test8.c_echoBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test8.c_echoBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i8*, i32, double, i32, %struct.TYPE_8__*, %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.sqlite3_index_constraint_usage = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i8*, i8**, i32*, i64*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"WHERE\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"echo_module_ignore_usable\00", align 1
@TCL_GLOBAL_ONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"xBestIndex\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"echo_module_cost\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"SELECT count(*) FROM %Q\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"SELECT rowid%z FROM %Q\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"LIKE\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"like\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c" %s %s LIKE (SELECT '%%'||?||'%%')\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c" %s %s %s ?\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"DESC\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"ASC\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c" ORDER BY %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @echoBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @echoBestIndex(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.sqlite3_index_constraint*, align 8
  %22 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = bitcast i32* %29 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %12, align 8
  store i32* null, i32** %13, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %34 = load i32, i32* @SQLITE_OK, align 4
  store i32 %34, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store double 0.000000e+00, double* %19, align 8
  store i32 0, i32* %20, align 4
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* @TCL_GLOBAL_ONLY, align 4
  %37 = call i64 @Tcl_GetVar(i32* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i32 1, i32* %20, align 4
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %42 = call i64 @simulateVtabError(%struct.TYPE_10__* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %331

46:                                               ; preds = %40
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* @TCL_GLOBAL_ONLY, align 4
  %49 = call i64 @Tcl_GetVar(i32* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* @TCL_GLOBAL_ONLY, align 4
  %54 = call i64 @Tcl_GetVar(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = call double @atof(i64 %54)
  store double %55, double* %19, align 8
  store i32 1, i32* %18, align 4
  br label %91

56:                                               ; preds = %46
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %64, i32* %3, align 4
  br label %331

65:                                               ; preds = %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @sqlite3_prepare(i32 %68, i8* %69, i32 -1, i32** %13, i32 0)
  store i32 %70, i32* %17, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @sqlite3_free(i8* %71)
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* @SQLITE_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %17, align 4
  store i32 %77, i32* %3, align 4
  br label %331

78:                                               ; preds = %65
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @sqlite3_step(i32* %79)
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @sqlite3_column_int(i32* %81, i32 0)
  store i32 %82, i32* %15, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @sqlite3_finalize(i32* %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @SQLITE_OK, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* %17, align 4
  store i32 %89, i32* %3, align 4
  br label %331

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %51
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = call i8* @echoSelectList(%struct.TYPE_10__* %92, %struct.TYPE_9__* %93)
  store i8* %94, i8** %8, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %98, i32* %3, align 4
  br label %331

99:                                               ; preds = %91
  %100 = load i8*, i8** %8, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %100, i8* %103)
  store i8* %104, i8** %7, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %108, i32* %3, align 4
  br label %331

109:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %207, %109
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %210

116:                                              ; preds = %110
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 9
  %119 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %119, i64 %121
  store %struct.sqlite3_index_constraint* %122, %struct.sqlite3_index_constraint** %21, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 8
  %125 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %125, i64 %127
  store %struct.sqlite3_index_constraint_usage* %128, %struct.sqlite3_index_constraint_usage** %22, align 8
  %129 = load i32, i32* %20, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %116
  %132 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %21, align 8
  %133 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  br label %207

137:                                              ; preds = %131, %116
  %138 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %21, align 8
  %139 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %23, align 4
  %141 = load i32, i32* %23, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %137
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 3
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %23, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %206

152:                                              ; preds = %143, %137
  %153 = load i32, i32* %23, align 4
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32, i32* %23, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  br label %164

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %163, %155
  %165 = phi i8* [ %162, %155 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %163 ]
  store i8* %165, i8** %24, align 8
  store i8* null, i8** %25, align 8
  store i32 1, i32* %16, align 4
  %166 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %21, align 8
  %167 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  switch i32 %168, label %178 [
    i32 136, label %169
    i32 130, label %170
    i32 133, label %171
    i32 132, label %172
    i32 135, label %173
    i32 129, label %174
    i32 131, label %175
    i32 134, label %176
    i32 128, label %177
  ]

169:                                              ; preds = %164
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %25, align 8
  br label %178

170:                                              ; preds = %164
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %25, align 8
  br label %178

171:                                              ; preds = %164
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %25, align 8
  br label %178

172:                                              ; preds = %164
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %25, align 8
  br label %178

173:                                              ; preds = %164
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %25, align 8
  br label %178

174:                                              ; preds = %164
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %25, align 8
  br label %178

175:                                              ; preds = %164
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %25, align 8
  br label %178

176:                                              ; preds = %164
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %25, align 8
  br label %178

177:                                              ; preds = %164
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %25, align 8
  br label %178

178:                                              ; preds = %164, %177, %176, %175, %174, %173, %172, %171, %170, %169
  %179 = load i8*, i8** %25, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %205

181:                                              ; preds = %178
  %182 = load i8*, i8** %25, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 76
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load i8*, i8** %11, align 8
  %189 = load i8*, i8** %24, align 8
  %190 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i8* %188, i8* %189)
  store i8* %190, i8** %9, align 8
  br label %196

191:                                              ; preds = %181
  %192 = load i8*, i8** %11, align 8
  %193 = load i8*, i8** %24, align 8
  %194 = load i8*, i8** %25, align 8
  %195 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* %192, i8* %193, i8* %194)
  store i8* %195, i8** %9, align 8
  br label %196

196:                                              ; preds = %191, %187
  %197 = load i8*, i8** %9, align 8
  %198 = call i32 @string_concat(i8** %7, i8* %197, i32 1, i32* %17)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8** %11, align 8
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  %201 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %22, align 8
  %202 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  %203 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %22, align 8
  %204 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %203, i32 0, i32 1
  store i32 1, i32* %204, align 4
  br label %205

205:                                              ; preds = %196, %178
  br label %206

206:                                              ; preds = %205, %143
  br label %207

207:                                              ; preds = %206, %136
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %6, align 4
  br label %110

210:                                              ; preds = %110
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %269

215:                                              ; preds = %210
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 7
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ult i64 %220, 0
  br i1 %221, label %234, label %222

222:                                              ; preds = %215
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 3
  %225 = load i64*, i64** %224, align 8
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 7
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds i64, i64* %225, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %269

234:                                              ; preds = %222, %215
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 7
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %26, align 4
  %241 = load i32, i32* %26, align 4
  %242 = icmp sge i32 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %234
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 1
  %246 = load i8**, i8*** %245, align 8
  %247 = load i32, i32* %26, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  %250 = load i8*, i8** %249, align 8
  br label %252

251:                                              ; preds = %234
  br label %252

252:                                              ; preds = %251, %243
  %253 = phi i8* [ %250, %243 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %251 ]
  store i8* %253, i8** %27, align 8
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 7
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)
  store i8* %261, i8** %28, align 8
  %262 = load i8*, i8** %27, align 8
  %263 = load i8*, i8** %28, align 8
  %264 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %262, i8* %263)
  store i8* %264, i8** %9, align 8
  %265 = load i8*, i8** %9, align 8
  %266 = call i32 @string_concat(i8** %7, i8* %265, i32 1, i32* %17)
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 2
  store i32 1, i32* %268, align 8
  br label %269

269:                                              ; preds = %252, %222, %210
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @appendToEchoModule(i32* %272, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = load i8*, i8** %7, align 8
  %278 = call i32 @appendToEchoModule(i32* %276, i8* %277)
  %279 = load i8*, i8** %7, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %283, label %281

281:                                              ; preds = %269
  %282 = load i32, i32* %17, align 4
  store i32 %282, i32* %3, align 4
  br label %331

283:                                              ; preds = %269
  %284 = load i8*, i8** %7, align 8
  %285 = call i32 @hashString(i8* %284)
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 6
  store i32 %285, i32* %287, align 8
  %288 = load i8*, i8** %7, align 8
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 3
  store i8* %288, i8** %290, align 8
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 4
  store i32 1, i32* %292, align 8
  %293 = load i32, i32* %18, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %283
  %296 = load double, double* %19, align 8
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 5
  store double %296, double* %298, align 8
  br label %329

299:                                              ; preds = %283
  %300 = load i32, i32* %16, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %323

302:                                              ; preds = %299
  store i32 0, i32* %6, align 4
  br label %303

303:                                              ; preds = %319, %302
  %304 = load i32, i32* %6, align 4
  %305 = sext i32 %304 to i64
  %306 = icmp ult i64 %305, 31
  br i1 %306, label %307, label %322

307:                                              ; preds = %303
  %308 = load i32, i32* %15, align 4
  %309 = load i32, i32* %6, align 4
  %310 = shl i32 1, %309
  %311 = and i32 %308, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %307
  %314 = load i32, i32* %6, align 4
  %315 = sitofp i32 %314 to double
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 5
  store double %315, double* %317, align 8
  br label %318

318:                                              ; preds = %313, %307
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %6, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %6, align 4
  br label %303

322:                                              ; preds = %303
  br label %328

323:                                              ; preds = %299
  %324 = load i32, i32* %15, align 4
  %325 = sitofp i32 %324 to double
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 5
  store double %325, double* %327, align 8
  br label %328

328:                                              ; preds = %323, %322
  br label %329

329:                                              ; preds = %328, %295
  %330 = load i32, i32* %17, align 4
  store i32 %330, i32* %3, align 4
  br label %331

331:                                              ; preds = %329, %281, %107, %97, %88, %76, %63, %44
  %332 = load i32, i32* %3, align 4
  ret i32 %332
}

declare dso_local i64 @Tcl_GetVar(i32*, i8*, i32) #1

declare dso_local i64 @simulateVtabError(%struct.TYPE_10__*, i8*) #1

declare dso_local double @atof(i64) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_prepare(i32, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i8* @echoSelectList(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @string_concat(i8**, i8*, i32, i32*) #1

declare dso_local i32 @appendToEchoModule(i32*, i8*) #1

declare dso_local i32 @hashString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
