; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_PackAnyBytes.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_PackAnyBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_3__*, i32*, i32*, i64)* @PackAnyBytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PackAnyBytes(i32 %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, i64 %4) #0 {
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
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @T_CHANNELS(i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @T_DOSWAP(i32 %27)
  store i64 %28, i64* %12, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @T_FLAVOR(i32 %31)
  store i64 %32, i64* %13, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @T_EXTRA(i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @T_SWAPFIRST(i32 %39)
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %15, align 8
  %43 = xor i64 %41, %42
  store i64 %43, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %44 = load i32*, i32** %9, align 8
  store i32* %44, i32** %17, align 8
  %45 = load i64, i64* %16, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %5
  %48 = load i64, i64* %14, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 %48
  store i32* %50, i32** %9, align 8
  br label %51

51:                                               ; preds = %47, %5
  store i64 0, i64* %19, align 8
  br label %52

52:                                               ; preds = %82, %51
  %53 = load i64, i64* %19, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %19, align 8
  %62 = sub nsw i64 %60, %61
  %63 = sub nsw i64 %62, 1
  br label %66

64:                                               ; preds = %56
  %65 = load i64, i64* %19, align 8
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi i64 [ %63, %59 ], [ %65, %64 ]
  store i64 %67, i64* %20, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i64, i64* %20, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @FROM_16_TO_8(i32 %71)
  store i32 %72, i32* %18, align 4
  %73 = load i64, i64* %13, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @REVERSE_FLAVOR_8(i32 %76)
  store i32 %77, i32* %18, align 4
  br label %78

78:                                               ; preds = %75, %66
  %79 = load i32, i32* %18, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  br label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %19, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %19, align 8
  br label %52

85:                                               ; preds = %52
  %86 = load i64, i64* %16, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %14, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 %89
  store i32* %91, i32** %9, align 8
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i64, i64* %14, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i64, i64* %15, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32*, i32** %17, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32*, i32** %17, align 8
  %102 = load i64, i64* %11, align 8
  %103 = sub nsw i64 %102, 1
  %104 = call i32 @memmove(i32* %100, i32* %101, i64 %103)
  %105 = load i32, i32* %18, align 4
  %106 = load i32*, i32** %17, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %98, %95, %92
  %108 = load i32*, i32** %9, align 8
  ret i32* %108
}

declare dso_local i64 @T_CHANNELS(i32) #1

declare dso_local i64 @T_DOSWAP(i32) #1

declare dso_local i64 @T_FLAVOR(i32) #1

declare dso_local i64 @T_EXTRA(i32) #1

declare dso_local i64 @T_SWAPFIRST(i32) #1

declare dso_local i32 @FROM_16_TO_8(i32) #1

declare dso_local i32 @REVERSE_FLAVOR_8(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
