; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_ts_dimension_info_validate.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_ts_dimension_info_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_10__*, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid dimension info\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"cannot specify both the number of partitions and an interval\00", align 1
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"column \22%s\22 does not exist\00", align 1
@ATTNAME = common dso_local global i32 0, align 4
@Anum_pg_attribute_atttypid = common dso_local global i32 0, align 4
@Anum_pg_attribute_attnotnull = common dso_local global i32 0, align 4
@ERRCODE_TS_DUPLICATE_DIMENSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"column \22%s\22 is already a dimension\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"column \22%s\22 is already a dimension, skipping\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"invalid dimension type in configuration\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_dimension_info_validate(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = call i32 @DIMENSION_INFO_IS_SET(%struct.TYPE_12__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ERROR, align 4
  %12 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %13 = call i32 @errcode(i32 %12)
  %14 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @ereport(i32 %11, i32 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @OidIsValid(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @ereport(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %21, %16
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @NameStr(i32 %40)
  %42 = call i32 @SearchSysCacheAttName(i32 %36, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @HeapTupleIsValid(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @NameStr(i32 %53)
  %55 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = call i32 @ereport(i32 %47, i32 %55)
  br label %57

57:                                               ; preds = %46, %33
  %58 = load i32, i32* @ATTNAME, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @Anum_pg_attribute_atttypid, align 4
  %61 = call i32 @SysCacheGetAttr(i32 %58, i32 %59, i32 %60, i32* %6)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @Assert(i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @DatumGetObjectId(i32 %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @ATTNAME, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @Anum_pg_attribute_attnotnull, align 4
  %74 = call i32 @SysCacheGetAttr(i32 %71, i32 %72, i32 %73, i32* %6)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @Assert(i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @DatumGetBool(i32 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @ReleaseSysCache(i32 %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = icmp ne %struct.TYPE_10__* null, %91
  br i1 %92, label %93, label %141

93:                                               ; preds = %57
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 6
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @NameStr(i32 %102)
  %104 = call %struct.TYPE_13__* @ts_hyperspace_get_dimension_by_name(i32 %98, i32 130, i32 %103)
  store %struct.TYPE_13__* %104, %struct.TYPE_13__** %3, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = icmp ne %struct.TYPE_13__* null, %105
  br i1 %106, label %107, label %140

107:                                              ; preds = %93
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @ERROR, align 4
  %114 = load i32, i32* @ERRCODE_TS_DUPLICATE_DIMENSION, align 4
  %115 = call i32 @errcode(i32 %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @NameStr(i32 %119)
  %121 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = call i32 @ereport(i32 %113, i32 %121)
  br label %123

123:                                              ; preds = %112, %107
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load i32, i32* @NOTICE, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @NameStr(i32 %136)
  %138 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = call i32 @ereport(i32 %132, i32 %138)
  br label %154

140:                                              ; preds = %93
  br label %141

141:                                              ; preds = %140, %57
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  switch i32 %144, label %154 [
    i32 129, label %145
    i32 128, label %148
    i32 130, label %151
  ]

145:                                              ; preds = %141
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %147 = call i32 @dimension_info_validate_closed(%struct.TYPE_12__* %146)
  br label %154

148:                                              ; preds = %141
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %150 = call i32 @dimension_info_validate_open(%struct.TYPE_12__* %149)
  br label %154

151:                                              ; preds = %141
  %152 = load i32, i32* @ERROR, align 4
  %153 = call i32 @elog(i32 %152, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %154

154:                                              ; preds = %123, %141, %151, %148, %145
  ret void
}

declare dso_local i32 @DIMENSION_INFO_IS_SET(%struct.TYPE_12__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @SearchSysCacheAttName(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @DatumGetObjectId(i32) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local %struct.TYPE_13__* @ts_hyperspace_get_dimension_by_name(i32, i32, i32) #1

declare dso_local i32 @dimension_info_validate_closed(%struct.TYPE_12__*) #1

declare dso_local i32 @dimension_info_validate_open(%struct.TYPE_12__*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
