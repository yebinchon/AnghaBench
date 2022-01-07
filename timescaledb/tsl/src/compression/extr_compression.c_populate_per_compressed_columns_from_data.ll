; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_populate_per_compressed_columns_from_data.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_populate_per_compressed_columns_from_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* (i32, i32)* }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i32*, i64 }
%struct.TYPE_6__ = type { i64 }

@definitions = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64*, i32*)* @populate_per_compressed_columns_from_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_per_compressed_columns_from_data(%struct.TYPE_5__* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %81, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %84

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %19
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %10, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %81

26:                                               ; preds = %17
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  br label %81

44:                                               ; preds = %26
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @PG_DETOAST_DATUM(i64 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = bitcast i8* %56 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %12, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @definitions, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32* (i32, i32)*, i32* (i32, i32)** %63, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @PointerGetDatum(i8* %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32* %64(i32 %66, i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  store i32* %70, i32** %72, align 8
  br label %80

73:                                               ; preds = %44
  %74 = load i64*, i64** %7, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %73, %49
  br label %81

81:                                               ; preds = %80, %37, %25
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %9, align 8
  br label %13

84:                                               ; preds = %13
  ret void
}

declare dso_local i64 @PG_DETOAST_DATUM(i64) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
