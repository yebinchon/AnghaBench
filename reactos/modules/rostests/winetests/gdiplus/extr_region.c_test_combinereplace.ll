; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_combinereplace.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_combinereplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double, double, double }

@Ok = common dso_local global i32 0, align 4
@CombineModeReplace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"buf[1] = %08x\0A\00", align 1
@RGNDATA_RECT = common dso_local global i32 0, align 4
@FillModeAlternate = common dso_local global i32 0, align 4
@RGNDATA_PATH = common dso_local global i32 0, align 4
@RGNDATA_INFINITE_RECT = common dso_local global i32 0, align 4
@CombineModeUnion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_combinereplace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_combinereplace() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32, align 4
  %7 = alloca [50 x i32], align 16
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store double 0.000000e+00, double* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store double 0.000000e+00, double* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store double 1.000000e+02, double* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store double 1.000000e+02, double* %11, align 8
  %12 = call i32 @GdipCreateRegionRect(%struct.TYPE_4__* %5, i32** %2)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @Ok, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @expect(i32 %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @CombineModeReplace, align 4
  %18 = call i32 @GdipCombineRegionRect(i32* %16, %struct.TYPE_4__* %5, i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @Ok, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @GdipGetRegionDataSize(i32* %22, i32* %6)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @Ok, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @expect(i32 36, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %31 = call i32 @GdipGetRegionData(i32* %29, i32* %30, i32 200, i32* %6)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* @Ok, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @expect(i32 36, i32 %35)
  %37 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %38 = call i32 @expect_dword(i32* %37, i32 28)
  %39 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = call i32 @expect_magic(i32* %43)
  %45 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = call i32 @expect_dword(i32* %46, i32 0)
  %48 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* @RGNDATA_RECT, align 4
  %51 = call i32 @expect_dword(i32* %49, i32 %50)
  %52 = load i32, i32* @FillModeAlternate, align 4
  %53 = call i32 @GdipCreatePath(i32 %52, i32** %4)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* @Ok, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @expect(i32 %54, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @GdipAddPathEllipse(i32* %57, double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 2.500000e+02)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* @Ok, align 4
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @expect(i32 %59, i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @CombineModeReplace, align 4
  %65 = call i32 @GdipCombineRegionPath(i32* %62, i32* %63, i32 %64)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* @Ok, align 4
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @expect(i32 %66, i32 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @GdipGetRegionDataSize(i32* %69, i32* %6)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* @Ok, align 4
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @expect(i32 %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @expect(i32 156, i32 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %78 = call i32 @GdipGetRegionData(i32* %76, i32* %77, i32 200, i32* %6)
  store i32 %78, i32* %1, align 4
  %79 = load i32, i32* @Ok, align 4
  %80 = load i32, i32* %1, align 4
  %81 = call i32 @expect(i32 %79, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @expect(i32 156, i32 %82)
  %84 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %85 = call i32 @expect_dword(i32* %84, i32 148)
  %86 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = call i32 @expect_magic(i32* %90)
  %92 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = call i32 @expect_dword(i32* %93, i32 0)
  %95 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* @RGNDATA_PATH, align 4
  %98 = call i32 @expect_dword(i32* %96, i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @GdipDeletePath(i32* %99)
  %101 = call i32 @GdipCreateRegion(i32** %3)
  store i32 %101, i32* %1, align 4
  %102 = load i32, i32* @Ok, align 4
  %103 = load i32, i32* %1, align 4
  %104 = call i32 @expect(i32 %102, i32 %103)
  %105 = load i32*, i32** %2, align 8
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* @CombineModeReplace, align 4
  %108 = call i32 @GdipCombineRegionRegion(i32* %105, i32* %106, i32 %107)
  store i32 %108, i32* %1, align 4
  %109 = load i32, i32* @Ok, align 4
  %110 = load i32, i32* %1, align 4
  %111 = call i32 @expect(i32 %109, i32 %110)
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 @GdipGetRegionDataSize(i32* %112, i32* %6)
  store i32 %113, i32* %1, align 4
  %114 = load i32, i32* @Ok, align 4
  %115 = load i32, i32* %1, align 4
  %116 = call i32 @expect(i32 %114, i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @expect(i32 20, i32 %117)
  %119 = load i32*, i32** %2, align 8
  %120 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %121 = call i32 @GdipGetRegionData(i32* %119, i32* %120, i32 200, i32* %6)
  store i32 %121, i32* %1, align 4
  %122 = load i32, i32* @Ok, align 4
  %123 = load i32, i32* %1, align 4
  %124 = call i32 @expect(i32 %122, i32 %123)
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @expect(i32 20, i32 %125)
  %127 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %128 = call i32 @expect_dword(i32* %127, i32 12)
  %129 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = call i32 @expect_magic(i32* %133)
  %135 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  %137 = call i32 @expect_dword(i32* %136, i32 0)
  %138 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  %140 = load i32, i32* @RGNDATA_INFINITE_RECT, align 4
  %141 = call i32 @expect_dword(i32* %139, i32 %140)
  %142 = load i32*, i32** %3, align 8
  %143 = call i32 @GdipDeleteRegion(i32* %142)
  %144 = call i32 @GdipCreateRegionRect(%struct.TYPE_4__* %5, i32** %3)
  store i32 %144, i32* %1, align 4
  %145 = load i32, i32* @Ok, align 4
  %146 = load i32, i32* %1, align 4
  %147 = call i32 @expect(i32 %145, i32 %146)
  %148 = load i32, i32* @FillModeAlternate, align 4
  %149 = call i32 @GdipCreatePath(i32 %148, i32** %4)
  store i32 %149, i32* %1, align 4
  %150 = load i32, i32* @Ok, align 4
  %151 = load i32, i32* %1, align 4
  %152 = call i32 @expect(i32 %150, i32 %151)
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @GdipAddPathEllipse(i32* %153, double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 2.500000e+02)
  store i32 %154, i32* %1, align 4
  %155 = load i32, i32* @Ok, align 4
  %156 = load i32, i32* %1, align 4
  %157 = call i32 @expect(i32 %155, i32 %156)
  %158 = load i32*, i32** %3, align 8
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* @CombineModeUnion, align 4
  %161 = call i32 @GdipCombineRegionPath(i32* %158, i32* %159, i32 %160)
  store i32 %161, i32* %1, align 4
  %162 = load i32, i32* @Ok, align 4
  %163 = load i32, i32* %1, align 4
  %164 = call i32 @expect(i32 %162, i32 %163)
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @GdipDeletePath(i32* %165)
  %167 = load i32*, i32** %2, align 8
  %168 = load i32*, i32** %3, align 8
  %169 = load i32, i32* @CombineModeReplace, align 4
  %170 = call i32 @GdipCombineRegionRegion(i32* %167, i32* %168, i32 %169)
  store i32 %170, i32* %1, align 4
  %171 = load i32, i32* @Ok, align 4
  %172 = load i32, i32* %1, align 4
  %173 = call i32 @expect(i32 %171, i32 %172)
  %174 = load i32*, i32** %3, align 8
  %175 = call i32 @GdipDeleteRegion(i32* %174)
  %176 = load i32*, i32** %2, align 8
  %177 = call i32 @GdipGetRegionDataSize(i32* %176, i32* %6)
  store i32 %177, i32* %1, align 4
  %178 = load i32, i32* @Ok, align 4
  %179 = load i32, i32* %1, align 4
  %180 = call i32 @expect(i32 %178, i32 %179)
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @expect(i32 180, i32 %181)
  %183 = load i32*, i32** %2, align 8
  %184 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %185 = call i32 @GdipGetRegionData(i32* %183, i32* %184, i32 200, i32* %6)
  store i32 %185, i32* %1, align 4
  %186 = load i32, i32* @Ok, align 4
  %187 = load i32, i32* %1, align 4
  %188 = call i32 @expect(i32 %186, i32 %187)
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @expect(i32 180, i32 %189)
  %191 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %192 = call i32 @expect_dword(i32* %191, i32 172)
  %193 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %194)
  %196 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = call i32 @expect_magic(i32* %197)
  %199 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  %201 = call i32 @expect_dword(i32* %200, i32 2)
  %202 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %203 = getelementptr inbounds i32, i32* %202, i64 4
  %204 = load i32, i32* @CombineModeUnion, align 4
  %205 = call i32 @expect_dword(i32* %203, i32 %204)
  %206 = load i32*, i32** %2, align 8
  %207 = call i32 @GdipDeleteRegion(i32* %206)
  ret void
}

declare dso_local i32 @GdipCreateRegionRect(%struct.TYPE_4__*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCombineRegionRect(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @GdipGetRegionDataSize(i32*, i32*) #1

declare dso_local i32 @GdipGetRegionData(i32*, i32*, i32, i32*) #1

declare dso_local i32 @expect_dword(i32*, i32) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @expect_magic(i32*) #1

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathEllipse(i32*, double, double, double, double) #1

declare dso_local i32 @GdipCombineRegionPath(i32*, i32*, i32) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

declare dso_local i32 @GdipCreateRegion(i32**) #1

declare dso_local i32 @GdipCombineRegionRegion(i32*, i32*, i32) #1

declare dso_local i32 @GdipDeleteRegion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
