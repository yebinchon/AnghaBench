; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parserInternals.c_xmlParserFindNodeInfoIndex.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parserInternals.c_xmlParserFindNodeInfoIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xmlParserFindNodeInfoIndex(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i64 -1, i64* %3, align 8
  br label %86

16:                                               ; preds = %12
  store i64 1, i64* %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %66, %16
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br i1 %29, label %30, label %67

30:                                               ; preds = %28
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %32, %33
  %35 = udiv i64 %34, 2
  %36 = add i64 %31, %35
  store i64 %36, i64* %8, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %37, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  br label %66

48:                                               ; preds = %30
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ult i32* %49, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i64, i64* %8, align 8
  %61 = sub i64 %60, 1
  store i64 %61, i64* %6, align 8
  br label %65

62:                                               ; preds = %48
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %47
  br label %20

67:                                               ; preds = %28
  %68 = load i64, i64* %8, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = sub i64 %74, 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = icmp ult i32* %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %70, %67
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* %3, align 8
  br label %86

83:                                               ; preds = %70
  %84 = load i64, i64* %8, align 8
  %85 = sub i64 %84, 1
  store i64 %85, i64* %3, align 8
  br label %86

86:                                               ; preds = %83, %81, %15
  %87 = load i64, i64* %3, align 8
  ret i64 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
