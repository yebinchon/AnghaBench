; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckFloatlinearXFORM.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckFloatlinearXFORM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"linear xform cmsFloat32Number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @CheckFloatlinearXFORM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckFloatlinearXFORM(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @cmsMAXCHANNELS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @cmsMAXCHANNELS, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %63, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 65535
  br i1 %21, label %22, label %66

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 6.553500e+04
  %31 = fptosi double %30 to i64
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %15, i64 %33
  store i64 %31, i64* %34, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %23

38:                                               ; preds = %23
  %39 = call i32 (...) @DbgThread()
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @cmsDoTransform(i32 %39, i32 %40, i64* %15, i64* %18, i32 1)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %59, %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %18, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %52, 6.553500e+04
  %54 = fptosi double %53 to i64
  %55 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %50, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %67

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %42

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %19

66:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %57
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cmsDoTransform(i32, i32, i64*, i64*, i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32 @IsGoodFixed15_16(i8*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
