; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_register.c_test_RegPolicyFlags.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_register.c_test_RegPolicyFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_RegPolicyFlags.Software_Publishing = internal constant [87 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\\Wintrust\\Trust Providers\\Software Publishing\00", align 16
@test_RegPolicyFlags.State = internal constant [6 x i8] c"State\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"RegOpenKeyEx failed: %d\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"RegQueryValueEx failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Got %08x flags instead of %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"WintrustSetRegPolicyFlags failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RegPolicyFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RegPolicyFlags() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @pWintrustGetRegPolicyFlags(i32* %4)
  %9 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %10 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %11 = call i64 @RegOpenKeyExA(i32 %9, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @test_RegPolicyFlags.Software_Publishing, i64 0, i64 0), i32 0, i32 %10, i32* %1)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %2, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 (i32, i8*, i32, ...) @ok(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 4, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = ptrtoint i32* %3 to i32
  %21 = call i64 @RegQueryValueExA(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_RegPolicyFlags.State, i64 0, i64 0), i32* null, i32* null, i32 %20, i32* %6)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %0
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %0
  %29 = phi i1 [ true, %0 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %2, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 (i32, i8*, i32, ...) @ok(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* %2, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i32, i8*, i32, ...) @ok(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %28
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @pWintrustSetRegPolicyFlags(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 (i32, i8*, i32, ...) @ok(i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i32 4, i32* %6, align 4
  %52 = load i32, i32* %1, align 4
  %53 = ptrtoint i32* %3 to i32
  %54 = call i64 @RegQueryValueExA(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_RegPolicyFlags.State, i64 0, i64 0), i32* null, i32* null, i32 %53, i32* %6)
  store i64 %54, i64* %2, align 8
  %55 = load i64, i64* %2, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %2, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 (i32, i8*, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 (i32, i8*, i32, ...) @ok(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @pWintrustSetRegPolicyFlags(i32 %69)
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @RegCloseKey(i32 %71)
  ret void
}

declare dso_local i32 @pWintrustGetRegPolicyFlags(i32*) #1

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @pWintrustSetRegPolicyFlags(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
