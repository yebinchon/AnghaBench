; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckCurvesOnlyTransforms.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckCurvesOnlyTransforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsSigGrayData = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Gray float optimizeable transform\00", align 1
@TYPE_GRAY_FLT = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Gray 8 optimizeable transform\00", align 1
@TYPE_GRAY_8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Gray 16 optimizeable transform\00", align 1
@TYPE_GRAY_16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Gray float non-optimizeable transform\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Gray 8 non-optimizeable transform\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Gray 16 non-optimizeable transform\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckCurvesOnlyTransforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckCurvesOnlyTransforms() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 1, i32* %9, align 4
  %10 = call i32 (...) @DbgThread()
  %11 = call i32* @cmsBuildGamma(i32 %10, double 2.200000e+00)
  store i32* %11, i32** %6, align 8
  %12 = call i32 (...) @DbgThread()
  %13 = call i32* @cmsBuildGamma(i32 %12, double 0x3FDD1745D1745D17)
  store i32* %13, i32** %7, align 8
  %14 = call i32 (...) @DbgThread()
  %15 = call i32* @cmsBuildGamma(i32 %14, double 4.840000e+00)
  store i32* %15, i32** %8, align 8
  %16 = call i32 (...) @DbgThread()
  %17 = load i32, i32* @cmsSigGrayData, align 4
  %18 = call i32* @cmsCreateLinearizationDeviceLink(i32 %16, i32 %17, i32** %6)
  store i32* %18, i32** %3, align 8
  %19 = call i32 (...) @DbgThread()
  %20 = load i32, i32* @cmsSigGrayData, align 4
  %21 = call i32* @cmsCreateLinearizationDeviceLink(i32 %19, i32 %20, i32** %7)
  store i32* %21, i32** %4, align 8
  %22 = call i32 (...) @DbgThread()
  %23 = load i32, i32* @cmsSigGrayData, align 4
  %24 = call i32* @cmsCreateLinearizationDeviceLink(i32 %22, i32 %23, i32** %8)
  store i32* %24, i32** %5, align 8
  %25 = call i32 @SubTest(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (...) @DbgThread()
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @TYPE_GRAY_FLT, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @TYPE_GRAY_FLT, align 4
  %31 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %32 = call i32 @cmsCreateTransform(i32 %26, i32* %27, i32 %28, i32* %29, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @CheckFloatlinearXFORM(i32 %33, i32 1)
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = call i32 (...) @DbgThread()
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @cmsDeleteTransform(i32 %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %0
  br label %169

43:                                               ; preds = %0
  %44 = call i32 @SubTest(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 (...) @DbgThread()
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @TYPE_GRAY_8, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @TYPE_GRAY_8, align 4
  %50 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %51 = call i32 @cmsCreateTransform(i32 %45, i32* %46, i32 %47, i32* %48, i32 %49, i32 %50, i32 0)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @Check8linearXFORM(i32 %52, i32 1)
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = call i32 (...) @DbgThread()
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @cmsDeleteTransform(i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %169

62:                                               ; preds = %43
  %63 = call i32 @SubTest(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %64 = call i32 (...) @DbgThread()
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @TYPE_GRAY_16, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @TYPE_GRAY_16, align 4
  %69 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %70 = call i32 @cmsCreateTransform(i32 %64, i32* %65, i32 %66, i32* %67, i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @Check16linearXFORM(i32 %71, i32 1)
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = call i32 (...) @DbgThread()
  %76 = load i32, i32* %1, align 4
  %77 = call i32 @cmsDeleteTransform(i32 %75, i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %62
  br label %169

81:                                               ; preds = %62
  %82 = call i32 @SubTest(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %83 = call i32 (...) @DbgThread()
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* @TYPE_GRAY_FLT, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @TYPE_GRAY_FLT, align 4
  %88 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %89 = call i32 @cmsCreateTransform(i32 %83, i32* %84, i32 %85, i32* %86, i32 %87, i32 %88, i32 0)
  store i32 %89, i32* %1, align 4
  %90 = call i32 (...) @DbgThread()
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @TYPE_GRAY_FLT, align 4
  %93 = load i32, i32* @TYPE_GRAY_FLT, align 4
  %94 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %95 = call i32 @cmsCreateTransform(i32 %90, i32* %91, i32 %92, i32* null, i32 %93, i32 %94, i32 0)
  store i32 %95, i32* %2, align 4
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @CompareFloatXFORM(i32 %96, i32 %97, i32 1)
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = call i32 (...) @DbgThread()
  %102 = load i32, i32* %1, align 4
  %103 = call i32 @cmsDeleteTransform(i32 %101, i32 %102)
  %104 = call i32 (...) @DbgThread()
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @cmsDeleteTransform(i32 %104, i32 %105)
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %81
  br label %169

110:                                              ; preds = %81
  %111 = call i32 @SubTest(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %112 = call i32 (...) @DbgThread()
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* @TYPE_GRAY_8, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = load i32, i32* @TYPE_GRAY_8, align 4
  %117 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %118 = call i32 @cmsCreateTransform(i32 %112, i32* %113, i32 %114, i32* %115, i32 %116, i32 %117, i32 0)
  store i32 %118, i32* %1, align 4
  %119 = call i32 (...) @DbgThread()
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* @TYPE_GRAY_8, align 4
  %122 = load i32, i32* @TYPE_GRAY_8, align 4
  %123 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %124 = call i32 @cmsCreateTransform(i32 %119, i32* %120, i32 %121, i32* null, i32 %122, i32 %123, i32 0)
  store i32 %124, i32* %2, align 4
  %125 = load i32, i32* %1, align 4
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @Compare8bitXFORM(i32 %125, i32 %126, i32 1)
  %128 = load i32, i32* %9, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %9, align 4
  %130 = call i32 (...) @DbgThread()
  %131 = load i32, i32* %1, align 4
  %132 = call i32 @cmsDeleteTransform(i32 %130, i32 %131)
  %133 = call i32 (...) @DbgThread()
  %134 = load i32, i32* %2, align 4
  %135 = call i32 @cmsDeleteTransform(i32 %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %110
  br label %169

139:                                              ; preds = %110
  %140 = call i32 @SubTest(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %141 = call i32 (...) @DbgThread()
  %142 = load i32*, i32** %3, align 8
  %143 = load i32, i32* @TYPE_GRAY_16, align 4
  %144 = load i32*, i32** %3, align 8
  %145 = load i32, i32* @TYPE_GRAY_16, align 4
  %146 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %147 = call i32 @cmsCreateTransform(i32 %141, i32* %142, i32 %143, i32* %144, i32 %145, i32 %146, i32 0)
  store i32 %147, i32* %1, align 4
  %148 = call i32 (...) @DbgThread()
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* @TYPE_GRAY_16, align 4
  %151 = load i32, i32* @TYPE_GRAY_16, align 4
  %152 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %153 = call i32 @cmsCreateTransform(i32 %148, i32* %149, i32 %150, i32* null, i32 %151, i32 %152, i32 0)
  store i32 %153, i32* %2, align 4
  %154 = load i32, i32* %1, align 4
  %155 = load i32, i32* %2, align 4
  %156 = call i32 @Compare16bitXFORM(i32 %154, i32 %155, i32 1)
  %157 = load i32, i32* %9, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %9, align 4
  %159 = call i32 (...) @DbgThread()
  %160 = load i32, i32* %1, align 4
  %161 = call i32 @cmsDeleteTransform(i32 %159, i32 %160)
  %162 = call i32 (...) @DbgThread()
  %163 = load i32, i32* %2, align 4
  %164 = call i32 @cmsDeleteTransform(i32 %162, i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %139
  br label %169

168:                                              ; preds = %139
  br label %169

169:                                              ; preds = %168, %167, %138, %109, %80, %61, %42
  %170 = call i32 (...) @DbgThread()
  %171 = load i32*, i32** %3, align 8
  %172 = call i32 @cmsCloseProfile(i32 %170, i32* %171)
  %173 = call i32 (...) @DbgThread()
  %174 = load i32*, i32** %4, align 8
  %175 = call i32 @cmsCloseProfile(i32 %173, i32* %174)
  %176 = call i32 (...) @DbgThread()
  %177 = load i32*, i32** %5, align 8
  %178 = call i32 @cmsCloseProfile(i32 %176, i32* %177)
  %179 = call i32 (...) @DbgThread()
  %180 = load i32*, i32** %6, align 8
  %181 = call i32 @cmsFreeToneCurve(i32 %179, i32* %180)
  %182 = call i32 (...) @DbgThread()
  %183 = load i32*, i32** %7, align 8
  %184 = call i32 @cmsFreeToneCurve(i32 %182, i32* %183)
  %185 = call i32 (...) @DbgThread()
  %186 = load i32*, i32** %8, align 8
  %187 = call i32 @cmsFreeToneCurve(i32 %185, i32* %186)
  %188 = load i32, i32* %9, align 4
  ret i32 %188
}

declare dso_local i32* @cmsBuildGamma(i32, double) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32* @cmsCreateLinearizationDeviceLink(i32, i32, i32**) #1

declare dso_local i32 @SubTest(i8*) #1

declare dso_local i32 @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @CheckFloatlinearXFORM(i32, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

declare dso_local i32 @Check8linearXFORM(i32, i32) #1

declare dso_local i32 @Check16linearXFORM(i32, i32) #1

declare dso_local i32 @CompareFloatXFORM(i32, i32, i32) #1

declare dso_local i32 @Compare8bitXFORM(i32, i32, i32) #1

declare dso_local i32 @Compare16bitXFORM(i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
