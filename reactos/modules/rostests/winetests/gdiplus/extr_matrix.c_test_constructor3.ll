; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_matrix.c_test_constructor3.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_matrix.c_test_constructor3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_constructor3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_constructor3() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [6 x i32], align 16
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca [3 x %struct.TYPE_6__], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 10, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 10, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32 10, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  store i32 10, i32* %9, align 4
  %10 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 10, i32* %11, align 16
  %12 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 10, i32* %13, align 4
  %14 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 20, i32* %15, align 8
  %16 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 10, i32* %17, align 4
  %18 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 10, i32* %19, align 16
  %20 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 20, i32* %21, align 4
  %22 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %23 = call i32 @GdipCreateMatrix3(%struct.TYPE_5__* %3, %struct.TYPE_6__* %22, i32** %1)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @Ok, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %29 = call i32 @GdipGetMatrixElements(i32* %27, i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @Ok, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = call i32 @expectf(double 1.000000e+00, i32 %34)
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @expectf(double 0.000000e+00, i32 %37)
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @expectf(double 0.000000e+00, i32 %40)
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @expectf(double 1.000000e+00, i32 %43)
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 4
  %46 = load i32, i32* %45, align 16
  %47 = call i32 @expectf(double 0.000000e+00, i32 %46)
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @expectf(double 0.000000e+00, i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @GdipDeleteMatrix(i32* %51)
  %53 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 20, i32* %54, align 16
  %55 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 10, i32* %56, align 4
  %57 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 40, i32* %58, align 8
  %59 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 10, i32* %60, align 4
  %61 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 20, i32* %62, align 16
  %63 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 20, i32* %64, align 4
  %65 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %66 = call i32 @GdipCreateMatrix3(%struct.TYPE_5__* %3, %struct.TYPE_6__* %65, i32** %1)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @Ok, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @expect(i32 %67, i32 %68)
  %70 = load i32*, i32** %1, align 8
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %72 = call i32 @GdipGetMatrixElements(i32* %70, i32* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @Ok, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @expect(i32 %73, i32 %74)
  %76 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = call i32 @expectf(double 2.000000e+00, i32 %77)
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @expectf(double 0.000000e+00, i32 %80)
  %82 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @expectf(double 0.000000e+00, i32 %83)
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @expectf(double 1.000000e+00, i32 %86)
  %88 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 4
  %89 = load i32, i32* %88, align 16
  %90 = call i32 @expectf(double 0.000000e+00, i32 %89)
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @expectf(double 0.000000e+00, i32 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @GdipDeleteMatrix(i32* %94)
  %96 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 10, i32* %97, align 16
  %98 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i32 20, i32* %99, align 4
  %100 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 20, i32* %101, align 8
  %102 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i32 30, i32* %103, align 4
  %104 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 10, i32* %105, align 16
  %106 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  store i32 30, i32* %107, align 4
  %108 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %109 = call i32 @GdipCreateMatrix3(%struct.TYPE_5__* %3, %struct.TYPE_6__* %108, i32** %1)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* @Ok, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @expect(i32 %110, i32 %111)
  %113 = load i32*, i32** %1, align 8
  %114 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %115 = call i32 @GdipGetMatrixElements(i32* %113, i32* %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* @Ok, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @expect(i32 %116, i32 %117)
  %119 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %120 = load i32, i32* %119, align 16
  %121 = call i32 @expectf(double 1.000000e+00, i32 %120)
  %122 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @expectf(double 1.000000e+00, i32 %123)
  %125 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @expectf(double 0.000000e+00, i32 %126)
  %128 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @expectf(double 1.000000e+00, i32 %129)
  %131 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 4
  %132 = load i32, i32* %131, align 16
  %133 = call i32 @expectf(double 0.000000e+00, i32 %132)
  %134 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 5
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @expectf(double 0.000000e+00, i32 %135)
  %137 = load i32*, i32** %1, align 8
  %138 = call i32 @GdipDeleteMatrix(i32* %137)
  ret void
}

declare dso_local i32 @GdipCreateMatrix3(%struct.TYPE_5__*, %struct.TYPE_6__*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipGetMatrixElements(i32*, i32*) #1

declare dso_local i32 @expectf(double, i32) #1

declare dso_local i32 @GdipDeleteMatrix(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
