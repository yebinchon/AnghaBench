; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_translate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double }

@Ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"status %08x\0A\00", align 1
@FillModeAlternate = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i64 0, align 8
@CombineModeReplace = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Expected to be equal.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_translate() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @GetDC(i32 0)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @GdipCreateFromHDC(i32 %10, i32** %3)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @Ok, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %6, align 8
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* @FillModeAlternate, align 4
  %19 = call i64 @GdipCreatePath(i32 %18, i32** %4)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @Ok, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %6, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = call i64 @GdipCreateRegion(i32** %1)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @Ok, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %6, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = call i64 @GdipCreateRegion(i32** %2)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @Ok, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %6, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = call i64 @GdipTranslateRegion(i32* null, double 0.000000e+00, double 0.000000e+00)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @InvalidParameter, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %6, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i64 @GdipTranslateRegion(i32* %47, double 1.000000e+01, double 1.000000e+01)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @Ok, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %6, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i64 @GdipSetEmpty(i32* %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @Ok, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %6, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i64 @GdipTranslateRegion(i32* %63, double 1.000000e+01, double 1.000000e+01)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @Ok, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %6, align 8
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %69)
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store double 1.000000e+01, double* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store double 0.000000e+00, double* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store double 1.000000e+02, double* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store double 1.000000e+02, double* %74, align 8
  %75 = load i32*, i32** %1, align 8
  %76 = load i32, i32* @CombineModeReplace, align 4
  %77 = call i64 @GdipCombineRegionRect(i32* %75, %struct.TYPE_3__* %5, i32 %76)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @Ok, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %6, align 8
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %82)
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store double 1.500000e+01, double* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store double -2.000000e+00, double* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store double 1.000000e+02, double* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store double 1.000000e+02, double* %87, align 8
  %88 = load i32*, i32** %2, align 8
  %89 = load i32, i32* @CombineModeReplace, align 4
  %90 = call i64 @GdipCombineRegionRect(i32* %88, %struct.TYPE_3__* %5, i32 %89)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @Ok, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %6, align 8
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %95)
  %97 = load i32*, i32** %1, align 8
  %98 = call i64 @GdipTranslateRegion(i32* %97, double 5.000000e+00, double -2.000000e+00)
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @Ok, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %6, align 8
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %8, align 4
  %106 = load i32*, i32** %1, align 8
  %107 = load i32*, i32** %2, align 8
  %108 = load i32*, i32** %3, align 8
  %109 = call i64 @GdipIsEqualRegion(i32* %106, i32* %107, i32* %108, i32* %8)
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @Ok, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %6, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32*, i32** %4, align 8
  %119 = call i64 @GdipAddPathEllipse(i32* %118, double 0.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.500000e+02)
  store i64 %119, i64* %6, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* @Ok, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i64, i64* %6, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %124)
  %126 = load i32*, i32** %1, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* @CombineModeReplace, align 4
  %129 = call i64 @GdipCombineRegionPath(i32* %126, i32* %127, i32 %128)
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* @Ok, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i64, i64* %6, align 8
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %134)
  %136 = load i32*, i32** %4, align 8
  %137 = call i64 @GdipResetPath(i32* %136)
  store i64 %137, i64* %6, align 8
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @Ok, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i64, i64* %6, align 8
  %143 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %142)
  %144 = load i32*, i32** %4, align 8
  %145 = call i64 @GdipAddPathEllipse(i32* %144, double 1.000000e+01, double 2.100000e+01, double 1.000000e+02, double 1.500000e+02)
  store i64 %145, i64* %6, align 8
  %146 = load i64, i64* %6, align 8
  %147 = load i64, i64* @Ok, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i64, i64* %6, align 8
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %150)
  %152 = load i32*, i32** %2, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = load i32, i32* @CombineModeReplace, align 4
  %155 = call i64 @GdipCombineRegionPath(i32* %152, i32* %153, i32 %154)
  store i64 %155, i64* %6, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @Ok, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i64, i64* %6, align 8
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %160)
  %162 = load i32*, i32** %1, align 8
  %163 = call i64 @GdipTranslateRegion(i32* %162, double 1.000000e+01, double 1.100000e+01)
  store i64 %163, i64* %6, align 8
  %164 = load i64, i64* %6, align 8
  %165 = load i64, i64* @Ok, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i64, i64* %6, align 8
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %168)
  %170 = load i32, i32* @FALSE, align 4
  store i32 %170, i32* %8, align 4
  %171 = load i32*, i32** %1, align 8
  %172 = load i32*, i32** %2, align 8
  %173 = load i32*, i32** %3, align 8
  %174 = call i64 @GdipIsEqualRegion(i32* %171, i32* %172, i32* %173, i32* %8)
  store i64 %174, i64* %6, align 8
  %175 = load i64, i64* %6, align 8
  %176 = load i64, i64* @Ok, align 8
  %177 = icmp eq i64 %175, %176
  %178 = zext i1 %177 to i32
  %179 = load i64, i64* %6, align 8
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %179)
  %181 = load i32, i32* %8, align 4
  %182 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %183 = load i32*, i32** %1, align 8
  %184 = call i64 @GdipDeleteRegion(i32* %183)
  store i64 %184, i64* %6, align 8
  %185 = load i64, i64* %6, align 8
  %186 = load i64, i64* @Ok, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i64, i64* %6, align 8
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %189)
  %191 = load i32*, i32** %2, align 8
  %192 = call i64 @GdipDeleteRegion(i32* %191)
  store i64 %192, i64* %6, align 8
  %193 = load i64, i64* %6, align 8
  %194 = load i64, i64* @Ok, align 8
  %195 = icmp eq i64 %193, %194
  %196 = zext i1 %195 to i32
  %197 = load i64, i64* %6, align 8
  %198 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %197)
  %199 = load i32*, i32** %3, align 8
  %200 = call i64 @GdipDeleteGraphics(i32* %199)
  store i64 %200, i64* %6, align 8
  %201 = load i64, i64* %6, align 8
  %202 = load i64, i64* @Ok, align 8
  %203 = icmp eq i64 %201, %202
  %204 = zext i1 %203 to i32
  %205 = load i64, i64* %6, align 8
  %206 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %205)
  %207 = load i32*, i32** %4, align 8
  %208 = call i64 @GdipDeletePath(i32* %207)
  store i64 %208, i64* %6, align 8
  %209 = load i64, i64* %6, align 8
  %210 = load i64, i64* @Ok, align 8
  %211 = icmp eq i64 %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i64, i64* %6, align 8
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %213)
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @ReleaseDC(i32 0, i32 %215)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i64 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GdipCreatePath(i32, i32**) #1

declare dso_local i64 @GdipCreateRegion(i32**) #1

declare dso_local i64 @GdipTranslateRegion(i32*, double, double) #1

declare dso_local i64 @GdipSetEmpty(i32*) #1

declare dso_local i64 @GdipCombineRegionRect(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @GdipIsEqualRegion(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @GdipAddPathEllipse(i32*, double, double, double, double) #1

declare dso_local i64 @GdipCombineRegionPath(i32*, i32*, i32) #1

declare dso_local i64 @GdipResetPath(i32*) #1

declare dso_local i64 @GdipDeleteRegion(i32*) #1

declare dso_local i64 @GdipDeleteGraphics(i32*) #1

declare dso_local i64 @GdipDeletePath(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
