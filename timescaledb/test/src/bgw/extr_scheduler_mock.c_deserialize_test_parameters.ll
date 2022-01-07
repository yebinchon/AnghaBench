; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_scheduler_mock.c_deserialize_test_parameters.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_scheduler_mock.c_deserialize_test_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@jsonb_in = common dso_local global i32 0, align 4
@jbvNumeric = common dso_local global i64 0, align 8
@numeric_int4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i64*)* @deserialize_test_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deserialize_test_parameters(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i32, i32* @jsonb_in, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @CStringGetDatum(i8* %13)
  %15 = call i32 @DirectFunctionCall1(i32 %12, i32 %14)
  %16 = call i64 @DatumGetPointer(i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call %struct.TYPE_6__* @getIthJsonbValueFromContainer(i32* %19, i32 0)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call %struct.TYPE_6__* @getIthJsonbValueFromContainer(i32* %22, i32 1)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %9, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @jbvNumeric, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @jbvNumeric, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %10, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @numeric_int4, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @NumericGetDatum(i32 %47)
  %49 = call i32 @DirectFunctionCall1(i32 %46, i32 %48)
  %50 = call i64 @DatumGetInt32(i32 %49)
  %51 = load i64*, i64** %5, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* @numeric_int4, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @NumericGetDatum(i32 %53)
  %55 = call i32 @DirectFunctionCall1(i32 %52, i32 %54)
  %56 = call i64 @DatumGetInt32(i32 %55)
  %57 = load i64*, i64** %6, align 8
  store i64 %56, i64* %57, align 8
  ret void
}

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local %struct.TYPE_6__* @getIthJsonbValueFromContainer(i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @DatumGetInt32(i32) #1

declare dso_local i32 @NumericGetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
