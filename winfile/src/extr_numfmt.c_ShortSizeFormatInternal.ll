; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_numfmt.c_ShortSizeFormatInternal.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_numfmt.c_ShortSizeFormatInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@SZ_PERCENTD = common dso_local global i32* null, align 8
@CHAR_ZERO = common dso_local global i64 0, align 8
@szFormat = common dso_local global i64* null, align 8
@szDecimal = common dso_local global i32 0, align 4
@hAppInstance = common dso_local global i32 0, align 4
@pdwOrders = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ShortSizeFormatInternal(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [10 x i32], align 16
  %11 = alloca [20 x i32], align 16
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_3__* %4 to { i64, i32 }*
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  store i64 %1, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  store i32 %2, i32* %16, align 8
  store i32* %0, i32** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 1024, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %25 = load i32*, i32** @SZ_PERCENTD, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @LOWORD(i32 %27)
  %29 = ptrtoint i32* %28 to i32
  %30 = call i32 (i32*, i32*, i32, ...) @wsprintf(i32* %24, i32* %25, i32 %29)
  store i64 0, i64* %6, align 8
  br label %95

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 1023999, i64* %32, align 8
  store i64 1, i64* %6, align 8
  br label %33

33:                                               ; preds = %40, %31
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sdiv i64 %42, 1024
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %33

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = sdiv i32 %50, 1024
  store i32 %51, i32* %7, align 4
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %53 = load i32*, i32** @SZ_PERCENTD, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (i32*, i32*, i32, ...) @wsprintf(i32* %52, i32* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %94

58:                                               ; preds = %47
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = mul nsw i64 %62, 1024
  %64 = sub nsw i64 %60, %63
  %65 = mul nsw i64 %64, 1000
  %66 = sdiv i64 %65, 1024
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sdiv i32 %68, 10
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %75

72:                                               ; preds = %58
  %73 = load i32, i32* %9, align 4
  %74 = sdiv i32 %73, 10
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %58
  %76 = load i64, i64* @CHAR_ZERO, align 8
  %77 = add nsw i64 %76, 3
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %77, %79
  %81 = load i64*, i64** @szFormat, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 4
  store i64 %80, i64* %82, align 8
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i64*, i64** @szFormat, align 8
  %88 = bitcast i64* %87 to i32*
  %89 = load i32, i32* @szDecimal, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i32*, i32*, i32, ...) @wsprintf(i32* %86, i32* %88, i32 %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %75, %47
  br label %95

95:                                               ; preds = %94, %23
  %96 = load i32, i32* @hAppInstance, align 4
  %97 = load i32*, i32** @pdwOrders, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %102 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %103 = call i32 @COUNTOF(i32* %102)
  %104 = call i32 @LoadString(i32 %96, i32 %100, i32* %101, i32 %103)
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %107 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %108 = ptrtoint i32* %107 to i32
  %109 = call i32 (i32*, i32*, i32, ...) @wsprintf(i32* %105, i32* %106, i32 %108)
  %110 = load i32*, i32** %5, align 8
  ret i32* %110
}

declare dso_local i32 @wsprintf(i32*, i32*, i32, ...) #1

declare dso_local i32* @LOWORD(i32) #1

declare dso_local i32 @LoadString(i32, i32, i32*, i32) #1

declare dso_local i32 @COUNTOF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
