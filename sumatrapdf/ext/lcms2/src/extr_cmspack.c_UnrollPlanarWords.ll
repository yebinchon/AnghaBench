; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollPlanarWords.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollPlanarWords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_3__*, i32*, i32*, i64)* @UnrollPlanarWords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @UnrollPlanarWords(i32 %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @T_CHANNELS(i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @T_DOSWAP(i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @T_FLAVOR(i32 %29)
  store i64 %30, i64* %13, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @T_ENDIAN16(i32 %33)
  store i64 %34, i64* %14, align 8
  %35 = load i32*, i32** %9, align 8
  store i32* %35, i32** %16, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %5
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @T_EXTRA(i32 %41)
  %43 = load i64, i64* %10, align 8
  %44 = mul nsw i64 %42, %43
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %44
  store i32* %46, i32** %9, align 8
  br label %47

47:                                               ; preds = %38, %5
  store i64 0, i64* %15, align 8
  br label %48

48:                                               ; preds = %87, %47
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %15, align 8
  %58 = sub nsw i64 %56, %57
  %59 = sub nsw i64 %58, 1
  br label %62

60:                                               ; preds = %52
  %61 = load i64, i64* %15, align 8
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi i64 [ %59, %55 ], [ %61, %60 ]
  store i64 %63, i64* %17, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %18, align 4
  %66 = load i64, i64* %14, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @CHANGE_ENDIAN(i32 %69)
  store i32 %70, i32* %18, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = load i64, i64* %13, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @REVERSE_FLAVOR_16(i32 %75)
  br label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %18, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i32 [ %76, %74 ], [ %78, %77 ]
  %81 = load i32*, i32** %8, align 8
  %82 = load i64, i64* %17, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load i64, i64* %10, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  store i32* %86, i32** %9, align 8
  br label %87

87:                                               ; preds = %79
  %88 = load i64, i64* %15, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %15, align 8
  br label %48

90:                                               ; preds = %48
  %91 = load i32*, i32** %16, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  ret i32* %92
}

declare dso_local i64 @T_CHANNELS(i32) #1

declare dso_local i64 @T_DOSWAP(i32) #1

declare dso_local i64 @T_FLAVOR(i32) #1

declare dso_local i64 @T_ENDIAN16(i32) #1

declare dso_local i64 @T_EXTRA(i32) #1

declare dso_local i32 @CHANGE_ENDIAN(i32) #1

declare dso_local i32 @REVERSE_FLAVOR_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
