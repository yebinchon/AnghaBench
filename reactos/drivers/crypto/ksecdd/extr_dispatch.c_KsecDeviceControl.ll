; ModuleID = '/home/carl/AnghaBench/reactos/drivers/crypto/ksecdd/extr_dispatch.c_KsecDeviceControl.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/crypto/ksecdd/extr_dispatch.c_KsecDeviceControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@RTL_ENCRYPT_OPTION_SAME_PROCESS = common dso_local global i32 0, align 4
@RTL_ENCRYPT_OPTION_CROSS_PROCESS = common dso_local global i32 0, align 4
@RTL_ENCRYPT_OPTION_SAME_LOGON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unhandled control code 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i64*)* @KsecDeviceControl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KsecDeviceControl(i32 %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 129
  br i1 %12, label %31, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 130
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 133
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 132
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 135
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 131
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 134
  br i1 %30, label %31, label %55

31:                                               ; preds = %28, %25, %22, %19, %16, %13, %4
  %32 = load i32*, i32** %7, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64*, i64** %9, align 8
  %36 = icmp eq i64* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %38, i32* %5, align 4
  br label %107

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32*, i32** %7, align 8
  %46 = ptrtoint i32* %45 to i64
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64*, i64** %9, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub nsw i64 %50, %51
  %53 = call i32 @RtlSecureZeroMemory(i64 %48, i64 %52)
  br label %54

54:                                               ; preds = %44, %39
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %100 [
    i32 128, label %57
    i32 129, label %59
    i32 130, label %64
    i32 133, label %70
    i32 132, label %76
    i32 135, label %82
    i32 131, label %88
    i32 134, label %94
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %58, i32* %10, align 4
  br label %105

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @KsecGenRandom(i32* %60, i64 %62)
  store i32 %63, i32* %10, align 4
  br label %105

64:                                               ; preds = %55
  %65 = load i32*, i32** %7, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @RTL_ENCRYPT_OPTION_SAME_PROCESS, align 4
  %69 = call i32 @KsecEncryptMemory(i32* %65, i64 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  br label %105

70:                                               ; preds = %55
  %71 = load i32*, i32** %7, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @RTL_ENCRYPT_OPTION_SAME_PROCESS, align 4
  %75 = call i32 @KsecDecryptMemory(i32* %71, i64 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  br label %105

76:                                               ; preds = %55
  %77 = load i32*, i32** %7, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @RTL_ENCRYPT_OPTION_CROSS_PROCESS, align 4
  %81 = call i32 @KsecEncryptMemory(i32* %77, i64 %79, i32 %80)
  store i32 %81, i32* %10, align 4
  br label %105

82:                                               ; preds = %55
  %83 = load i32*, i32** %7, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @RTL_ENCRYPT_OPTION_CROSS_PROCESS, align 4
  %87 = call i32 @KsecDecryptMemory(i32* %83, i64 %85, i32 %86)
  store i32 %87, i32* %10, align 4
  br label %105

88:                                               ; preds = %55
  %89 = load i32*, i32** %7, align 8
  %90 = load i64*, i64** %9, align 8
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @RTL_ENCRYPT_OPTION_SAME_LOGON, align 4
  %93 = call i32 @KsecEncryptMemory(i32* %89, i64 %91, i32 %92)
  store i32 %93, i32* %10, align 4
  br label %105

94:                                               ; preds = %55
  %95 = load i32*, i32** %7, align 8
  %96 = load i64*, i64** %9, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @RTL_ENCRYPT_OPTION_SAME_LOGON, align 4
  %99 = call i32 @KsecDecryptMemory(i32* %95, i64 %97, i32 %98)
  store i32 %99, i32* %10, align 4
  br label %105

100:                                              ; preds = %55
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = call i32 (...) @__debugbreak()
  %104 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %104, i32* %5, align 4
  br label %107

105:                                              ; preds = %94, %88, %82, %76, %70, %64, %59, %57
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %100, %37
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @RtlSecureZeroMemory(i64, i64) #1

declare dso_local i32 @KsecGenRandom(i32*, i64) #1

declare dso_local i32 @KsecEncryptMemory(i32*, i64, i32) #1

declare dso_local i32 @KsecDecryptMemory(i32*, i64, i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i32 @__debugbreak(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
