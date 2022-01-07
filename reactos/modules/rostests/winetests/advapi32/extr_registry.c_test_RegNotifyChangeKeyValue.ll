; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_RegNotifyChangeKeyValue.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_RegNotifyChangeKeyValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CreateEvent failed, error %u\0A\00", align 1
@hkey_main = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"TestKey\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"expected ERROR_SUCCESS, got %d\0A\00", align 1
@REG_NOTIFY_CHANGE_NAME = common dso_local global i32 0, align 4
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"expected WAIT_TIMEOUT, got %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SubKey\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"expected WAIT_OBJECT_0, got %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RegNotifyChangeKeyValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RegNotifyChangeKeyValue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @FALSE, align 4
  %7 = load i32, i32* @TRUE, align 4
  %8 = call i32* @CreateEventW(i32* null, i32 %6, i32 %7, i32* null)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 (...) @GetLastError()
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* @hkey_main, align 4
  %15 = call i64 @RegCreateKeyA(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32, i32* @REG_NOTIFY_CHANGE_NAME, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i64 @RegNotifyChangeKeyValue(i32 %22, i32 %23, i32 %24, i32* %25, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @WaitForSingleObject(i32* %34, i32 0)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @WAIT_TIMEOUT, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* %1, align 4
  %43 = call i64 @RegCreateKeyA(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %2)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i64 @WaitForSingleObject(i32* %50, i32 0)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @WAIT_OBJECT_0, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @RegDeleteKeyA(i32 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @RegCloseKey(i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @CloseHandle(i32* %62)
  ret void
}

declare dso_local i32* @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @RegCreateKeyA(i32, i8*, i32*) #1

declare dso_local i64 @RegNotifyChangeKeyValue(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @WaitForSingleObject(i32*, i32) #1

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
