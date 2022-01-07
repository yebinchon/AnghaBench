; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_iterator_enc.c_VP8IteratorRotateI4.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_iterator_enc.c_VP8IteratorRotateI4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32* }

@VP8Scan = common dso_local global i32* null, align 8
@BPS = common dso_local global i32 0, align 4
@VP8TopLeftI4 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VP8IteratorRotateI4(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** @VP8Scan, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %9, i64 %16
  store i32* %17, i32** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %38, %2
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %22, 3
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @BPS, align 4
  %28 = mul nsw i32 3, %27
  %29 = add nsw i32 %26, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 -4, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %44, 3
  %46 = icmp ne i64 %45, 3
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %49, 2
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 2, %53
  %55 = load i32, i32* @BPS, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 3, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %52, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %48

68:                                               ; preds = %48
  br label %88

69:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %84, %69
  %71 = load i32, i32* %8, align 4
  %72 = icmp sle i32 %71, 3
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %70

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %68
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 16
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %112

98:                                               ; preds = %88
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** @VP8TopLeftI4, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %101, i64 %108
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i32* %109, i32** %111, align 8
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %98, %97
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
