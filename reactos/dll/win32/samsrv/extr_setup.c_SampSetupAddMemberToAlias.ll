; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/samsrv/extr_setup.c_SampSetupAddMemberToAlias.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/samsrv/extr_setup.c_SampSetupAddMemberToAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i32] [i32 65, i32 108, i32 105, i32 97, i32 115, i32 101, i32 115, i32 92, i32 37, i32 48, i32 56, i32 108, i32 88, i32 92, i32 77, i32 101, i32 109, i32 98, i32 101, i32 114, i32 115, i32 0], align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i32] [i32 65, i32 108, i32 105, i32 97, i32 115, i32 101, i32 115, i32 92, i32 77, i32 101, i32 109, i32 98, i32 101, i32 114, i32 115, i32 92, i32 37, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 37, i32 48, i32 56, i32 108, i32 88, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @SampSetupAddMemberToAlias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SampSetupAddMemberToAlias(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @ConvertSidToStringSidW(i64 %11, i8** %8)
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @swprintf(i8* %13, i8* bitcast ([22 x i32]* @.str to i8*), i8* %14)
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %18 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %19 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %20 = call i32 @RegCreateKeyExW(i32 %16, i8* %17, i32 0, i32* null, i32 %18, i32 %19, i32* null, i32* %10, i32* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @REG_BINARY, align 4
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @RtlLengthSid(i64 %28)
  %30 = call i32 @RegSetValueEx(i32 %23, i8* %24, i32 0, i32 %25, i32 %27, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @RegCloseKey(i32 %31)
  br label %33

33:                                               ; preds = %22, %3
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @swprintf(i8* %34, i8* bitcast ([19 x i32]* @.str.1 to i8*), i8* %35)
  %37 = load i32, i32* %4, align 4
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %39 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %40 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %41 = call i32 @RegCreateKeyExW(i32 %37, i8* %38, i32 0, i32* null, i32 %39, i32 %40, i32* null, i32* %10, i32* %7)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @swprintf(i8* %44, i8* bitcast ([6 x i32]* @.str.2 to i8*), i8* %45)
  %47 = load i32, i32* %10, align 4
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %49 = load i32, i32* @REG_BINARY, align 4
  %50 = load i64, i64* %6, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @RtlLengthSid(i64 %52)
  %54 = call i32 @RegSetValueEx(i32 %47, i8* %48, i32 0, i32 %49, i32 %51, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @RegCloseKey(i32 %55)
  br label %57

57:                                               ; preds = %43, %33
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @LocalFree(i8* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* @TRUE, align 4
  ret i32 %64
}

declare dso_local i32 @ConvertSidToStringSidW(i64, i8**) #1

declare dso_local i32 @swprintf(i8*, i8*, i8*) #1

declare dso_local i32 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RegSetValueEx(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @RtlLengthSid(i64) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @LocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
