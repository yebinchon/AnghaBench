; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/gxvalid/extr_gxvkern.c_gxv_kern_coverage_validate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/gxvalid/extr_gxvkern.c_gxv_kern_coverage_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_DIALECT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"validating coverage\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"interpret coverage 0x%04x by Apple style\0A\00", align 1
@KERN_DIALECT_APPLE = common dso_local global i32 0, align 4
@KERN_DIALECT_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot interpret coverage, broken kern subtable\0A\00", align 1
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @gxv_kern_coverage_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxv_kern_coverage_validate(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @KERN_DIALECT_UNKNOWN, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @GXV_TRACE(i8* %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @KERN_IS_NEW(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @gxv_kern_coverage_new_apple_validate(i32 %18, i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @KERN_DIALECT_APPLE, align 4
  store i32 %24, i32* %7, align 4
  br label %62

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @KERN_IS_CLASSIC(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @KERN_ALLOWS_APPLE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @gxv_kern_coverage_classic_apple_validate(i32 %35, i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @KERN_DIALECT_APPLE, align 4
  store i32 %41, i32* %7, align 4
  br label %62

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %30, %26
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @KERN_IS_CLASSIC(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @KERN_ALLOWS_MS(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @gxv_kern_coverage_classic_microsoft_validate(i32 %52, i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @KERN_DIALECT_MS, align 4
  store i32 %58, i32* %7, align 4
  br label %62

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %47, %43
  %61 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57, %40, %23
  %63 = load i32, i32* @GXV_EXIT, align 4
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i64 @KERN_IS_NEW(i32) #1

declare dso_local i64 @gxv_kern_coverage_new_apple_validate(i32, i32*, i32) #1

declare dso_local i64 @KERN_IS_CLASSIC(i32) #1

declare dso_local i64 @KERN_ALLOWS_APPLE(i32) #1

declare dso_local i64 @gxv_kern_coverage_classic_apple_validate(i32, i32*, i32) #1

declare dso_local i64 @KERN_ALLOWS_MS(i32) #1

declare dso_local i64 @gxv_kern_coverage_classic_microsoft_validate(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
