; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/extr_reorder.c_swap_relation_files.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/extr_reorder.c_swap_relation_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i8, i64, i64, i8*, i32, i8*, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i8* }

@RelationRelationId = common dso_local global i8* null, align 8
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot reorder mapped relation \22%s\22.\00", align 1
@RELKIND_INDEX = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"cannot swap toast files by content when there's only one\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"expected one dependency record for TOAST table, found %ld\00", align 1
@DEPENDENCY_INTERNAL = common dso_local global i32 0, align 4
@RELKIND_TOASTVALUE = common dso_local global i64 0, align 8
@AccessExclusiveLock = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@InvalidMultiXactId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32, i32, i32)* @swap_relation_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_relation_files(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_14__, align 8
  %27 = alloca %struct.TYPE_14__, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %31 = load i8*, i8** @RelationRelationId, align 8
  %32 = load i32, i32* @RowExclusiveLock, align 4
  %33 = call i32 @heap_open(i8* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @RELOID, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @ObjectIdGetDatum(i64 %35)
  %37 = call %struct.TYPE_15__* @SearchSysCacheCopy1(i32 %34, i32 %36)
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %14, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %39 = call i32 @HeapTupleIsValid(%struct.TYPE_15__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %6
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 (i32, i8*, ...) @elog(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %41, %6
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %47 = call i64 @GETSTRUCT(%struct.TYPE_15__* %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %16, align 8
  %49 = load i32, i32* @RELOID, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @ObjectIdGetDatum(i64 %50)
  %52 = call %struct.TYPE_15__* @SearchSysCacheCopy1(i32 %49, i32 %51)
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %15, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %54 = call i32 @HeapTupleIsValid(%struct.TYPE_15__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i64, i64* %8, align 8
  %59 = call i32 (i32, i8*, ...) @elog(i32 %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %56, %45
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %62 = call i64 @GETSTRUCT(%struct.TYPE_15__* %61)
  %63 = inttoptr i64 %62 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %17, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %18, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %19, align 8
  %70 = load i64, i64* %18, align 8
  %71 = call i32 @OidIsValid(i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load i64, i64* %19, align 8
  %75 = call i32 @OidIsValid(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %73, %60
  %78 = load i32, i32* @ERROR, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @NameStr(i32 %81)
  %83 = call i32 (i32, i8*, ...) @elog(i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %77, %73
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %20, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %20, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %20, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %20, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load i8, i8* %108, align 8
  store i8 %109, i8* %21, align 1
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = load i8, i8* %111, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  store i8 %112, i8* %114, align 8
  %115 = load i8, i8* %21, align 1
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  store i8 %115, i8* %117, align 8
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %84
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %20, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  %129 = load i64, i64* %20, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %120, %84
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @RELKIND_INDEX, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @TransactionIdIsNormal(i32 %139)
  %141 = call i32 @Assert(i32 %140)
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 9
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @MultiXactIdIsValid(i32 %145)
  %147 = call i32 @Assert(i32 %146)
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 8
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %138, %132
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 7
  %154 = load i8*, i8** %153, align 8
  store i8* %154, i8** %22, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 7
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 7
  store i8* %157, i8** %159, align 8
  %160 = load i8*, i8** %22, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 7
  store i8* %160, i8** %162, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %23, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %23, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 6
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 5
  %176 = load i8*, i8** %175, align 8
  store i8* %176, i8** %24, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 5
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 5
  store i8* %179, i8** %181, align 8
  %182 = load i8*, i8** %24, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 5
  store i8* %182, i8** %184, align 8
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @CatalogOpenIndexes(i32 %185)
  store i32 %186, i32* %25, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %191 = load i32, i32* %25, align 4
  %192 = call i32 @CatalogTupleUpdateWithInfo(i32 %187, i32* %189, %struct.TYPE_15__* %190, i32 %191)
  %193 = load i32, i32* %13, align 4
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %197 = load i32, i32* %25, align 4
  %198 = call i32 @CatalogTupleUpdateWithInfo(i32 %193, i32* %195, %struct.TYPE_15__* %196, i32 %197)
  %199 = load i32, i32* %25, align 4
  %200 = call i32 @CatalogCloseIndexes(i32 %199)
  %201 = load i8*, i8** @RelationRelationId, align 8
  %202 = load i64, i64* %7, align 8
  %203 = load i32, i32* @InvalidOid, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @InvokeObjectPostAlterHookArg(i8* %201, i64 %202, i32 0, i32 %203, i32 %204)
  %206 = load i8*, i8** @RelationRelationId, align 8
  %207 = load i64, i64* %8, align 8
  %208 = load i32, i32* @InvalidOid, align 4
  %209 = call i32 @InvokeObjectPostAlterHookArg(i8* %206, i64 %207, i32 0, i32 %208, i32 1)
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %151
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %326

219:                                              ; preds = %214, %151
  %220 = load i32, i32* %9, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %247

222:                                              ; preds = %219
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %243

227:                                              ; preds = %222
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %227
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* %12, align 4
  call void @swap_relation_files(i64 %235, i64 %238, i32 %239, i32 %240, i32 %241, i32 %242)
  br label %246

243:                                              ; preds = %227, %222
  %244 = load i32, i32* @ERROR, align 4
  %245 = call i32 (i32, i8*, ...) @elog(i32 %244, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %246

246:                                              ; preds = %243, %232
  br label %325

247:                                              ; preds = %219
  %248 = load i64, i64* %7, align 8
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %250 = call i32 @IsSystemClass(i64 %248, %struct.TYPE_16__* %249)
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = call i32 @Assert(i32 %253)
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %247
  %260 = load i8*, i8** @RelationRelationId, align 8
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = call i64 @deleteDependencyRecordsFor(i8* %260, i64 %263, i32 0)
  store i64 %264, i64* %28, align 8
  %265 = load i64, i64* %28, align 8
  %266 = icmp ne i64 %265, 1
  br i1 %266, label %267, label %271

267:                                              ; preds = %259
  %268 = load i32, i32* @ERROR, align 4
  %269 = load i64, i64* %28, align 8
  %270 = call i32 (i32, i8*, ...) @elog(i32 %268, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %269)
  br label %271

271:                                              ; preds = %267, %259
  br label %272

272:                                              ; preds = %271, %247
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %290

277:                                              ; preds = %272
  %278 = load i8*, i8** @RelationRelationId, align 8
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = call i64 @deleteDependencyRecordsFor(i8* %278, i64 %281, i32 0)
  store i64 %282, i64* %28, align 8
  %283 = load i64, i64* %28, align 8
  %284 = icmp ne i64 %283, 1
  br i1 %284, label %285, label %289

285:                                              ; preds = %277
  %286 = load i32, i32* @ERROR, align 4
  %287 = load i64, i64* %28, align 8
  %288 = call i32 (i32, i8*, ...) @elog(i32 %286, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %287)
  br label %289

289:                                              ; preds = %285, %277
  br label %290

290:                                              ; preds = %289, %272
  %291 = load i8*, i8** @RelationRelationId, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  store i8* %291, i8** %292, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  store i64 0, i64* %293, align 8
  %294 = load i8*, i8** @RelationRelationId, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  store i8* %294, i8** %295, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  store i64 0, i64* %296, align 8
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %290
  %302 = load i64, i64* %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i64 %302, i64* %303, align 8
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i64 %306, i64* %307, align 8
  %308 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %309 = call i32 @recordDependencyOn(%struct.TYPE_14__* %27, %struct.TYPE_14__* %26, i32 %308)
  br label %310

310:                                              ; preds = %301, %290
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 3
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %324

315:                                              ; preds = %310
  %316 = load i64, i64* %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i64 %316, i64* %317, align 8
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i64 %320, i64* %321, align 8
  %322 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %323 = call i32 @recordDependencyOn(%struct.TYPE_14__* %27, %struct.TYPE_14__* %26, i32 %322)
  br label %324

324:                                              ; preds = %315, %310
  br label %325

325:                                              ; preds = %324, %246
  br label %326

326:                                              ; preds = %325, %214
  %327 = load i32, i32* %9, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %354

329:                                              ; preds = %326
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 4
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @RELKIND_TOASTVALUE, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %354

335:                                              ; preds = %329
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 4
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @RELKIND_TOASTVALUE, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %354

341:                                              ; preds = %335
  %342 = load i64, i64* %7, align 8
  %343 = load i32, i32* @AccessExclusiveLock, align 4
  %344 = call i64 @toast_get_valid_index(i64 %342, i32 %343)
  store i64 %344, i64* %29, align 8
  %345 = load i64, i64* %8, align 8
  %346 = load i32, i32* @AccessExclusiveLock, align 4
  %347 = call i64 @toast_get_valid_index(i64 %345, i32 %346)
  store i64 %347, i64* %30, align 8
  %348 = load i64, i64* %29, align 8
  %349 = load i64, i64* %30, align 8
  %350 = load i32, i32* %9, align 4
  %351 = load i32, i32* %10, align 4
  %352 = load i32, i32* @InvalidTransactionId, align 4
  %353 = load i32, i32* @InvalidMultiXactId, align 4
  call void @swap_relation_files(i64 %348, i64 %349, i32 %350, i32 %351, i32 %352, i32 %353)
  br label %354

354:                                              ; preds = %341, %335, %329, %326
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %356 = call i32 @heap_freetuple(%struct.TYPE_15__* %355)
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %358 = call i32 @heap_freetuple(%struct.TYPE_15__* %357)
  %359 = load i32, i32* %13, align 4
  %360 = load i32, i32* @RowExclusiveLock, align 4
  %361 = call i32 @heap_close(i32 %359, i32 %360)
  %362 = load i64, i64* %7, align 8
  %363 = call i32 @RelationCloseSmgrByOid(i64 %362)
  %364 = load i64, i64* %8, align 8
  %365 = call i32 @RelationCloseSmgrByOid(i64 %364)
  ret void
}

declare dso_local i32 @heap_open(i8*, i32) #1

declare dso_local %struct.TYPE_15__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_15__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_15__*) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i64 @NameStr(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsNormal(i32) #1

declare dso_local i32 @MultiXactIdIsValid(i32) #1

declare dso_local i32 @CatalogOpenIndexes(i32) #1

declare dso_local i32 @CatalogTupleUpdateWithInfo(i32, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @CatalogCloseIndexes(i32) #1

declare dso_local i32 @InvokeObjectPostAlterHookArg(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @IsSystemClass(i64, %struct.TYPE_16__*) #1

declare dso_local i64 @deleteDependencyRecordsFor(i8*, i64, i32) #1

declare dso_local i32 @recordDependencyOn(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @toast_get_valid_index(i64, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_15__*) #1

declare dso_local i32 @heap_close(i32, i32) #1

declare dso_local i32 @RelationCloseSmgrByOid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
