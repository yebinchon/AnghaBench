; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_GetCoeffsFast.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_GetCoeffsFast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }

@.str = private unnamed_addr constant [7 x i8] c"coeffs\00", align 1
@kZigzag = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__**, i32, i32*, i32, i32*)* @GetCoeffsFast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetCoeffsFast(i32* %0, %struct.TYPE_3__** %1, i32 %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %14, align 8
  br label %28

28:                                               ; preds = %110, %6
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %113

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @VP8GetBit(i32* %32, i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %7, align 4
  br label %114

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %63, %40
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @VP8GetBit(i32* %42, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %64

49:                                               ; preds = %41
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %50, i64 %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %14, align 8
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 16
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  store i32 16, i32* %7, align 4
  br label %114

63:                                               ; preds = %49
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %65, i64 %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  store i32** %73, i32*** %15, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @VP8GetBit(i32* %74, i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %64
  store i32 1, i32* %16, align 4
  %81 = load i32**, i32*** %15, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %14, align 8
  br label %91

84:                                               ; preds = %64
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @GetLargeValue(i32* %85, i32* %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32**, i32*** %15, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 2
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %14, align 8
  br label %91

91:                                               ; preds = %84, %80
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @VP8GetSigned(i32* %92, i32 %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = icmp sgt i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %94, %101
  %103 = load i32*, i32** %13, align 8
  %104 = load i64*, i64** @kZigzag, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  store i32 %102, i32* %109, align 4
  br label %110

110:                                              ; preds = %91
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %28

113:                                              ; preds = %28
  store i32 16, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %62, %38
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @VP8GetBit(i32*, i32, i8*) #1

declare dso_local i32 @GetLargeValue(i32*, i32*) #1

declare dso_local i32 @VP8GetSigned(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
