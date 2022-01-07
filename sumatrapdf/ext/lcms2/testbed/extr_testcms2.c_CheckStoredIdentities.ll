; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckStoredIdentities.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckStoredIdentities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_Lab_8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"abstractv2.icc\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"abstractv4.icc\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"V4\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"V2\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"V2 -> V4\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"V4 -> V2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckStoredIdentities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckStoredIdentities() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 1, i32* %6, align 4
  %7 = call i32 (...) @DbgThread()
  %8 = call i32 @cmsCreateLab4Profile(i32 %7, i32* null)
  store i32 %8, i32* %1, align 4
  %9 = call i32 (...) @DbgThread()
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @TYPE_Lab_8, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @TYPE_Lab_8, align 4
  %14 = call i32 @cmsCreateTransform(i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 0, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @cmsTransform2DeviceLink(i32* null, i32 %15, double 3.400000e+00, i32 0)
  store i32 %16, i32* %2, align 4
  %17 = call i32 (...) @DbgThread()
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @cmsSaveProfileToFile(i32 %17, i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (...) @DbgThread()
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @cmsCloseProfile(i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @cmsTransform2DeviceLink(i32* null, i32 %23, double 4.300000e+00, i32 0)
  store i32 %24, i32* %2, align 4
  %25 = call i32 (...) @DbgThread()
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @cmsSaveProfileToFile(i32 %25, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 (...) @DbgThread()
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @cmsCloseProfile(i32 %28, i32 %29)
  %31 = call i32 (...) @DbgThread()
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @cmsDeleteTransform(i32 %31, i32 %32)
  %34 = call i32 (...) @DbgThread()
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @cmsCloseProfile(i32 %34, i32 %35)
  %37 = call i32 (...) @DbgThread()
  %38 = call i32 @cmsOpenProfileFromFile(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %3, align 4
  %39 = call i32 (...) @DbgThread()
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @TYPE_Lab_DBL, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @TYPE_Lab_DBL, align 4
  %44 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %45 = call i32 @cmsCreateTransform(i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %5, align 4
  %46 = call i32 @SubTest(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @CheckSeveralLab(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = call i32 (...) @DbgThread()
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @cmsDeleteTransform(i32 %51, i32 %52)
  %54 = call i32 (...) @DbgThread()
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @cmsCloseProfile(i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %0
  br label %135

60:                                               ; preds = %0
  %61 = call i32 @SubTest(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %62 = call i32 (...) @DbgThread()
  %63 = call i32 @cmsOpenProfileFromFile(i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %63, i32* %4, align 4
  %64 = call i32 (...) @DbgThread()
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @TYPE_Lab_DBL, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @TYPE_Lab_DBL, align 4
  %69 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %70 = call i32 @cmsCreateTransform(i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @CheckSeveralLab(i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = call i32 (...) @DbgThread()
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @cmsDeleteTransform(i32 %75, i32 %76)
  %78 = call i32 (...) @DbgThread()
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @cmsCloseProfile(i32 %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %60
  br label %135

84:                                               ; preds = %60
  %85 = call i32 @SubTest(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %86 = call i32 (...) @DbgThread()
  %87 = call i32 @cmsOpenProfileFromFile(i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %87, i32* %4, align 4
  %88 = call i32 (...) @DbgThread()
  %89 = call i32 @cmsOpenProfileFromFile(i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %89, i32* %3, align 4
  %90 = call i32 (...) @DbgThread()
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @TYPE_Lab_DBL, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @TYPE_Lab_DBL, align 4
  %95 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %96 = call i32 @cmsCreateTransform(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 0)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @CheckSeveralLab(i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = call i32 (...) @DbgThread()
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @cmsDeleteTransform(i32 %101, i32 %102)
  %104 = call i32 (...) @DbgThread()
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @cmsCloseProfile(i32 %104, i32 %105)
  %107 = call i32 (...) @DbgThread()
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @cmsCloseProfile(i32 %107, i32 %108)
  %110 = call i32 @SubTest(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %111 = call i32 (...) @DbgThread()
  %112 = call i32 @cmsOpenProfileFromFile(i32 %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %112, i32* %4, align 4
  %113 = call i32 (...) @DbgThread()
  %114 = call i32 @cmsOpenProfileFromFile(i32 %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %114, i32* %3, align 4
  %115 = call i32 (...) @DbgThread()
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @TYPE_Lab_DBL, align 4
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @TYPE_Lab_DBL, align 4
  %120 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %121 = call i32 @cmsCreateTransform(i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 0)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @CheckSeveralLab(i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %6, align 4
  %126 = call i32 (...) @DbgThread()
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @cmsDeleteTransform(i32 %126, i32 %127)
  %129 = call i32 (...) @DbgThread()
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @cmsCloseProfile(i32 %129, i32 %130)
  %132 = call i32 (...) @DbgThread()
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @cmsCloseProfile(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %84, %83, %59
  %136 = call i32 @remove(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %137 = call i32 @remove(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCreateTransform(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cmsTransform2DeviceLink(i32*, i32, double, i32) #1

declare dso_local i32 @cmsSaveProfileToFile(i32, i32, i8*) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

declare dso_local i32 @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i32 @SubTest(i8*) #1

declare dso_local i32 @CheckSeveralLab(i32) #1

declare dso_local i32 @remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
