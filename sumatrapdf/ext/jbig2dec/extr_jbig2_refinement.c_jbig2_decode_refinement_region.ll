; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_jbig2_decode_refinement_region.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_jbig2_decode_refinement_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }

@JBIG2_SEVERITY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"decoding generic refinement region with offset %d,%x, GRTEMPLATE=%d, TPGRON=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbig2_decode_refinement_region(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* @JBIG2_SEVERITY_DEBUG, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @jbig2_error(i32* %14, i32 %15, i32 %18, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i64 %27, i64 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %6
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @jbig2_decode_refinement_TPGRON(i32* %37, %struct.TYPE_11__* %38, i32* %39, i32* %40, i32* %41)
  store i32 %42, i32* %7, align 4
  br label %64

43:                                               ; preds = %6
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @jbig2_decode_refinement_template1_unopt(i32* %49, %struct.TYPE_10__* %50, %struct.TYPE_11__* %51, i32* %52, i32* %53, i32* %54)
  store i32 %55, i32* %7, align 4
  br label %64

56:                                               ; preds = %43
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @jbig2_decode_refinement_template0_unopt(i32* %57, %struct.TYPE_10__* %58, %struct.TYPE_11__* %59, i32* %60, i32* %61, i32* %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %56, %48, %36
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @jbig2_decode_refinement_TPGRON(i32*, %struct.TYPE_11__*, i32*, i32*, i32*) #1

declare dso_local i32 @jbig2_decode_refinement_template1_unopt(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*, i32*, i32*) #1

declare dso_local i32 @jbig2_decode_refinement_template0_unopt(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
