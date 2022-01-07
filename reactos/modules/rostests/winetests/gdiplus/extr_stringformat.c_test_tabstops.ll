; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_stringformat.c_test_tabstops.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_stringformat.c_test_tabstops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LANG_NEUTRAL = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@tabstops = common dso_local global i32* null, align 8
@NotImplemented = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_tabstops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_tabstops() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x double], align 16
  %5 = alloca double, align 8
  %6 = load i32, i32* @LANG_NEUTRAL, align 4
  %7 = call i32 @GdipCreateStringFormat(i32 0, i32 %6, i32** %1)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @Ok, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @expect(i32 %8, i32 %9)
  %11 = call i32 @GdipGetStringFormatTabStopCount(i32* null, i32* null)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @InvalidParameter, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @expect(i32 %12, i32 %13)
  %15 = call i32 @GdipGetStringFormatTabStopCount(i32* null, i32* %3)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @InvalidParameter, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @GdipGetStringFormatTabStopCount(i32* %19, i32* null)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* @InvalidParameter, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = call i32 @GdipSetStringFormatTabStops(i32* null, double 0.000000e+00, i32 0, i32* null)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* @InvalidParameter, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @expect(i32 %25, i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @GdipSetStringFormatTabStops(i32* %28, double 0.000000e+00, i32 0, i32* null)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* @InvalidParameter, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = load i32*, i32** @tabstops, align 8
  %34 = call i32 @GdipSetStringFormatTabStops(i32* null, double 0.000000e+00, i32 0, i32* %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* @InvalidParameter, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = call i32 @GdipGetStringFormatTabStops(i32* null, i32 0, double* null, double* null)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* @InvalidParameter, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @GdipGetStringFormatTabStops(i32* %42, i32 0, double* null, double* null)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* @InvalidParameter, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = call i32 @GdipGetStringFormatTabStops(i32* null, i32 0, double* %5, double* null)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* @InvalidParameter, align 4
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @expect(i32 %48, i32 %49)
  %51 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %52 = call i32 @GdipGetStringFormatTabStops(i32* null, i32 0, double* null, double* %51)
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* @InvalidParameter, align 4
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @expect(i32 %53, i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @GdipGetStringFormatTabStops(i32* %56, i32 0, double* %5, double* null)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* @InvalidParameter, align 4
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @expect(i32 %58, i32 %59)
  %61 = load i32*, i32** %1, align 8
  %62 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %63 = call i32 @GdipGetStringFormatTabStops(i32* %61, i32 0, double* null, double* %62)
  store i32 %63, i32* %2, align 4
  %64 = load i32, i32* @InvalidParameter, align 4
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @expect(i32 %64, i32 %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @GdipGetStringFormatTabStopCount(i32* %67, i32* %3)
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* @Ok, align 4
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @expect(i32 %69, i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @expect(i32 0, i32 %72)
  %74 = load i32*, i32** %1, align 8
  %75 = load i32*, i32** @tabstops, align 8
  %76 = call i32 @GdipSetStringFormatTabStops(i32* %74, double 0.000000e+00, i32 -1, i32* %75)
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* @Ok, align 4
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @expect(i32 %77, i32 %78)
  store i32 -1, i32* %3, align 4
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @GdipGetStringFormatTabStopCount(i32* %80, i32* %3)
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* @Ok, align 4
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @expect(i32 %82, i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @expect(i32 0, i32 %85)
  %87 = load i32*, i32** %1, align 8
  %88 = load i32*, i32** @tabstops, align 8
  %89 = call i32 @GdipSetStringFormatTabStops(i32* %87, double -1.000000e+01, i32 0, i32* %88)
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* @Ok, align 4
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @expect(i32 %90, i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = load i32*, i32** @tabstops, align 8
  %95 = call i32 @GdipSetStringFormatTabStops(i32* %93, double -1.000000e+01, i32 1, i32* %94)
  store i32 %95, i32* %2, align 4
  %96 = load i32, i32* @NotImplemented, align 4
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @expect(i32 %96, i32 %97)
  store double -1.000000e+00, double* %5, align 8
  %99 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  store double -1.000000e+00, double* %99, align 16
  %100 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  store double -1.000000e+00, double* %100, align 8
  %101 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  store double -1.000000e+00, double* %101, align 16
  %102 = load i32*, i32** %1, align 8
  %103 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %104 = call i32 @GdipGetStringFormatTabStops(i32* %102, i32 0, double* %5, double* %103)
  store i32 %104, i32* %2, align 4
  %105 = load i32, i32* @Ok, align 4
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @expect(i32 %105, i32 %106)
  %108 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %109 = load double, double* %108, align 16
  %110 = call i32 @expectf(double -1.000000e+00, double %109)
  %111 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  %112 = load double, double* %111, align 8
  %113 = call i32 @expectf(double -1.000000e+00, double %112)
  %114 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  %115 = load double, double* %114, align 16
  %116 = call i32 @expectf(double -1.000000e+00, double %115)
  %117 = load double, double* %5, align 8
  %118 = call i32 @expectf(double 0.000000e+00, double %117)
  %119 = load i32*, i32** %1, align 8
  %120 = load i32*, i32** @tabstops, align 8
  %121 = call i32 @GdipSetStringFormatTabStops(i32* %119, double 0.000000e+00, i32 3, i32* %120)
  store i32 %121, i32* %2, align 4
  %122 = load i32, i32* @Ok, align 4
  %123 = load i32, i32* %2, align 4
  %124 = call i32 @expect(i32 %122, i32 %123)
  store i32 0, i32* %3, align 4
  %125 = load i32*, i32** %1, align 8
  %126 = call i32 @GdipGetStringFormatTabStopCount(i32* %125, i32* %3)
  store i32 %126, i32* %2, align 4
  %127 = load i32, i32* @Ok, align 4
  %128 = load i32, i32* %2, align 4
  %129 = call i32 @expect(i32 %127, i32 %128)
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @expect(i32 3, i32 %130)
  store double -1.000000e+00, double* %5, align 8
  %132 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  store double -1.000000e+00, double* %132, align 16
  %133 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  store double -1.000000e+00, double* %133, align 8
  %134 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  store double -1.000000e+00, double* %134, align 16
  %135 = load i32*, i32** %1, align 8
  %136 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %137 = call i32 @GdipGetStringFormatTabStops(i32* %135, i32 3, double* %5, double* %136)
  store i32 %137, i32* %2, align 4
  %138 = load i32, i32* @Ok, align 4
  %139 = load i32, i32* %2, align 4
  %140 = call i32 @expect(i32 %138, i32 %139)
  %141 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %142 = load double, double* %141, align 16
  %143 = call i32 @expectf(double 0.000000e+00, double %142)
  %144 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  %145 = load double, double* %144, align 8
  %146 = call i32 @expectf(double 1.000000e+01, double %145)
  %147 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  %148 = load double, double* %147, align 16
  %149 = call i32 @expectf(double 2.000000e+00, double %148)
  %150 = load double, double* %5, align 8
  %151 = call i32 @expectf(double 0.000000e+00, double %150)
  %152 = load i32*, i32** %1, align 8
  %153 = load i32*, i32** @tabstops, align 8
  %154 = call i32 @GdipSetStringFormatTabStops(i32* %152, double 1.000000e+01, i32 3, i32* %153)
  store i32 %154, i32* %2, align 4
  %155 = load i32, i32* @Ok, align 4
  %156 = load i32, i32* %2, align 4
  %157 = call i32 @expect(i32 %155, i32 %156)
  store double -1.000000e+00, double* %5, align 8
  %158 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  store double -1.000000e+00, double* %158, align 16
  %159 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  store double -1.000000e+00, double* %159, align 8
  %160 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  store double -1.000000e+00, double* %160, align 16
  %161 = load i32*, i32** %1, align 8
  %162 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %163 = call i32 @GdipGetStringFormatTabStops(i32* %161, i32 0, double* %5, double* %162)
  store i32 %163, i32* %2, align 4
  %164 = load i32, i32* @Ok, align 4
  %165 = load i32, i32* %2, align 4
  %166 = call i32 @expect(i32 %164, i32 %165)
  %167 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %168 = load double, double* %167, align 16
  %169 = call i32 @expectf(double -1.000000e+00, double %168)
  %170 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  %171 = load double, double* %170, align 8
  %172 = call i32 @expectf(double -1.000000e+00, double %171)
  %173 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  %174 = load double, double* %173, align 16
  %175 = call i32 @expectf(double -1.000000e+00, double %174)
  %176 = load double, double* %5, align 8
  %177 = call i32 @expectf(double 1.000000e+01, double %176)
  %178 = load i32*, i32** %1, align 8
  %179 = load i32*, i32** @tabstops, align 8
  %180 = call i32 @GdipSetStringFormatTabStops(i32* %178, double 0.000000e+00, i32 0, i32* %179)
  store i32 %180, i32* %2, align 4
  %181 = load i32, i32* @Ok, align 4
  %182 = load i32, i32* %2, align 4
  %183 = call i32 @expect(i32 %181, i32 %182)
  store i32 0, i32* %3, align 4
  %184 = load i32*, i32** %1, align 8
  %185 = call i32 @GdipGetStringFormatTabStopCount(i32* %184, i32* %3)
  store i32 %185, i32* %2, align 4
  %186 = load i32, i32* @Ok, align 4
  %187 = load i32, i32* %2, align 4
  %188 = call i32 @expect(i32 %186, i32 %187)
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @expect(i32 3, i32 %189)
  %191 = load i32*, i32** %1, align 8
  %192 = call i32 @GdipDeleteStringFormat(i32* %191)
  store i32 %192, i32* %2, align 4
  %193 = load i32, i32* @Ok, align 4
  %194 = load i32, i32* %2, align 4
  %195 = call i32 @expect(i32 %193, i32 %194)
  ret void
}

declare dso_local i32 @GdipCreateStringFormat(i32, i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipGetStringFormatTabStopCount(i32*, i32*) #1

declare dso_local i32 @GdipSetStringFormatTabStops(i32*, double, i32, i32*) #1

declare dso_local i32 @GdipGetStringFormatTabStops(i32*, i32, double*, double*) #1

declare dso_local i32 @expectf(double, double) #1

declare dso_local i32 @GdipDeleteStringFormat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
