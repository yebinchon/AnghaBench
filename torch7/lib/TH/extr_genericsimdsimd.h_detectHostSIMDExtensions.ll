; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_genericsimdsimd.h_detectHostSIMDExtensions.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_genericsimdsimd.h_detectHostSIMDExtensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"TH_NO_AVX2\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@CPUID_AVX2_BIT = common dso_local global i32 0, align 4
@SIMDExtension_AVX2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"TH_NO_AVX\00", align 1
@CPUID_AVX_BIT = common dso_local global i32 0, align 4
@SIMDExtension_AVX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"TH_NO_SSE\00", align 1
@CPUID_SSE_BIT = common dso_local global i32 0, align 4
@SIMDExtension_SSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @detectHostSIMDExtensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detectHostSIMDExtensions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %10 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %0
  %14 = load i8*, i8** %9, align 8
  %15 = call i64 @strncmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %0
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %13
  store i32 7, i32* %1, align 4
  store i32 0, i32* %3, align 4
  %19 = call i32 @cpuid(i32* %1, i32* %2, i32* %3, i32* %4)
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @CPUID_AVX2_BIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @SIMDExtension_AVX2, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %24, %18
  store i32 1, i32* %1, align 4
  %32 = call i32 @cpuid(i32* %1, i32* %2, i32* %3, i32* %4)
  %33 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %31
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @CPUID_AVX_BIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @SIMDExtension_AVX, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %46, %41
  %54 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @strncmp(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @CPUID_SSE_BIT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* @SIMDExtension_SSE, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %67, %62
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @cpuid(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
