; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/extr_reorder.c_timescale_reorder_rel.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/extr_reorder.c_timescale_reorder_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Reorder must specify an index.\00", align 1
@ExclusiveLock = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"table disappeared during reorder.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ownership change during reorder.\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"cannot reorder a system relation.\00", align 1
@RELPERSISTENCE_PERMANENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"can only reorder a permanent table.\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"cannot reorder a shared catalog\00", align 1
@RELKIND_RELATION = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"can only reorder a relation.\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"cannot reorder a table with OIDs.\00", align 1
@RELOID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"index disappeared during reorder\00", align 1
@INDEXRELID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"invalid index heap during reorder\00", align 1
@ERRCODE_ASSERT_FAILURE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"CLUSTER\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timescale_reorder_rel(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @OidIsValid(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 @elog(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %6
  %23 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ExclusiveLock, align 4
  %26 = call %struct.TYPE_11__* @try_relation_open(i32 %24, i32 %25)
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %13, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @WARNING, align 4
  %31 = load i32, i32* @ERRCODE_WARNING, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %30, i32 %33)
  br label %175

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (...) @GetUserId()
  %38 = call i32 @pg_class_ownercheck(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %42 = load i32, i32* @ExclusiveLock, align 4
  %43 = call i32 @relation_close(%struct.TYPE_11__* %41, i32 %42)
  %44 = load i32, i32* @WARNING, align 4
  %45 = load i32, i32* @ERRCODE_WARNING, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %44, i32 %47)
  br label %175

49:                                               ; preds = %35
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %51 = call i64 @IsSystemRelation(%struct.TYPE_11__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %49
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RELPERSISTENCE_PERMANENT, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load i32, i32* @ERROR, align 4
  %69 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %70 = call i32 @errcode(i32 %69)
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %72 = call i32 @ereport(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %59
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @ERROR, align 4
  %82 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %83 = call i32 @errcode(i32 %82)
  %84 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %85 = call i32 @ereport(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @RELKIND_RELATION, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %97 = call i32 @errcode(i32 %96)
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %99 = call i32 @ereport(i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %94, %86
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* @ERROR, align 4
  %109 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %110 = call i32 @errcode(i32 %109)
  %111 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %112 = call i32 @ereport(i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %107, %100
  %114 = load i32, i32* @RELOID, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @ObjectIdGetDatum(i32 %115)
  %117 = call i32 @SearchSysCacheExists1(i32 %114, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* @WARNING, align 4
  %121 = load i32, i32* @ERRCODE_WARNING, align 4
  %122 = call i32 @errcode(i32 %121)
  %123 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %124 = call i32 @ereport(i32 %120, i32 %123)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %126 = load i32, i32* @ExclusiveLock, align 4
  %127 = call i32 @relation_close(%struct.TYPE_11__* %125, i32 %126)
  br label %175

128:                                              ; preds = %113
  %129 = load i32, i32* @INDEXRELID, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @ObjectIdGetDatum(i32 %130)
  %132 = call i32 @SearchSysCache1(i32 %129, i32 %131)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @HeapTupleIsValid(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %128
  %137 = load i32, i32* @WARNING, align 4
  %138 = load i32, i32* @ERRCODE_WARNING, align 4
  %139 = call i32 @errcode(i32 %138)
  %140 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %141 = call i32 @ereport(i32 %137, i32 %140)
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %143 = load i32, i32* @ExclusiveLock, align 4
  %144 = call i32 @relation_close(%struct.TYPE_11__* %142, i32 %143)
  br label %175

145:                                              ; preds = %128
  %146 = load i32, i32* %14, align 4
  %147 = call i64 @GETSTRUCT(i32 %146)
  %148 = inttoptr i64 %147 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %148, %struct.TYPE_12__** %15, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %145
  %154 = load i32, i32* @ERROR, align 4
  %155 = load i32, i32* @ERRCODE_ASSERT_FAILURE, align 4
  %156 = call i32 @errcode(i32 %155)
  %157 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %158 = call i32 @ereport(i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %153, %145
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @ReleaseSysCache(i32 %160)
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %163 = call i32 @CheckTableNotInUse(%struct.TYPE_11__* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @ExclusiveLock, align 4
  %167 = call i32 @check_index_is_clusterable(%struct.TYPE_11__* %164, i32 %165, i32 1, i32 %166)
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @timescale_rebuild_relation(%struct.TYPE_11__* %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %159, %136, %119, %40, %29
  ret void
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local %struct.TYPE_11__* @try_relation_open(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @pg_class_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @relation_close(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @IsSystemRelation(%struct.TYPE_11__*) #1

declare dso_local i32 @SearchSysCacheExists1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @CheckTableNotInUse(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @check_index_is_clusterable(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @timescale_rebuild_relation(%struct.TYPE_11__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
