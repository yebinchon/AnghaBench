; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_scheduler_mock.c_serialize_test_parameters.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_scheduler_mock.c_serialize_test_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64, i8* }

@jbvNumeric = common dso_local global i8* null, align 8
@int4_numeric = common dso_local global i32 0, align 4
@WJB_BEGIN_ARRAY = common dso_local global i32 0, align 4
@WJB_ELEM = common dso_local global i32 0, align 4
@WJB_END_ARRAY = common dso_local global i32 0, align 4
@BGW_EXTRALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @serialize_test_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @serialize_test_parameters(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %5, align 8
  %9 = call %struct.TYPE_13__* (...) @makeStringInfo()
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %7, align 8
  %10 = load i8*, i8** @jbvNumeric, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i32, i32* @int4_numeric, align 4
  %13 = call i64 (...) @GetUserId()
  %14 = trunc i64 %13 to i32
  %15 = call i32 @Int32GetDatum(i32 %14)
  %16 = call i32 @DirectFunctionCall1(i32 %12, i32 %15)
  %17 = call i8* @DatumGetNumeric(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @jbvNumeric, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* @int4_numeric, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @Int32GetDatum(i32 %23)
  %25 = call i32 @DirectFunctionCall1(i32 %22, i32 %24)
  %26 = call i8* @DatumGetNumeric(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @WJB_BEGIN_ARRAY, align 4
  %30 = call %struct.TYPE_14__* @pushJsonbValue(i32** %5, i32 %29, %struct.TYPE_14__* null)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %3, align 8
  %31 = load i32, i32* @WJB_ELEM, align 4
  %32 = call %struct.TYPE_14__* @pushJsonbValue(i32** %5, i32 %31, %struct.TYPE_14__* %4)
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %3, align 8
  %33 = load i32, i32* @WJB_ELEM, align 4
  %34 = call %struct.TYPE_14__* @pushJsonbValue(i32** %5, i32 %33, %struct.TYPE_14__* %8)
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %3, align 8
  %35 = load i32, i32* @WJB_END_ARRAY, align 4
  %36 = call %struct.TYPE_14__* @pushJsonbValue(i32** %5, i32 %35, %struct.TYPE_14__* null)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %3, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = call %struct.TYPE_15__* @JsonbValueToJsonb(%struct.TYPE_14__* %37)
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %6, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = call i32 @VARSIZE(%struct.TYPE_15__* %42)
  %44 = call i32 @JsonbToCString(%struct.TYPE_13__* %39, i32* %41, i32 %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BGW_EXTRALEN, align 8
  %49 = icmp slt i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @Assert(i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  ret i8* %54
}

declare dso_local %struct.TYPE_13__* @makeStringInfo(...) #1

declare dso_local i8* @DatumGetNumeric(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i64 @GetUserId(...) #1

declare dso_local %struct.TYPE_14__* @pushJsonbValue(i32**, i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @JsonbValueToJsonb(%struct.TYPE_14__*) #1

declare dso_local i32 @JsonbToCString(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @VARSIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
