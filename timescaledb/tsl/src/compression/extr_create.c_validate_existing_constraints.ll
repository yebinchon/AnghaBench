; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_create.c_validate_existing_constraints.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_create.c_validate_existing_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@NIL = common dso_local global i32* null, align 8
@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@CONSTRAINT_CHECK = common dso_local global i64 0, align 8
@CONSTRAINT_TRIGGER = common dso_local global i64 0, align 8
@CONSTRAINT_EXCLUSION = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"constraint %s is not supported for compression\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Exclusion constraints are not supported on hypertables that are compressed.\00", align 1
@Anum_pg_constraint_conkey = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"null conkey for constraint %u\00", align 1
@INT2OID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"conkey is not a 1-D smallint array\00", align 1
@CONSTRAINT_FOREIGN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [75 x i8] c"constraint %s requires column %s to be a segment_by column for compression\00", align 1
@.str.5 = private unnamed_addr constant [98 x i8] c"Only segment by columns can be used in foreign keyconstraints on hypertables that are compressed.\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [87 x i8] c"constraint %s requires column %s to be a segment_by or order_by column for compression\00", align 1
@.str.7 = private unnamed_addr constant [100 x i8] c"Only segment by and order by columns can be used in constraints on hypertables that are compressed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, %struct.TYPE_10__*)* @validate_existing_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @validate_existing_constraints(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** @NIL, align 8
  store i32* %23, i32** %10, align 8
  %24 = load i32, i32* @ConstraintRelationId, align 4
  %25 = load i32, i32* @AccessShareLock, align 4
  %26 = call i32 @heap_open(i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %28 = load i32, i32* @BTEqualStrategyNumber, align 4
  %29 = load i32, i32* @F_OIDEQ, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ObjectIdGetDatum(i32 %30)
  %32 = call i32 @ScanKeyInit(i32* %8, i32 %27, i32 %28, i32 %29, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %35 = call i32 @systable_beginscan(i32 %33, i32 %34, i32 1, i32* null, i32 1, i32* %8)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %216, %57, %2
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @systable_getnext(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = call i64 @HeapTupleIsValid(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %217

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @GETSTRUCT(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %12, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CONSTRAINT_CHECK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %41
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CONSTRAINT_TRIGGER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %41
  br label %36

58:                                               ; preds = %51
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CONSTRAINT_EXCLUSION, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i32, i32* @ERROR, align 4
  %66 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %67 = call i32 @errcode(i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @NameStr(i32 %70)
  %72 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = call i32 @errhint(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @ereport(i32 %65, i32 %73)
  br label %215

75:                                               ; preds = %58
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @Anum_pg_constraint_conkey, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @RelationGetDescr(i32 %78)
  %80 = call i32 @heap_getattr(i32 %76, i32 %77, i32 %79, i32* %16)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load i32, i32* @ERROR, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @HeapTupleGetOid(i32 %85)
  %87 = call i32 (i32, i8*, ...) @elog(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %75
  %89 = load i32, i32* %17, align 4
  %90 = call i32* @DatumGetArrayTypeP(i32 %89)
  store i32* %90, i32** %11, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = call i32* @ARR_DIMS(i32* %91)
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %14, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @ARR_NDIM(i32* %95)
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %110, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %98
  %102 = load i32*, i32** %11, align 8
  %103 = call i64 @ARR_HASNULL(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = load i32*, i32** %11, align 8
  %107 = call i64 @ARR_ELEMTYPE(i32* %106)
  %108 = load i64, i64* @INT2OID, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105, %101, %98, %88
  %111 = load i32, i32* @ERROR, align 4
  %112 = call i32 (i32, i8*, ...) @elog(i32 %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32*, i32** %11, align 8
  %115 = call i64 @ARR_DATA_PTR(i32* %114)
  %116 = inttoptr i64 %115 to i64*
  store i64* %116, i64** %15, align 8
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %211, %113
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %214

121:                                              ; preds = %117
  %122 = load i64*, i64** %15, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = sub i64 %126, 1
  store i64 %127, i64* %18, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CONSTRAINT_FOREIGN, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %172

133:                                              ; preds = %121
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i64, i64* %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %142, label %161

142:                                              ; preds = %133
  %143 = load i32, i32* @ERROR, align 4
  %144 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %145 = call i32 @errcode(i32 %144)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @NameStr(i32 %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = load i64, i64* %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @NameStr(i32 %156)
  %158 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %157)
  %159 = call i32 @errhint(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.5, i64 0, i64 0))
  %160 = call i32 @ereport(i32 %143, i32 %159)
  br label %171

161:                                              ; preds = %133
  %162 = load i32, i32* @NAMEDATALEN, align 4
  %163 = call i32 @palloc0(i32 %162)
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = call i32 @namecpy(i32 %164, i32* %166)
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %19, align 4
  %170 = call i32* @lappend(i32* %168, i32 %169)
  store i32* %170, i32** %10, align 8
  br label %171

171:                                              ; preds = %161, %142
  br label %210

172:                                              ; preds = %121
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = load i64, i64* %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %179, 1
  br i1 %180, label %181, label %209

181:                                              ; preds = %172
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = load i64, i64* %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %188, 1
  br i1 %189, label %190, label %209

190:                                              ; preds = %181
  %191 = load i32, i32* @ERROR, align 4
  %192 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %193 = call i32 @errcode(i32 %192)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @NameStr(i32 %196)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = load i64, i64* %18, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @NameStr(i32 %204)
  %206 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.6, i64 0, i64 0), i32 %197, i32 %205)
  %207 = call i32 @errhint(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.7, i64 0, i64 0))
  %208 = call i32 @ereport(i32 %191, i32 %207)
  br label %209

209:                                              ; preds = %190, %181, %172
  br label %210

210:                                              ; preds = %209, %171
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %117

214:                                              ; preds = %117
  br label %215

215:                                              ; preds = %214, %64
  br label %216

216:                                              ; preds = %215
  br label %36

217:                                              ; preds = %36
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @systable_endscan(i32 %218)
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @AccessShareLock, align 4
  %222 = call i32 @heap_close(i32 %220, i32 %221)
  %223 = load i32*, i32** %10, align 8
  ret i32* %223
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @HeapTupleGetOid(i32) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

declare dso_local i32 @palloc0(i32) #1

declare dso_local i32 @namecpy(i32, i32*) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
