; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output.c_fz_write_band.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output.c_fz_write_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 (i32*, %struct.TYPE_5__*)*, i32 (i32*, %struct.TYPE_5__*, i32, i32, i32, i8*)* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Too much band data!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_write_band(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i32 (i32*, %struct.TYPE_5__*, i32, i32, i32, i8*)*, i32 (i32*, %struct.TYPE_5__*, i32, i32, i32, i8*)** %15, align 8
  %17 = icmp eq i32 (i32*, %struct.TYPE_5__*, i32, i32, i32, i8*)* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %5
  br label %93

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %30, %19
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %45 = call i32 @fz_throw(i32* %43, i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32 (i32*, %struct.TYPE_5__*, i32, i32, i32, i8*)*, i32 (i32*, %struct.TYPE_5__*, i32, i32, i32, i8*)** %51, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %9, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 %52(i32* %53, %struct.TYPE_5__* %54, i32 %55, i32 %59, i32 %60, i8* %61)
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %49, %46
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %69
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32 (i32*, %struct.TYPE_5__*)*, i32 (i32*, %struct.TYPE_5__*)** %79, align 8
  %81 = icmp ne i32 (i32*, %struct.TYPE_5__*)* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32 (i32*, %struct.TYPE_5__*)*, i32 (i32*, %struct.TYPE_5__*)** %84, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %88 = call i32 %85(i32* %86, %struct.TYPE_5__* %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %18, %82, %77, %69
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
