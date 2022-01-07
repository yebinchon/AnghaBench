; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_wherecode.c_sqlite3WhereExplainOneScan.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_wherecode.c_sqlite3WhereExplainOneScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32*, i32* }
%struct.TYPE_24__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { i8*, i8*, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_17__ = type { i32 }

@WHERE_MULTI_OR = common dso_local global i32 0, align 4
@WHERE_OR_SUBCLAUSE = common dso_local global i32 0, align 4
@WHERE_BTM_LIMIT = common dso_local global i32 0, align 4
@WHERE_TOP_LIMIT = common dso_local global i32 0, align 4
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@WHERE_ORDERBY_MIN = common dso_local global i32 0, align 4
@WHERE_ORDERBY_MAX = common dso_local global i32 0, align 4
@SQLITE_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SEARCH\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SCAN\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" SUBQUERY %u\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" TABLE %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" AS %s\00", align 1
@WHERE_IPK = common dso_local global i32 0, align 4
@WHERE_AUTO_INDEX = common dso_local global i32 0, align 4
@WHERE_IDX_ONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"PRIMARY KEY\00", align 1
@WHERE_PARTIALIDX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"AUTOMATIC PARTIAL COVERING INDEX\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"AUTOMATIC COVERING INDEX\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"COVERING INDEX %s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"INDEX %s\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" USING \00", align 1
@WHERE_CONSTRAINT = common dso_local global i32 0, align 4
@WHERE_COLUMN_EQ = common dso_local global i32 0, align 4
@WHERE_COLUMN_IN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@WHERE_BOTH_LIMIT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c">? AND rowid<\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c" USING INTEGER PRIMARY KEY (rowid%s?)\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c" VIRTUAL TABLE INDEX %d:%s\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OP_Explain = common dso_local global i32 0, align 4
@P4_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3WhereExplainOneScan(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.SrcList_item*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [100 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_26__*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %24 = call %struct.TYPE_17__* @sqlite3ParseToplevel(%struct.TYPE_25__* %23)
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %281

28:                                               ; preds = %4
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load %struct.SrcList_item*, %struct.SrcList_item** %30, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %31, i64 %34
  store %struct.SrcList_item* %35, %struct.SrcList_item** %11, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %12, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %13, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %15, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @WHERE_MULTI_OR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @WHERE_OR_SUBCLAUSE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %28
  store i32 0, i32* %5, align 4
  br label %283

58:                                               ; preds = %52
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @WHERE_BTM_LIMIT, align 4
  %61 = load i32, i32* @WHERE_TOP_LIMIT, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70, %65
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @WHERE_ORDERBY_MIN, align 4
  %80 = load i32, i32* @WHERE_ORDERBY_MAX, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %77, %70, %58
  %85 = phi i1 [ true, %70 ], [ true, %58 ], [ %83, %77 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %14, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %89 = load i32, i32* @SQLITE_MAX_LENGTH, align 4
  %90 = call i32 @sqlite3StrAccumInit(i32* %18, i32* %87, i8* %88, i32 100, i32 %89)
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %95 = call i32 @sqlite3_str_appendall(i32* %18, i8* %94)
  %96 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %97 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %96, i32 0, i32 3
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = icmp ne %struct.TYPE_18__* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %84
  %101 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %102 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %101, i32 0, i32 3
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i32*, i8*, i8*, ...) @sqlite3_str_appendf(i32* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  br label %112

107:                                              ; preds = %84
  %108 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %109 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i32*, i8*, i8*, ...) @sqlite3_str_appendf(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %107, %100
  %113 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %114 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %119 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i32*, i8*, i8*, ...) @sqlite3_str_appendf(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %117, %112
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @WHERE_IPK, align 4
  %125 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %123, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %205

129:                                              ; preds = %122
  store i8* null, i8** %20, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %133, align 8
  %135 = icmp ne %struct.TYPE_26__* %134, null
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %141, align 8
  store %struct.TYPE_26__* %142, %struct.TYPE_26__** %21, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* @WHERE_AUTO_INDEX, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %129
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* @WHERE_IDX_ONLY, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br label %152

152:                                              ; preds = %147, %129
  %153 = phi i1 [ true, %129 ], [ %151, %147 ]
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %157 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @HasRowid(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %170, label %161

161:                                              ; preds = %152
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %163 = call i64 @IsPrimaryKeyIndex(%struct.TYPE_26__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %20, align 8
  br label %169

169:                                              ; preds = %168, %165
  br label %192

170:                                              ; preds = %161, %152
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* @WHERE_PARTIALIDX, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8** %20, align 8
  br label %191

176:                                              ; preds = %170
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* @WHERE_AUTO_INDEX, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8** %20, align 8
  br label %190

182:                                              ; preds = %176
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* @WHERE_IDX_ONLY, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %20, align 8
  br label %189

188:                                              ; preds = %182
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %20, align 8
  br label %189

189:                                              ; preds = %188, %187
  br label %190

190:                                              ; preds = %189, %181
  br label %191

191:                                              ; preds = %190, %175
  br label %192

192:                                              ; preds = %191, %169
  %193 = load i8*, i8** %20, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = call i32 @sqlite3_str_append(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %197 = load i8*, i8** %20, align 8
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 (i32*, i8*, i8*, ...) @sqlite3_str_appendf(i32* %18, i8* %197, i8* %200)
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %203 = call i32 @explainIndexRange(i32* %18, %struct.TYPE_22__* %202)
  br label %204

204:                                              ; preds = %195, %192
  br label %267

205:                                              ; preds = %122
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* @WHERE_IPK, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %246

210:                                              ; preds = %205
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* @WHERE_CONSTRAINT, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %246

215:                                              ; preds = %210
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* @WHERE_COLUMN_EQ, align 4
  %218 = load i32, i32* @WHERE_COLUMN_IN, align 4
  %219 = or i32 %217, %218
  %220 = and i32 %216, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %22, align 8
  br label %243

223:                                              ; preds = %215
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* @WHERE_BOTH_LIMIT, align 4
  %226 = and i32 %224, %225
  %227 = load i32, i32* @WHERE_BOTH_LIMIT, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8** %22, align 8
  br label %242

230:                                              ; preds = %223
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* @WHERE_BTM_LIMIT, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %22, align 8
  br label %241

236:                                              ; preds = %230
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* @WHERE_TOP_LIMIT, align 4
  %239 = and i32 %237, %238
  %240 = call i32 @assert(i32 %239)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8** %22, align 8
  br label %241

241:                                              ; preds = %236, %235
  br label %242

242:                                              ; preds = %241, %229
  br label %243

243:                                              ; preds = %242, %222
  %244 = load i8*, i8** %22, align 8
  %245 = call i32 (i32*, i8*, i8*, ...) @sqlite3_str_appendf(i32* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i8* %244)
  br label %266

246:                                              ; preds = %210, %205
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %265

251:                                              ; preds = %246
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = inttoptr i64 %257 to i8*
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 (i32*, i8*, i8*, ...) @sqlite3_str_appendf(i32* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* %258, i32 %263)
  br label %265

265:                                              ; preds = %251, %246
  br label %266

266:                                              ; preds = %265, %243
  br label %267

267:                                              ; preds = %266, %204
  %268 = call i8* @sqlite3StrAccumFinish(i32* %18)
  store i8* %268, i8** %17, align 8
  %269 = load i8*, i8** %17, align 8
  %270 = call i32 @sqlite3ExplainBreakpoint(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), i8* %269)
  %271 = load i32*, i32** %12, align 8
  %272 = load i32, i32* @OP_Explain, align 4
  %273 = load i32*, i32** %12, align 8
  %274 = call i32 @sqlite3VdbeCurrentAddr(i32* %273)
  %275 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i8*, i8** %17, align 8
  %279 = load i32, i32* @P4_DYNAMIC, align 4
  %280 = call i32 @sqlite3VdbeAddOp4(i32* %271, i32 %272, i32 %274, i32 %277, i32 0, i8* %278, i32 %279)
  store i32 %280, i32* %10, align 4
  br label %281

281:                                              ; preds = %267, %4
  %282 = load i32, i32* %10, align 4
  store i32 %282, i32* %5, align 4
  br label %283

283:                                              ; preds = %281, %57
  %284 = load i32, i32* %5, align 4
  ret i32 %284
}

declare dso_local %struct.TYPE_17__* @sqlite3ParseToplevel(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3StrAccumInit(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_str_appendall(i32*, i8*) #1

declare dso_local i32 @sqlite3_str_appendf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @HasRowid(i32) #1

declare dso_local i64 @IsPrimaryKeyIndex(%struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3_str_append(i32*, i8*, i32) #1

declare dso_local i32 @explainIndexRange(i32*, %struct.TYPE_22__*) #1

declare dso_local i8* @sqlite3StrAccumFinish(i32*) #1

declare dso_local i32 @sqlite3ExplainBreakpoint(i8*, i8*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
