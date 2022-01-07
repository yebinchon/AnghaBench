; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pcf/extr_pcfread.c_pcf_get_metric.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pcf/extr_pcfread.c_pcf_get_metric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@PCF_DEFAULT_FORMAT = common dso_local global i32 0, align 4
@MSBFirst = common dso_local global i64 0, align 8
@pcf_metric_msb_header = common dso_local global i32* null, align 8
@pcf_metric_header = common dso_local global i32* null, align 8
@pcf_compressed_metric_header = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [65 x i8] c" width=%d, lsb=%d, rsb=%d, ascent=%d, descent=%d, attributes=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_5__*)* @pcf_get_metric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf_get_metric(i32 %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %10 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PCF_DEFAULT_FORMAT, align 4
  %13 = call i64 @PCF_FORMAT_MATCH(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @PCF_BYTE_ORDER(i32 %16)
  %18 = load i64, i64* @MSBFirst, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32*, i32** @pcf_metric_msb_header, align 8
  br label %24

22:                                               ; preds = %15
  %23 = load i32*, i32** @pcf_metric_header, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32* [ %21, %20 ], [ %23, %22 ]
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = call i64 @FT_STREAM_READ_FIELDS(i32* %26, %struct.TYPE_5__* %27)
  br label %77

29:                                               ; preds = %3
  %30 = load i32*, i32** @pcf_compressed_metric_header, align 8
  %31 = call i64 @FT_STREAM_READ_FIELDS(i32* %30, %struct.TYPE_5__* %9)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %98

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 128
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 128
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 128
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 128
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 128
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %34, %24
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @FT_TRACE5(i8* %96)
  br label %98

98:                                               ; preds = %77, %33
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i64 @PCF_FORMAT_MATCH(i32, i32) #1

declare dso_local i64 @PCF_BYTE_ORDER(i32) #1

declare dso_local i64 @FT_STREAM_READ_FIELDS(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @FT_TRACE5(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
