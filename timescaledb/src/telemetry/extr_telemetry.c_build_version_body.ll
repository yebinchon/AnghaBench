; ModuleID = '/home/carl/AnghaBench/timescaledb/src/telemetry/extr_telemetry.c_build_version_body.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/telemetry/extr_telemetry.c_build_version_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32 }

@WJB_BEGIN_OBJECT = common dso_local global i32 0, align 4
@REQ_DB_UUID = common dso_local global i32 0, align 4
@uuid_out = common dso_local global i32 0, align 4
@REQ_EXPORTED_DB_UUID = common dso_local global i32 0, align 4
@REQ_INSTALL_TIME = common dso_local global i32 0, align 4
@timestamptz_out = common dso_local global i32 0, align 4
@REQ_INSTALL_METHOD = common dso_local global i32 0, align 4
@TIMESCALEDB_INSTALL_METHOD = common dso_local global i8* null, align 8
@REQ_OS = common dso_local global i32 0, align 4
@REQ_OS_VERSION = common dso_local global i32 0, align 4
@REQ_OS_RELEASE = common dso_local global i32 0, align 4
@REQ_OS_VERSION_PRETTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@REQ_PS_VERSION = common dso_local global i32 0, align 4
@REQ_TS_VERSION = common dso_local global i32 0, align 4
@TIMESCALEDB_VERSION_MOD = common dso_local global i8* null, align 8
@REQ_BUILD_OS = common dso_local global i32 0, align 4
@BUILD_OS_NAME = common dso_local global i8* null, align 8
@REQ_BUILD_OS_VERSION = common dso_local global i32 0, align 4
@BUILD_OS_VERSION = common dso_local global i8* null, align 8
@REQ_BUILD_ARCHITECTURE = common dso_local global i32 0, align 4
@BUILD_PROCESSOR = common dso_local global i8* null, align 8
@REQ_BUILD_ARCHITECTURE_BIT_SIZE = common dso_local global i32 0, align 4
@REQ_DATA_VOLUME = common dso_local global i32 0, align 4
@REQ_NUM_HYPERTABLES = common dso_local global i32 0, align 4
@REQ_NUM_COMPRESSED_HYPERTABLES = common dso_local global i32 0, align 4
@REQ_NUM_CONTINUOUS_AGGS = common dso_local global i32 0, align 4
@REQ_NUM_REORDER_POLICIES = common dso_local global i32 0, align 4
@REQ_NUM_DROP_CHUNKS_POLICIES = common dso_local global i32 0, align 4
@REQ_COMPRESSED_HEAP_SIZE = common dso_local global i32 0, align 4
@REQ_COMPRESSED_INDEX_SIZE = common dso_local global i32 0, align 4
@REQ_COMPRESSED_TOAST_SIZE = common dso_local global i32 0, align 4
@REQ_UNCOMPRESSED_HEAP_SIZE = common dso_local global i32 0, align 4
@REQ_UNCOMPRESSED_INDEX_SIZE = common dso_local global i32 0, align 4
@REQ_UNCOMPRESSED_TOAST_SIZE = common dso_local global i32 0, align 4
@jbvString = common dso_local global i8* null, align 8
@REQ_RELATED_EXTENSIONS = common dso_local global i8* null, align 8
@WJB_KEY = common dso_local global i32 0, align 4
@REQ_LICENSE_INFO = common dso_local global i8* null, align 8
@ts_last_tune_time = common dso_local global i8* null, align 8
@REQ_TS_LAST_TUNE_TIME = common dso_local global i32 0, align 4
@ts_last_tune_version = common dso_local global i8* null, align 8
@REQ_TS_LAST_TUNE_VERSION = common dso_local global i32 0, align 4
@ts_telemetry_cloud = common dso_local global i8* null, align 8
@REQ_INSTANCE_METADATA = common dso_local global i8* null, align 8
@REQ_TS_TELEMETRY_CLOUD = common dso_local global i32 0, align 4
@WJB_END_OBJECT = common dso_local global i32 0, align 4
@REQ_METADATA = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @build_version_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_version_body() #0 {
  %1 = alloca %struct.TYPE_18__, align 8
  %2 = alloca %struct.TYPE_18__, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__, align 4
  store i32* null, i32** %7, align 8
  call void (%struct.TYPE_17__*, ...) @ts_compression_chunk_size_totals(%struct.TYPE_17__* sret %8)
  %9 = load i32, i32* @WJB_BEGIN_OBJECT, align 4
  %10 = call %struct.TYPE_18__* @pushJsonbValue(i32** %7, i32 %9, %struct.TYPE_18__* null)
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* @REQ_DB_UUID, align 4
  %13 = load i32, i32* @uuid_out, align 4
  %14 = call i32 (...) @ts_telemetry_metadata_get_uuid()
  %15 = call i32 @DirectFunctionCall1(i32 %13, i32 %14)
  %16 = call i8* @DatumGetCString(i32 %15)
  %17 = call i32 @ts_jsonb_add_str(i32* %11, i32 %12, i8* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @REQ_EXPORTED_DB_UUID, align 4
  %20 = load i32, i32* @uuid_out, align 4
  %21 = call i32 (...) @ts_telemetry_metadata_get_exported_uuid()
  %22 = call i32 @DirectFunctionCall1(i32 %20, i32 %21)
  %23 = call i8* @DatumGetCString(i32 %22)
  %24 = call i32 @ts_jsonb_add_str(i32* %18, i32 %19, i8* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @REQ_INSTALL_TIME, align 4
  %27 = load i32, i32* @timestamptz_out, align 4
  %28 = call i32 (...) @ts_telemetry_metadata_get_install_timestamp()
  %29 = call i32 @DirectFunctionCall1(i32 %27, i32 %28)
  %30 = call i8* @DatumGetCString(i32 %29)
  %31 = call i32 @ts_jsonb_add_str(i32* %25, i32 %26, i8* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @REQ_INSTALL_METHOD, align 4
  %34 = load i8*, i8** @TIMESCALEDB_INSTALL_METHOD, align 8
  %35 = call i32 @ts_jsonb_add_str(i32* %32, i32 %33, i8* %34)
  %36 = call i64 @ts_version_get_os_info(%struct.TYPE_16__* %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %0
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @REQ_OS, align 4
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @ts_jsonb_add_str(i32* %39, i32 %40, i8* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @REQ_OS_VERSION, align 4
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @ts_jsonb_add_str(i32* %44, i32 %45, i8* %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @REQ_OS_RELEASE, align 4
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @ts_jsonb_add_str(i32* %49, i32 %50, i8* %52)
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %38
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @REQ_OS_VERSION_PRETTY, align 4
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @ts_jsonb_add_str(i32* %58, i32 %59, i8* %61)
  br label %63

63:                                               ; preds = %57, %38
  br label %68

64:                                               ; preds = %0
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @REQ_OS, align 4
  %67 = call i32 @ts_jsonb_add_str(i32* %65, i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %63
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @REQ_PS_VERSION, align 4
  %71 = call i8* (...) @get_pgversion_string()
  %72 = call i32 @ts_jsonb_add_str(i32* %69, i32 %70, i8* %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @REQ_TS_VERSION, align 4
  %75 = load i8*, i8** @TIMESCALEDB_VERSION_MOD, align 8
  %76 = call i32 @ts_jsonb_add_str(i32* %73, i32 %74, i8* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* @REQ_BUILD_OS, align 4
  %79 = load i8*, i8** @BUILD_OS_NAME, align 8
  %80 = call i32 @ts_jsonb_add_str(i32* %77, i32 %78, i8* %79)
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* @REQ_BUILD_OS_VERSION, align 4
  %83 = load i8*, i8** @BUILD_OS_VERSION, align 8
  %84 = call i32 @ts_jsonb_add_str(i32* %81, i32 %82, i8* %83)
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @REQ_BUILD_ARCHITECTURE, align 4
  %87 = load i8*, i8** @BUILD_PROCESSOR, align 8
  %88 = call i32 @ts_jsonb_add_str(i32* %85, i32 %86, i8* %87)
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @REQ_BUILD_ARCHITECTURE_BIT_SIZE, align 4
  %91 = call i8* (...) @get_architecture_bit_size()
  %92 = call i32 @ts_jsonb_add_str(i32* %89, i32 %90, i8* %91)
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* @REQ_DATA_VOLUME, align 4
  %95 = call i8* (...) @get_database_size()
  %96 = call i32 @ts_jsonb_add_str(i32* %93, i32 %94, i8* %95)
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @REQ_NUM_HYPERTABLES, align 4
  %99 = call i8* (...) @get_num_hypertables()
  %100 = call i32 @ts_jsonb_add_str(i32* %97, i32 %98, i8* %99)
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* @REQ_NUM_COMPRESSED_HYPERTABLES, align 4
  %103 = call i8* (...) @get_num_compressed_hypertables()
  %104 = call i32 @ts_jsonb_add_str(i32* %101, i32 %102, i8* %103)
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* @REQ_NUM_CONTINUOUS_AGGS, align 4
  %107 = call i8* (...) @get_num_continuous_aggs()
  %108 = call i32 @ts_jsonb_add_str(i32* %105, i32 %106, i8* %107)
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* @REQ_NUM_REORDER_POLICIES, align 4
  %111 = call i8* (...) @get_num_reorder_policies()
  %112 = call i32 @ts_jsonb_add_str(i32* %109, i32 %110, i8* %111)
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* @REQ_NUM_DROP_CHUNKS_POLICIES, align 4
  %115 = call i8* (...) @get_num_drop_chunks_policies()
  %116 = call i32 @ts_jsonb_add_str(i32* %113, i32 %114, i8* %115)
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* @REQ_COMPRESSED_HEAP_SIZE, align 4
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @get_size(i32 %120)
  %122 = call i32 @ts_jsonb_add_str(i32* %117, i32 %118, i8* %121)
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* @REQ_COMPRESSED_INDEX_SIZE, align 4
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @get_size(i32 %126)
  %128 = call i32 @ts_jsonb_add_str(i32* %123, i32 %124, i8* %127)
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* @REQ_COMPRESSED_TOAST_SIZE, align 4
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @get_size(i32 %132)
  %134 = call i32 @ts_jsonb_add_str(i32* %129, i32 %130, i8* %133)
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* @REQ_UNCOMPRESSED_HEAP_SIZE, align 4
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @get_size(i32 %138)
  %140 = call i32 @ts_jsonb_add_str(i32* %135, i32 %136, i8* %139)
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* @REQ_UNCOMPRESSED_INDEX_SIZE, align 4
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @get_size(i32 %144)
  %146 = call i32 @ts_jsonb_add_str(i32* %141, i32 %142, i8* %145)
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* @REQ_UNCOMPRESSED_TOAST_SIZE, align 4
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @get_size(i32 %150)
  %152 = call i32 @ts_jsonb_add_str(i32* %147, i32 %148, i8* %151)
  %153 = load i8*, i8** @jbvString, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 1
  store i8* %153, i8** %154, align 8
  %155 = load i8*, i8** @REQ_RELATED_EXTENSIONS, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  store i8* %155, i8** %158, align 8
  %159 = load i8*, i8** @REQ_RELATED_EXTENSIONS, align 8
  %160 = call i8* @strlen(i8* %159)
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  store i8* %160, i8** %163, align 8
  %164 = load i32, i32* @WJB_KEY, align 4
  %165 = call %struct.TYPE_18__* @pushJsonbValue(i32** %7, i32 %164, %struct.TYPE_18__* %1)
  %166 = load i32*, i32** %7, align 8
  %167 = call i32 @add_related_extensions(i32* %166)
  %168 = load i8*, i8** @jbvString, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 1
  store i8* %168, i8** %169, align 8
  %170 = load i8*, i8** @REQ_LICENSE_INFO, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  store i8* %170, i8** %173, align 8
  %174 = load i8*, i8** @REQ_LICENSE_INFO, align 8
  %175 = call i8* @strlen(i8* %174)
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  store i8* %175, i8** %178, align 8
  %179 = load i32, i32* @WJB_KEY, align 4
  %180 = call %struct.TYPE_18__* @pushJsonbValue(i32** %7, i32 %179, %struct.TYPE_18__* %2)
  %181 = load i32*, i32** %7, align 8
  %182 = call i32 @add_license_info(i32* %181)
  %183 = load i8*, i8** @ts_last_tune_time, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %68
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* @REQ_TS_LAST_TUNE_TIME, align 4
  %188 = load i8*, i8** @ts_last_tune_time, align 8
  %189 = call i32 @ts_jsonb_add_str(i32* %186, i32 %187, i8* %188)
  br label %190

190:                                              ; preds = %185, %68
  %191 = load i8*, i8** @ts_last_tune_version, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load i32*, i32** %7, align 8
  %195 = load i32, i32* @REQ_TS_LAST_TUNE_VERSION, align 4
  %196 = load i8*, i8** @ts_last_tune_version, align 8
  %197 = call i32 @ts_jsonb_add_str(i32* %194, i32 %195, i8* %196)
  br label %198

198:                                              ; preds = %193, %190
  %199 = load i8*, i8** @ts_telemetry_cloud, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %223

201:                                              ; preds = %198
  %202 = load i8*, i8** @jbvString, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 1
  store i8* %202, i8** %203, align 8
  %204 = load i8*, i8** @REQ_INSTANCE_METADATA, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  store i8* %204, i8** %207, align 8
  %208 = load i8*, i8** @REQ_INSTANCE_METADATA, align 8
  %209 = call i8* @strlen(i8* %208)
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  store i8* %209, i8** %212, align 8
  %213 = load i32, i32* @WJB_KEY, align 4
  %214 = call %struct.TYPE_18__* @pushJsonbValue(i32** %7, i32 %213, %struct.TYPE_18__* %1)
  %215 = load i32, i32* @WJB_BEGIN_OBJECT, align 4
  %216 = call %struct.TYPE_18__* @pushJsonbValue(i32** %7, i32 %215, %struct.TYPE_18__* null)
  %217 = load i32*, i32** %7, align 8
  %218 = load i32, i32* @REQ_TS_TELEMETRY_CLOUD, align 4
  %219 = load i8*, i8** @ts_telemetry_cloud, align 8
  %220 = call i32 @ts_jsonb_add_str(i32* %217, i32 %218, i8* %219)
  %221 = load i32, i32* @WJB_END_OBJECT, align 4
  %222 = call %struct.TYPE_18__* @pushJsonbValue(i32** %7, i32 %221, %struct.TYPE_18__* null)
  br label %223

223:                                              ; preds = %201, %198
  %224 = load i8*, i8** @jbvString, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 1
  store i8* %224, i8** %225, align 8
  %226 = load i8*, i8** @REQ_METADATA, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 1
  store i8* %226, i8** %229, align 8
  %230 = load i8*, i8** @REQ_METADATA, align 8
  %231 = call i8* @strlen(i8* %230)
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  store i8* %231, i8** %234, align 8
  %235 = load i32, i32* @WJB_KEY, align 4
  %236 = call %struct.TYPE_18__* @pushJsonbValue(i32** %7, i32 %235, %struct.TYPE_18__* %1)
  %237 = load i32, i32* @WJB_BEGIN_OBJECT, align 4
  %238 = call %struct.TYPE_18__* @pushJsonbValue(i32** %7, i32 %237, %struct.TYPE_18__* null)
  %239 = load i32*, i32** %7, align 8
  %240 = call i32 @ts_telemetry_metadata_add_values(i32* %239)
  %241 = load i32, i32* @WJB_END_OBJECT, align 4
  %242 = call %struct.TYPE_18__* @pushJsonbValue(i32** %7, i32 %241, %struct.TYPE_18__* null)
  %243 = load i32, i32* @WJB_END_OBJECT, align 4
  %244 = call %struct.TYPE_18__* @pushJsonbValue(i32** %7, i32 %243, %struct.TYPE_18__* null)
  store %struct.TYPE_18__* %244, %struct.TYPE_18__** %3, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %246 = call %struct.TYPE_19__* @JsonbValueToJsonb(%struct.TYPE_18__* %245)
  store %struct.TYPE_19__* %246, %struct.TYPE_19__** %4, align 8
  %247 = call i32 (...) @makeStringInfo()
  store i32 %247, i32* %5, align 4
  %248 = load i32, i32* %5, align 4
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %252 = call i32 @VARSIZE(%struct.TYPE_19__* %251)
  %253 = call i32 @JsonbToCString(i32 %248, i32* %250, i32 %252)
  %254 = load i32, i32* %5, align 4
  ret i32 %254
}

declare dso_local void @ts_compression_chunk_size_totals(%struct.TYPE_17__* sret, ...) #1

declare dso_local %struct.TYPE_18__* @pushJsonbValue(i32**, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @ts_jsonb_add_str(i32*, i32, i8*) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @ts_telemetry_metadata_get_uuid(...) #1

declare dso_local i32 @ts_telemetry_metadata_get_exported_uuid(...) #1

declare dso_local i32 @ts_telemetry_metadata_get_install_timestamp(...) #1

declare dso_local i64 @ts_version_get_os_info(%struct.TYPE_16__*) #1

declare dso_local i8* @get_pgversion_string(...) #1

declare dso_local i8* @get_architecture_bit_size(...) #1

declare dso_local i8* @get_database_size(...) #1

declare dso_local i8* @get_num_hypertables(...) #1

declare dso_local i8* @get_num_compressed_hypertables(...) #1

declare dso_local i8* @get_num_continuous_aggs(...) #1

declare dso_local i8* @get_num_reorder_policies(...) #1

declare dso_local i8* @get_num_drop_chunks_policies(...) #1

declare dso_local i8* @get_size(i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @add_related_extensions(i32*) #1

declare dso_local i32 @add_license_info(i32*) #1

declare dso_local i32 @ts_telemetry_metadata_add_values(i32*) #1

declare dso_local %struct.TYPE_19__* @JsonbValueToJsonb(%struct.TYPE_18__*) #1

declare dso_local i32 @makeStringInfo(...) #1

declare dso_local i32 @JsonbToCString(i32, i32*, i32) #1

declare dso_local i32 @VARSIZE(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
