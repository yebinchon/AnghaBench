; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/extr_partialize_finalize.c_fa_perquery_state_init.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/extr_partialize_finalize.c_fa_perquery_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32*, i64* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_16__, i32, i32, i32, i32, %struct.TYPE_16__, i32, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i64, i32, i64, i32, i32, i32 }

@AGGFNOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cache lookup failed for aggregate %u\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"function calls with direct args are not supported by TimescaleDB finalize agg\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"no valid combine function for the aggregate specified in Timescale finalize call\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid number of input types\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_13__*)* @fa_perquery_state_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @fa_perquery_state_init(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %19 = call i64 @PG_ARGISNULL(i32 2)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %26

22:                                               ; preds = %1
  %23 = call i32* @PG_GETARG_NAME(i32 2)
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @NameStr(i32 %24)
  br label %26

26:                                               ; preds = %22, %21
  %27 = phi i8* [ null, %21 ], [ %25, %22 ]
  store i8* %27, i8** %3, align 8
  %28 = call i64 @PG_ARGISNULL(i32 3)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %35

31:                                               ; preds = %26
  %32 = call i32* @PG_GETARG_NAME(i32 3)
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @NameStr(i32 %33)
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi i8* [ null, %30 ], [ %34, %31 ]
  store i8* %36, i8** %4, align 8
  %37 = call i64 @PG_ARGISNULL(i32 4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %42

40:                                               ; preds = %35
  %41 = call i32* @PG_GETARG_ARRAYTYPE_P(i32 4)
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32* [ null, %39 ], [ %41, %40 ]
  store i32* %43, i32** %5, align 8
  %44 = call i32 @PG_GETARG_TEXT_PP(i32 1)
  %45 = call i32 @aggfnoid_from_aggname(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @collation_oid_from_name(i8* %46, i8* %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @MemoryContextSwitchTo(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %13, align 8
  %60 = load i32, i32* @AGGFNOID, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @SearchSysCache1(i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @HeapTupleIsValid(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %42
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i32, i8*, ...) @elog(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %42
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @GETSTRUCT(i32 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %10, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @ERROR, align 4
  %80 = call i32 (i32, i8*, ...) @elog(i32 %79, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %70
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @MemoryContextAlloc(i32 %82, i32 112)
  %84 = inttoptr i64 %83 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %84, %struct.TYPE_15__** %8, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 10
  store i32 %93, i32* %96, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 7
  store i32 %99, i32* %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 4
  store i32 %105, i32* %108, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @ReleaseSysCache(i32 %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @OidIsValid(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %81
  %118 = load i32, i32* @ERROR, align 4
  %119 = call i32 (i32, i8*, ...) @elog(i32 %118, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %81
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @fmgr_info_cxt(i32 %124, i32* %127, i32 %128)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 9
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32*, i32** %13, align 8
  %138 = bitcast i32* %137 to i8*
  %139 = bitcast %struct.TYPE_16__* %132 to { i32*, i64* }*
  %140 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %139, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = call i32 @InitFunctionCallInfoData(i32* %141, i64* %143, i32* %135, i32 2, i32 %136, i8* %138, i32* null)
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @OidIsValid(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %176

151:                                              ; preds = %120
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 5
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @fmgr_info_cxt(i32 %155, i32* %158, i32 %159)
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 6
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 5
  %167 = load i32, i32* %7, align 4
  %168 = load i32*, i32** %13, align 8
  %169 = bitcast i32* %168 to i8*
  %170 = bitcast %struct.TYPE_16__* %163 to { i32*, i64* }*
  %171 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %170, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = call i32 @InitFunctionCallInfoData(i32* %172, i64* %174, i32* %166, i32 1, i32 %167, i8* %169, i32* null)
  br label %210

176:                                              ; preds = %120
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 3
  %187 = call i32 @getTypeBinaryInputInfo(i32 %180, i32* %183, i32* %186)
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @fmgr_info_cxt(i32 %191, i32* %194, i32 %195)
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* @InvalidOid, align 4
  %204 = bitcast %struct.TYPE_16__* %199 to { i32*, i64* }*
  %205 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %204, i32 0, i32 1
  %208 = load i64*, i64** %207, align 8
  %209 = call i32 @InitFunctionCallInfoData(i32* %206, i64* %208, i32* %202, i32 3, i32 %203, i8* null, i32* null)
  br label %210

210:                                              ; preds = %176, %151
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @OidIsValid(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %317

217:                                              ; preds = %210
  store i32 1, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i64 0, i64* %16, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %217
  %223 = load i32*, i32** %5, align 8
  %224 = call i32* @get_input_types(i32* %223, i64* %16)
  store i32* %224, i32** %15, align 8
  %225 = load i64, i64* %16, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = add i64 %227, %225
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %14, align 4
  br label %230

230:                                              ; preds = %222, %217
  %231 = load i32, i32* %14, align 4
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @get_func_nargs(i32 %235)
  %237 = icmp ne i32 %231, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %230
  %239 = load i32, i32* @ERROR, align 4
  %240 = call i32 (i32, i8*, ...) @elog(i32 %239, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %241

241:                                              ; preds = %238, %230
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 1
  %249 = load i32, i32* %11, align 4
  %250 = call i32 @fmgr_info_cxt(i32 %245, i32* %248, i32 %249)
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = load i32, i32* %14, align 4
  %258 = load i32, i32* %7, align 4
  %259 = load i32*, i32** %13, align 8
  %260 = bitcast i32* %259 to i8*
  %261 = bitcast %struct.TYPE_16__* %253 to { i32*, i64* }*
  %262 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds { i32*, i64* }, { i32*, i64* }* %261, i32 0, i32 1
  %265 = load i64*, i64** %264, align 8
  %266 = call i32 @InitFunctionCallInfoData(i32* %263, i64* %265, i32* %256, i32 %257, i32 %258, i8* %260, i32* null)
  %267 = load i64, i64* %16, align 8
  %268 = icmp ugt i64 %267, 0
  br i1 %268, label %269, label %316

269:                                              ; preds = %241
  %270 = load i32*, i32** %15, align 8
  %271 = load i32, i32* %14, align 4
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load i32*, i32** %15, align 8
  %276 = load i64, i64* %16, align 8
  %277 = sub i64 %276, 1
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %7, align 4
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @build_aggregate_finalfn_expr(i32* %270, i32 %271, i32 %274, i32 %279, i32 %280, i32 %284, i32** %17)
  %286 = load i32*, i32** %17, align 8
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 1
  %290 = call i32 @fmgr_info_set_expr(i32* %286, i32* %289)
  store i32 1, i32* %18, align 4
  br label %291

291:                                              ; preds = %312, %269
  %292 = load i32, i32* %18, align 4
  %293 = load i32, i32* %14, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %315

295:                                              ; preds = %291
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 1
  %300 = load i64*, i64** %299, align 8
  %301 = load i32, i32* %18, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  store i64 0, i64* %303, align 8
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %18, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 1, i32* %311, align 4
  br label %312

312:                                              ; preds = %295
  %313 = load i32, i32* %18, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %18, align 4
  br label %291

315:                                              ; preds = %291
  br label %316

316:                                              ; preds = %315, %241
  br label %317

317:                                              ; preds = %316, %210
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %319 = bitcast %struct.TYPE_15__* %318 to i8*
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 0
  store i8* %319, i8** %323, align 8
  %324 = load i32, i32* %12, align 4
  %325 = call i32 @MemoryContextSwitchTo(i32 %324)
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  ret %struct.TYPE_15__* %326
}

declare dso_local i64 @PG_ARGISNULL(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32* @PG_GETARG_NAME(i32) #1

declare dso_local i32* @PG_GETARG_ARRAYTYPE_P(i32) #1

declare dso_local i32 @aggfnoid_from_aggname(i32) #1

declare dso_local i32 @PG_GETARG_TEXT_PP(i32) #1

declare dso_local i32 @collation_oid_from_name(i8*, i8*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @fmgr_info_cxt(i32, i32*, i32) #1

declare dso_local i32 @InitFunctionCallInfoData(i32*, i64*, i32*, i32, i32, i8*, i32*) #1

declare dso_local i32 @getTypeBinaryInputInfo(i32, i32*, i32*) #1

declare dso_local i32* @get_input_types(i32*, i64*) #1

declare dso_local i32 @get_func_nargs(i32) #1

declare dso_local i32 @build_aggregate_finalfn_expr(i32*, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @fmgr_info_set_expr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
