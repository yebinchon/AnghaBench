; ModuleID = '/home/carl/AnghaBench/vlc/test/dynamicoverlay/extr_overlay-test.c_BasicTest.c'
source_filename = "/home/carl/AnghaBench/vlc/test/dynamicoverlay/extr_overlay-test.c_BasicTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Activating overlay...\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Sweeping alpha...\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Circle motion...\00", align 1
@M_PI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Atomic motion...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BasicTest(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @SetVisibility(i32* %10, i32* %11, i32 %12, i32 1)
  %14 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 255, i32* %7, align 4
  br label %16

16:                                               ; preds = %27, %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, -255
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @abs(i32 %23) #3
  %25 = call i32 @SetAlpha(i32* %20, i32* %21, i32 %22, i32 %24)
  %26 = call i32 @usleep(i32 20000)
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 8
  store i32 %29, i32* %7, align 4
  br label %16

30:                                               ; preds = %16
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @SetAlpha(i32* %31, i32* %32, i32 %33, i32 255)
  %35 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store float 0.000000e+00, float* %8, align 4
  br label %37

37:                                               ; preds = %61, %30
  %38 = load float, float* %8, align 4
  %39 = load i32, i32* @M_PI, align 4
  %40 = mul nsw i32 2, %39
  %41 = sitofp i32 %40 to float
  %42 = fcmp ole float %38, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %37
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load float, float* %8, align 4
  %48 = call double @cos(float %47)
  %49 = fneg double %48
  %50 = fmul double %49, 1.000000e+02
  %51 = fadd double %50, 1.000000e+02
  %52 = fptosi double %51 to i32
  %53 = load float, float* %8, align 4
  %54 = call double @sin(float %53)
  %55 = fneg double %54
  %56 = fmul double %55, 1.000000e+02
  %57 = fadd double %56, 1.000000e+02
  %58 = fptosi double %57 to i32
  %59 = call i32 @SetPosition(i32* %44, i32* %45, i32 %46, i32 %52, i32 %58)
  %60 = call i32 @usleep(i32 20000)
  br label %61

61:                                               ; preds = %43
  %62 = load i32, i32* @M_PI, align 4
  %63 = sitofp i32 %62 to double
  %64 = fdiv double %63, 6.400000e+01
  %65 = load float, float* %8, align 4
  %66 = fpext float %65 to double
  %67 = fadd double %66, %64
  %68 = fptrunc double %67 to float
  store float %68, float* %8, align 4
  br label %37

69:                                               ; preds = %37
  %70 = load i32*, i32** %4, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @SetPosition(i32* %70, i32* %71, i32 %72, i32 0, i32 100)
  %74 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %75 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @StartAtomic(i32* %76, i32* %77)
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @SetPosition(i32* %79, i32* null, i32 %80, i32 200, i32 50)
  %82 = call i32 @sleep(i32 1)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @SetPosition(i32* %83, i32* null, i32 %84, i32 0, i32 0)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @EndAtomic(i32* %86, i32* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @CheckResult(i32* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @CheckResult(i32* %91)
  %93 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %94 = call i32 @sleep(i32 5)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @SetVisibility(i32*, i32*, i32, i32) #1

declare dso_local i32 @SetAlpha(i32*, i32*, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @SetPosition(i32*, i32*, i32, i32, i32) #1

declare dso_local double @cos(float) #1

declare dso_local double @sin(float) #1

declare dso_local i32 @StartAtomic(i32*, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @EndAtomic(i32*, i32*) #1

declare dso_local i32 @CheckResult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
