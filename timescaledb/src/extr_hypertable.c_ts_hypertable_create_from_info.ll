; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_ts_hypertable_create_from_info.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_ts_hypertable_create_from_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }

@HYPERTABLE_CREATE_IF_NOT_EXISTS = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@ERRCODE_TS_HYPERTABLE_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"table \22%s\22 is already a hypertable, skipping\00", align 1
@AccessExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"table \22%s\22 is already a hypertable\00", align 1
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid relation type\00", align 1
@HYPERTABLE_CREATE_MIGRATE_DATA = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"table \22%s\22 is not empty\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"You can migrate data by specifying 'migrate_data => true' when calling this function.\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"table \22%s\22 is already partitioned\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"It is not possible to turn tables that use inheritance into hypertables.\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"table \22%s\22 has to be logged\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"It is not possible to turn temporary or unlogged tables into hypertables.\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"table \22%s\22 has replica identity set\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Logical replication is not supported on hypertables.\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"hypertables do not support rules\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"Table \22%s\22 has attached rules, which do not work on hypertables.\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Remove the rules before calling create_hypertable\00", align 1
@INTERNAL_SCHEMA_NAME = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [57 x i8] c"hypertables do not support transition tables in triggers\00", align 1
@ERRCODE_WARNING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [86 x i8] c"adaptive chunking is a BETA feature and is not recommended for production deployments\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [46 x i8] c"invalid chunk_sizing function: cannot be NULL\00", align 1
@NoLock = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"migrating data to chunks\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"Migration might take a while depending on the amount of data.\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@HYPERTABLE_CREATE_DISABLE_DEFAULT_INDEXES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_hypertable_create_from_info(i32 %0, i32 %1, i32 %2, %struct.TYPE_11__* %3, %struct.TYPE_11__* %4, i32* %5, i32* %6, %struct.TYPE_12__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %17, align 8
  %30 = call i32 (...) @GetUserId()
  store i32 %30, i32* %21, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @get_rel_tablespace(i32 %31)
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @HYPERTABLE_CREATE_IF_NOT_EXISTS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %28, align 4
  %38 = load i32, i32* %28, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %8
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @ts_is_hypertable(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* @NOTICE, align 4
  %46 = load i32, i32* @ERRCODE_TS_HYPERTABLE_EXISTS, align 4
  %47 = call i32 @errcode(i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @get_rel_name(i32 %48)
  %50 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = call i32 @ereport(i32 %45, i32 %50)
  store i32 0, i32* %9, align 4
  br label %341

52:                                               ; preds = %40, %8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @AccessExclusiveLock, align 4
  %55 = call i32 @heap_open(i32 %53, i32 %54)
  store i32 %55, i32* %27, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @ts_is_hypertable(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %52
  %60 = load i32, i32* %27, align 4
  %61 = load i32, i32* @AccessExclusiveLock, align 4
  %62 = call i32 @heap_close(i32 %60, i32 %61)
  %63 = load i32, i32* %28, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i32, i32* @NOTICE, align 4
  %67 = load i32, i32* @ERRCODE_TS_HYPERTABLE_EXISTS, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @get_rel_name(i32 %69)
  %71 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = call i32 @ereport(i32 %66, i32 %71)
  store i32 0, i32* %9, align 4
  br label %341

73:                                               ; preds = %59
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_TS_HYPERTABLE_EXISTS, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @get_rel_name(i32 %77)
  %79 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = call i32 @ereport(i32 %74, i32 %79)
  br label %81

81:                                               ; preds = %73, %52
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %21, align 4
  %84 = call i32 @ts_hypertable_permissions_check(i32 %82, i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @get_rel_relkind(i32 %85)
  switch i32 %86, label %88 [
    i32 128, label %87
  ]

87:                                               ; preds = %81
  br label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @ERROR, align 4
  %90 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %91 = call i32 @errcode(i32 %90)
  %92 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %93 = call i32 @ereport(i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %88, %87
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @hypertable_validate_constraints(i32 %95)
  %97 = load i32, i32* %27, align 4
  %98 = call i32 @relation_has_tuples(i32 %97)
  store i32 %98, i32* %23, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @HYPERTABLE_CREATE_MIGRATE_DATA, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %94
  %104 = load i32, i32* %23, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i32, i32* @ERROR, align 4
  %108 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %109 = call i32 @errcode(i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @get_rel_name(i32 %110)
  %112 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = call i32 @errhint(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0))
  %114 = call i32 @ereport(i32 %107, i32 %113)
  br label %115

115:                                              ; preds = %106, %103, %94
  %116 = load i32, i32* %10, align 4
  %117 = call i64 @is_inheritance_table(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i32, i32* @ERROR, align 4
  %121 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %122 = call i32 @errcode(i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @get_rel_name(i32 %123)
  %125 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0))
  %127 = call i32 @ereport(i32 %120, i32 %126)
  br label %128

128:                                              ; preds = %119, %115
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @table_is_logged(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* @ERROR, align 4
  %134 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %135 = call i32 @errcode(i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @get_rel_name(i32 %136)
  %138 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  %139 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0))
  %140 = call i32 @ereport(i32 %133, i32 %139)
  br label %141

141:                                              ; preds = %132, %128
  %142 = load i32, i32* %27, align 4
  %143 = call i64 @table_has_replica_identity(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i32, i32* @ERROR, align 4
  %147 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %148 = call i32 @errcode(i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @get_rel_name(i32 %149)
  %151 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %150)
  %152 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0))
  %153 = call i32 @ereport(i32 %146, i32 %152)
  br label %154

154:                                              ; preds = %145, %141
  %155 = load i32, i32* %27, align 4
  %156 = call i64 @table_has_rules(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load i32, i32* @ERROR, align 4
  %160 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %161 = call i32 @errcode(i32 %160)
  %162 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @get_rel_name(i32 %163)
  %165 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0), i32 %164)
  %166 = call i32 @errhint(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  %167 = call i32 @ereport(i32 %159, i32 %166)
  br label %168

168:                                              ; preds = %158, %154
  %169 = load i32*, i32** %15, align 8
  %170 = icmp eq i32* null, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* @INTERNAL_SCHEMA_NAME, align 4
  %173 = call i32 @namestrcpy(i32* %26, i32 %172)
  store i32* %26, i32** %15, align 8
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i32*, i32** %15, align 8
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @NameStr(i32 %176)
  %178 = load i32, i32* %21, align 4
  %179 = call i32 @hypertable_check_associated_schema_permissions(i32 %177, i32 %178)
  store i32 %179, i32* %20, align 4
  %180 = load i32, i32* %20, align 4
  %181 = call i64 @OidIsValid(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %174
  %184 = load i32*, i32** %15, align 8
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @NameStr(i32 %185)
  %187 = call i32 @hypertable_create_schema(i32 %186)
  br label %188

188:                                              ; preds = %183, %174
  %189 = load i32, i32* %10, align 4
  %190 = call i64 @ts_relation_has_transition_table_trigger(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load i32, i32* @ERROR, align 4
  %194 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %195 = call i32 @errcode(i32 %194)
  %196 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0))
  %197 = call i32 @ereport(i32 %193, i32 %196)
  br label %198

198:                                              ; preds = %192, %188
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %200 = icmp eq %struct.TYPE_12__* null, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %10, align 4
  %203 = call %struct.TYPE_12__* @ts_chunk_sizing_info_get_default_disabled(i32 %202)
  store %struct.TYPE_12__* %203, %struct.TYPE_12__** %17, align 8
  br label %204

204:                                              ; preds = %201, %198
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @OidIsValid(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %204
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %212 = call i32 @ts_chunk_adaptive_sizing_info_validate(%struct.TYPE_12__* %211)
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %210
  %218 = load i32, i32* @NOTICE, align 4
  %219 = load i32, i32* @ERRCODE_WARNING, align 4
  %220 = call i32 @errcode(i32 %219)
  %221 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.15, i64 0, i64 0))
  %222 = call i32 @ereport(i32 %218, i32 %221)
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  store i32 1, i32* %224, align 8
  br label %225

225:                                              ; preds = %217, %210
  br label %232

226:                                              ; preds = %204
  %227 = load i32, i32* @ERROR, align 4
  %228 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %229 = call i32 @errcode(i32 %228)
  %230 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0))
  %231 = call i32 @ereport(i32 %227, i32 %230)
  br label %232

232:                                              ; preds = %226, %225
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %234 = call i32 @ts_dimension_info_validate(%struct.TYPE_11__* %233)
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %236 = call i64 @DIMENSION_INFO_IS_SET(%struct.TYPE_11__* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %240 = call i32 @ts_dimension_info_validate(%struct.TYPE_11__* %239)
  br label %241

241:                                              ; preds = %238, %232
  %242 = load i32, i32* %10, align 4
  %243 = call i32 @get_rel_namespace(i32 %242)
  %244 = call i32 @get_namespace_name(i32 %243)
  %245 = call i32 @namestrcpy(i32* %24, i32 %244)
  %246 = load i32, i32* %10, align 4
  %247 = call i32 @get_rel_name(i32 %246)
  %248 = call i32 @namestrcpy(i32* %25, i32 %247)
  %249 = load i32, i32* %11, align 4
  %250 = load i32*, i32** %15, align 8
  %251 = load i32*, i32** %16, align 8
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %260 = call i64 @DIMENSION_INFO_IS_SET(%struct.TYPE_11__* %259)
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 2, i32 1
  %264 = call i32 @hypertable_insert(i32 %249, i32* %24, i32* %25, i32* %250, i32* %251, i32* %253, i32* %255, i64 %258, i32 %263, i32 0)
  %265 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %265, i32** %18, align 8
  %266 = load i32*, i32** %18, align 8
  %267 = load i32, i32* %10, align 4
  %268 = call i8* @ts_hypertable_cache_get_entry(i32* %266, i32 %267)
  %269 = bitcast i8* %268 to i32*
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  store i32* %269, i32** %271, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = icmp ne i32* %274, null
  %276 = zext i1 %275 to i32
  %277 = call i32 @Assert(i32 %276)
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %279 = call i32 @ts_dimension_add_from_info(%struct.TYPE_11__* %278)
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %281 = call i64 @DIMENSION_INFO_IS_SET(%struct.TYPE_11__* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %241
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 1
  store i32* %286, i32** %288, align 8
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %290 = call i32 @ts_dimension_add_from_info(%struct.TYPE_11__* %289)
  br label %291

291:                                              ; preds = %283, %241
  %292 = load i32*, i32** %18, align 8
  %293 = call i32 @ts_cache_release(i32* %292)
  %294 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %294, i32** %18, align 8
  %295 = load i32*, i32** %18, align 8
  %296 = load i32, i32* %10, align 4
  %297 = call i8* @ts_hypertable_cache_get_entry(i32* %295, i32 %296)
  %298 = bitcast i8* %297 to i32*
  store i32* %298, i32** %19, align 8
  %299 = load i32*, i32** %19, align 8
  %300 = icmp ne i32* %299, null
  %301 = zext i1 %300 to i32
  %302 = call i32 @Assert(i32 %301)
  %303 = load i32*, i32** %19, align 8
  %304 = call i32 @ts_indexing_verify_indexes(i32* %303)
  %305 = load i32, i32* %22, align 4
  %306 = call i64 @OidIsValid(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %291
  %309 = load i32, i32* %22, align 4
  %310 = call i32 @get_tablespace_name(i32 %309)
  %311 = call i32 @namestrcpy(i32* %29, i32 %310)
  %312 = load i32, i32* %10, align 4
  %313 = call i32 @ts_tablespace_attach_internal(i32* %29, i32 %312, i32 0)
  br label %314

314:                                              ; preds = %308, %291
  %315 = load i32, i32* %27, align 4
  %316 = load i32, i32* @NoLock, align 4
  %317 = call i32 @heap_close(i32 %315, i32 %316)
  %318 = load i32, i32* %23, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %314
  %321 = load i32, i32* @NOTICE, align 4
  %322 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %323 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0))
  %324 = call i32 @ereport(i32 %321, i32 %323)
  %325 = load i32*, i32** %19, align 8
  %326 = load i32, i32* @AccessShareLock, align 4
  %327 = call i32 @timescaledb_move_from_table_to_chunks(i32* %325, i32 %326)
  br label %328

328:                                              ; preds = %320, %314
  %329 = load i32, i32* %10, align 4
  %330 = call i32 @insert_blocker_trigger_add(i32 %329)
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* @HYPERTABLE_CREATE_DISABLE_DEFAULT_INDEXES, align 4
  %333 = and i32 %331, %332
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %328
  %336 = load i32*, i32** %19, align 8
  %337 = call i32 @ts_indexing_create_default_indexes(i32* %336)
  br label %338

338:                                              ; preds = %335, %328
  %339 = load i32*, i32** %18, align 8
  %340 = call i32 @ts_cache_release(i32* %339)
  store i32 1, i32* %9, align 4
  br label %341

341:                                              ; preds = %338, %65, %44
  %342 = load i32, i32* %9, align 4
  ret i32 %342
}

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @get_rel_tablespace(i32) #1

declare dso_local i64 @ts_is_hypertable(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

declare dso_local i32 @ts_hypertable_permissions_check(i32, i32) #1

declare dso_local i32 @get_rel_relkind(i32) #1

declare dso_local i32 @hypertable_validate_constraints(i32) #1

declare dso_local i32 @relation_has_tuples(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @is_inheritance_table(i32) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i32 @table_is_logged(i32) #1

declare dso_local i64 @table_has_replica_identity(i32) #1

declare dso_local i64 @table_has_rules(i32) #1

declare dso_local i32 @namestrcpy(i32*, i32) #1

declare dso_local i32 @hypertable_check_associated_schema_permissions(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @hypertable_create_schema(i32) #1

declare dso_local i64 @ts_relation_has_transition_table_trigger(i32) #1

declare dso_local %struct.TYPE_12__* @ts_chunk_sizing_info_get_default_disabled(i32) #1

declare dso_local i32 @ts_chunk_adaptive_sizing_info_validate(%struct.TYPE_12__*) #1

declare dso_local i32 @ts_dimension_info_validate(%struct.TYPE_11__*) #1

declare dso_local i64 @DIMENSION_INFO_IS_SET(%struct.TYPE_11__*) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @get_rel_namespace(i32) #1

declare dso_local i32 @hypertable_insert(i32, i32*, i32*, i32*, i32*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local i8* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ts_dimension_add_from_info(%struct.TYPE_11__*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

declare dso_local i32 @ts_indexing_verify_indexes(i32*) #1

declare dso_local i32 @get_tablespace_name(i32) #1

declare dso_local i32 @ts_tablespace_attach_internal(i32*, i32, i32) #1

declare dso_local i32 @timescaledb_move_from_table_to_chunks(i32*, i32) #1

declare dso_local i32 @insert_blocker_trigger_add(i32) #1

declare dso_local i32 @ts_indexing_create_default_indexes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
