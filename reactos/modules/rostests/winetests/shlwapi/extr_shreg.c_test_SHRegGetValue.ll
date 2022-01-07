; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_shreg.c_test_SHRegGetValue.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_shreg.c_test_SHRegGetValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@REG_TEST_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Test1\00", align 1
@SRRF_RT_REG_EXPAND_SZ = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"SHRegGetValue failed, ret=%u\0A\00", align 1
@SRRF_RT_REG_SZ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@sExpTestpath1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"data = %s, expected %s\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"type = %d, expected REG_SZ\0A\00", align 1
@SRRF_RT_REG_DWORD = common dso_local global i32 0, align 4
@ERROR_UNSUPPORTED_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Test2\00", align 1
@sTestpath1 = common dso_local global i32 0, align 4
@SRRF_RT_REG_QWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHRegGetValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHRegGetValue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %12 = load i32, i32* @REG_TEST_KEY, align 4
  %13 = load i32, i32* @SRRF_RT_REG_EXPAND_SZ, align 4
  %14 = call i32 @pSHRegGetValueA(i32 %11, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %13, i32* %3, i8* %9, i32* %2)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %1, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @MAX_PATH, align 4
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %23 = load i32, i32* @REG_TEST_KEY, align 4
  %24 = load i32, i32* @SRRF_RT_REG_SZ, align 4
  %25 = call i32 @pSHRegGetValueA(i32 %22, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %24, i32* %3, i8* %9, i32* %2)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @ERROR_SUCCESS, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %1, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @sExpTestpath1, align 4
  %33 = call i32 @strcmp(i8* %9, i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* @sExpTestpath1, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %9, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @REG_SZ, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @MAX_PATH, align 4
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %47 = load i32, i32* @REG_TEST_KEY, align 4
  %48 = load i32, i32* @SRRF_RT_REG_DWORD, align 4
  %49 = call i32 @pSHRegGetValueA(i32 %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %48, i32* %3, i8* %9, i32* %2)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @ERROR_UNSUPPORTED_TYPE, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %1, align 4
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @MAX_PATH, align 4
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %58 = load i32, i32* @REG_TEST_KEY, align 4
  %59 = load i32, i32* @SRRF_RT_REG_EXPAND_SZ, align 4
  %60 = call i32 @pSHRegGetValueA(i32 %57, i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %59, i32* %3, i8* %9, i32* %2)
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %1, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @MAX_PATH, align 4
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %69 = load i32, i32* @REG_TEST_KEY, align 4
  %70 = load i32, i32* @SRRF_RT_REG_SZ, align 4
  %71 = call i32 @pSHRegGetValueA(i32 %68, i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32* %3, i8* %9, i32* %2)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @ERROR_SUCCESS, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %1, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @sTestpath1, align 4
  %79 = call i32 @strcmp(i8* %9, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* @sTestpath1, align 4
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %9, i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @REG_SZ, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @MAX_PATH, align 4
  store i32 %91, i32* %2, align 4
  %92 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %93 = load i32, i32* @REG_TEST_KEY, align 4
  %94 = load i32, i32* @SRRF_RT_REG_QWORD, align 4
  %95 = call i32 @pSHRegGetValueA(i32 %92, i32 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %94, i32* %3, i8* %9, i32* %2)
  store i32 %95, i32* %1, align 4
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* @ERROR_UNSUPPORTED_TYPE, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %1, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pSHRegGetValueA(i32, i32, i8*, i32, i32*, i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
