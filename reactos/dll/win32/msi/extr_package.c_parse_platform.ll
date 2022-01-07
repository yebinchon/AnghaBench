; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_parse_platform.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_parse_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@szIntel = common dso_local global i32 0, align 4
@PLATFORM_INTEL = common dso_local global i32 0, align 4
@szIntel64 = common dso_local global i32 0, align 4
@PLATFORM_INTEL64 = common dso_local global i32 0, align 4
@szX64 = common dso_local global i32 0, align 4
@szAMD64 = common dso_local global i32 0, align 4
@PLATFORM_X64 = common dso_local global i32 0, align 4
@szARM = common dso_local global i32 0, align 4
@PLATFORM_ARM = common dso_local global i32 0, align 4
@PLATFORM_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @parse_platform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_platform(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @szIntel, align 4
  %11 = call i32 @strcmpW(i32* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @PLATFORM_INTEL, align 4
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @szIntel64, align 4
  %18 = call i32 @strcmpW(i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @PLATFORM_INTEL64, align 4
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %15
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @szX64, align 4
  %25 = call i32 @strcmpW(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @szAMD64, align 4
  %30 = call i32 @strcmpW(i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @PLATFORM_X64, align 4
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %27
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @szARM, align 4
  %37 = call i32 @strcmpW(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @PLATFORM_ARM, align 4
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* @PLATFORM_UNKNOWN, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %39, %32, %20, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @strcmpW(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
