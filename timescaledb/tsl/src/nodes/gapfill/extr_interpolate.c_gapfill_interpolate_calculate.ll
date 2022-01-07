; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/nodes/gapfill/extr_interpolate.c_gapfill_interpolate_calculate.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/nodes/gapfill/extr_interpolate.c_gapfill_interpolate_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_12__, %struct.TYPE_12__, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@FETCHED_LAST = common dso_local global i64 0, align 8
@FETCHED_NEXT_GROUP = common dso_local global i64 0, align 8
@numeric_int2 = common dso_local global i32 0, align 4
@int2_numeric = common dso_local global i32 0, align 4
@numeric_int4 = common dso_local global i32 0, align 4
@int4_numeric = common dso_local global i32 0, align 4
@numeric_int8 = common dso_local global i32 0, align 4
@int8_numeric = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unsupported datatype for interpolate: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gapfill_interpolate_calculate(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %5
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @gapfill_fetch_sample(%struct.TYPE_10__* %33, %struct.TYPE_11__* %34, %struct.TYPE_12__* %36, i64 %39)
  br label %41

41:                                               ; preds = %32, %26, %21, %5
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %41
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load i64, i64* @FETCHED_LAST, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* @FETCHED_NEXT_GROUP, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58, %52
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @gapfill_fetch_sample(%struct.TYPE_10__* %65, %struct.TYPE_11__* %66, %struct.TYPE_12__* %68, i64 %71)
  br label %73

73:                                               ; preds = %64, %58, %47, %41
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %79, %73
  %86 = phi i1 [ true, %73 ], [ %84, %79 ]
  %87 = zext i1 %86 to i32
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %191

93:                                               ; preds = %85
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %14, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %15, align 4
  %102 = load i64, i64* %8, align 8
  store i64 %102, i64* %11, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %12, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %13, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %179 [
    i32 130, label %115
    i32 129, label %129
    i32 128, label %143
    i32 132, label %157
    i32 131, label %168
  ]

115:                                              ; preds = %93
  %116 = load i32, i32* @numeric_int2, align 4
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load i32, i32* @int2_numeric, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @DirectFunctionCall1(i32 %120, i32 %121)
  %123 = load i32, i32* @int2_numeric, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @DirectFunctionCall1(i32 %123, i32 %124)
  %126 = call i32 @interpolate_numeric(i64 %117, i64 %118, i64 %119, i32 %122, i32 %125)
  %127 = call i32 @DirectFunctionCall1(i32 %116, i32 %126)
  %128 = load i32*, i32** %9, align 8
  store i32 %127, i32* %128, align 4
  br label %191

129:                                              ; preds = %93
  %130 = load i32, i32* @numeric_int4, align 4
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* %13, align 8
  %134 = load i32, i32* @int4_numeric, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @DirectFunctionCall1(i32 %134, i32 %135)
  %137 = load i32, i32* @int4_numeric, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @DirectFunctionCall1(i32 %137, i32 %138)
  %140 = call i32 @interpolate_numeric(i64 %131, i64 %132, i64 %133, i32 %136, i32 %139)
  %141 = call i32 @DirectFunctionCall1(i32 %130, i32 %140)
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  br label %191

143:                                              ; preds = %93
  %144 = load i32, i32* @numeric_int8, align 4
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load i32, i32* @int8_numeric, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @DirectFunctionCall1(i32 %148, i32 %149)
  %151 = load i32, i32* @int8_numeric, align 4
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @DirectFunctionCall1(i32 %151, i32 %152)
  %154 = call i32 @interpolate_numeric(i64 %145, i64 %146, i64 %147, i32 %150, i32 %153)
  %155 = call i32 @DirectFunctionCall1(i32 %144, i32 %154)
  %156 = load i32*, i32** %9, align 8
  store i32 %155, i32* %156, align 4
  br label %191

157:                                              ; preds = %93
  %158 = load i64, i64* %11, align 8
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* %13, align 8
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @DatumGetFloat4(i32 %161)
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @DatumGetFloat4(i32 %163)
  %165 = call i32 @INTERPOLATE(i64 %158, i64 %159, i64 %160, i32 %162, i32 %164)
  %166 = call i32 @Float4GetDatum(i32 %165)
  %167 = load i32*, i32** %9, align 8
  store i32 %166, i32* %167, align 4
  br label %191

168:                                              ; preds = %93
  %169 = load i64, i64* %11, align 8
  %170 = load i64, i64* %12, align 8
  %171 = load i64, i64* %13, align 8
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @DatumGetFloat8(i32 %172)
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @DatumGetFloat8(i32 %174)
  %176 = call i32 @INTERPOLATE(i64 %169, i64 %170, i64 %171, i32 %173, i32 %175)
  %177 = call i32 @Float8GetDatum(i32 %176)
  %178 = load i32*, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  br label %191

179:                                              ; preds = %93
  %180 = load i32, i32* @ERROR, align 4
  %181 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %182 = call i32 @errcode(i32 %181)
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @format_type_be(i32 %186)
  %188 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %187)
  %189 = call i32 @ereport(i32 %180, i32 %188)
  %190 = call i32 (...) @pg_unreachable()
  br label %191

191:                                              ; preds = %92, %179, %168, %157, %143, %129, %115
  ret void
}

declare dso_local i32 @gapfill_fetch_sample(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @interpolate_numeric(i64, i64, i64, i32, i32) #1

declare dso_local i32 @Float4GetDatum(i32) #1

declare dso_local i32 @INTERPOLATE(i64, i64, i64, i32, i32) #1

declare dso_local i32 @DatumGetFloat4(i32) #1

declare dso_local i32 @Float8GetDatum(i32) #1

declare dso_local i32 @DatumGetFloat8(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @pg_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
