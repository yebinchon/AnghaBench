; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_frameunit.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_frameunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double, double, double, double, double, i32, i32 }

@test_frameunit.frame = internal constant %struct.TYPE_4__ { double 0.000000e+00, double 0.000000e+00, double 5.000000e+00, double 5.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 0, i32 0 }, align 8
@test_frameunit.description = internal constant [9 x i8] c"winetest\00", align 1
@EmfTypeEmfPlusOnly = common dso_local global i32 0, align 4
@MetafileFrameUnitInch = common dso_local global i32 0, align 4
@Ok = common dso_local global i64 0, align 8
@UnitPixel = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"expected 1.0, got %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_frameunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_frameunit() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EmfTypeEmfPlusOnly, align 4
  %12 = load i32, i32* @MetafileFrameUnitInch, align 4
  %13 = call i64 @GdipRecordMetafile(i32 %10, i32 %11, %struct.TYPE_4__* @test_frameunit.frame, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_frameunit.description, i64 0, i64 0), i32** %2)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* @Ok, align 8
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @expect(i64 %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DeleteDC(i32 %17)
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @Ok, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  br label %165

23:                                               ; preds = %0
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @GdipGetImageBounds(i32* %24, %struct.TYPE_4__* %8, i64* %5)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* @Ok, align 8
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @expect(i64 %26, i64 %27)
  %29 = load i64, i64* @UnitPixel, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @expect(i64 %29, i64 %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @expectf(double 0.000000e+00, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @expectf(double 0.000000e+00, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %39 = load double, double* %38, align 8
  %40 = fcmp oeq double %39, 1.000000e+00
  br i1 %40, label %48, label %41

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %43 = load double, double* %42, align 8
  %44 = fcmp oeq double %43, 0.000000e+00
  %45 = zext i1 %44 to i32
  %46 = call i64 @broken(i32 %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %41, %23
  %49 = phi i1 [ true, %23 ], [ %47, %41 ]
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %52 = load double, double* %51, align 8
  %53 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), double %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %55 = load double, double* %54, align 8
  %56 = fcmp oeq double %55, 1.000000e+00
  br i1 %56, label %64, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %59 = load double, double* %58, align 8
  %60 = fcmp oeq double %59, 0.000000e+00
  %61 = zext i1 %60 to i32
  %62 = call i64 @broken(i32 %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %57, %48
  %65 = phi i1 [ true, %48 ], [ %63, %57 ]
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %68 = load double, double* %67, align 8
  %69 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), double %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call i64 @GdipGetImageGraphicsContext(i32* %70, i32** %3)
  store i64 %71, i64* %1, align 8
  %72 = load i64, i64* @Ok, align 8
  %73 = load i64, i64* %1, align 8
  %74 = call i32 @expect(i64 %72, i64 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i64 @GdipGetImageBounds(i32* %75, %struct.TYPE_4__* %8, i64* %5)
  store i64 %76, i64* %1, align 8
  %77 = load i64, i64* @Ok, align 8
  %78 = load i64, i64* %1, align 8
  %79 = call i32 @expect(i64 %77, i64 %78)
  %80 = load i64, i64* @UnitPixel, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @expect(i64 %80, i64 %81)
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @expectf(double 0.000000e+00, i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @expectf(double 0.000000e+00, i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %90 = load double, double* %89, align 8
  %91 = fcmp oeq double %90, 1.000000e+00
  br i1 %91, label %99, label %92

92:                                               ; preds = %64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %94 = load double, double* %93, align 8
  %95 = fcmp oeq double %94, 0.000000e+00
  %96 = zext i1 %95 to i32
  %97 = call i64 @broken(i32 %96)
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %92, %64
  %100 = phi i1 [ true, %64 ], [ %98, %92 ]
  %101 = zext i1 %100 to i32
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %103 = load double, double* %102, align 8
  %104 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), double %103)
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %106 = load double, double* %105, align 8
  %107 = fcmp oeq double %106, 1.000000e+00
  br i1 %107, label %115, label %108

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %110 = load double, double* %109, align 8
  %111 = fcmp oeq double %110, 0.000000e+00
  %112 = zext i1 %111 to i32
  %113 = call i64 @broken(i32 %112)
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %108, %99
  %116 = phi i1 [ true, %99 ], [ %114, %108 ]
  %117 = zext i1 %116 to i32
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %119 = load double, double* %118, align 8
  %120 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), double %119)
  %121 = load i32*, i32** %3, align 8
  %122 = call i64 @GdipDeleteGraphics(i32* %121)
  store i64 %122, i64* %1, align 8
  %123 = load i64, i64* @Ok, align 8
  %124 = load i64, i64* %1, align 8
  %125 = call i32 @expect(i64 %123, i64 %124)
  %126 = load i32*, i32** %2, align 8
  %127 = call i64 @GdipGetImageHorizontalResolution(i32* %126, double* %6)
  store i64 %127, i64* %1, align 8
  %128 = load i64, i64* @Ok, align 8
  %129 = load i64, i64* %1, align 8
  %130 = call i32 @expect(i64 %128, i64 %129)
  %131 = load i32*, i32** %2, align 8
  %132 = call i64 @GdipGetImageVerticalResolution(i32* %131, double* %7)
  store i64 %132, i64* %1, align 8
  %133 = load i64, i64* @Ok, align 8
  %134 = load i64, i64* %1, align 8
  %135 = call i32 @expect(i64 %133, i64 %134)
  %136 = load i32*, i32** %2, align 8
  %137 = call i64 @GdipGetImageBounds(i32* %136, %struct.TYPE_4__* %8, i64* %5)
  store i64 %137, i64* %1, align 8
  %138 = load i64, i64* @Ok, align 8
  %139 = load i64, i64* %1, align 8
  %140 = call i32 @expect(i64 %138, i64 %139)
  %141 = load i64, i64* @UnitPixel, align 8
  %142 = load i64, i64* %5, align 8
  %143 = call i32 @expect(i64 %141, i64 %142)
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @expectf(double 0.000000e+00, i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @expectf(double 0.000000e+00, i32 %148)
  %150 = load double, double* %6, align 8
  %151 = fmul double 5.000000e+00, %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %153 = load double, double* %152, align 8
  %154 = call i32 @expectf_(double %151, double %153, double 1.000000e+00)
  %155 = load double, double* %7, align 8
  %156 = fmul double 5.000000e+00, %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %158 = load double, double* %157, align 8
  %159 = call i32 @expectf_(double %156, double %158, double 1.000000e+00)
  %160 = load i32*, i32** %2, align 8
  %161 = call i64 @GdipDisposeImage(i32* %160)
  store i64 %161, i64* %1, align 8
  %162 = load i64, i64* @Ok, align 8
  %163 = load i64, i64* %1, align 8
  %164 = call i32 @expect(i64 %162, i64 %163)
  br label %165

165:                                              ; preds = %115, %22
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i64 @GdipRecordMetafile(i32, i32, %struct.TYPE_4__*, i32, i8*, i32**) #1

declare dso_local i32 @expect(i64, i64) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i64 @GdipGetImageBounds(i32*, %struct.TYPE_4__*, i64*) #1

declare dso_local i32 @expectf(double, i32) #1

declare dso_local i32 @ok(i32, i8*, double) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i64 @GdipDeleteGraphics(i32*) #1

declare dso_local i64 @GdipGetImageHorizontalResolution(i32*, double*) #1

declare dso_local i64 @GdipGetImageVerticalResolution(i32*, double*) #1

declare dso_local i32 @expectf_(double, double, double) #1

declare dso_local i64 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
