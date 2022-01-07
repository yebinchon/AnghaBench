; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_StringFromGUID2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_StringFromGUID2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"len: %d (expected 0)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected 0xdeadbeef, got %x\0A\00", align 1
@CLSID_StdFont = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"len: %d (expected 39)\0A\00", align 1
@wszCLSID_StdFont = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"string wasn't equal for CLSID_StdFont\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StringFromGUID2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StringFromGUID2() #0 {
  %1 = alloca [50 x i32], align 16
  %2 = alloca i32, align 4
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = getelementptr inbounds [50 x i32], [50 x i32]* %1, i64 0, i64 0
  %5 = call i32 @StringFromGUID2(i32* null, i32* %4, i32 50)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %2, align 4
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 (...) @GetLastError()
  %12 = icmp eq i32 %11, -559038737
  %13 = zext i1 %12 to i32
  %14 = call i32 (...) @GetLastError()
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [50 x i32], [50 x i32]* %1, i64 0, i64 0
  %17 = call i32 @StringFromGUID2(i32* @CLSID_StdFont, i32* %16, i32 50)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 39
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [50 x i32], [50 x i32]* %1, i64 0, i64 0
  %24 = load i32, i32* @wszCLSID_StdFont, align 4
  %25 = call i32 @lstrcmpiW(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %30 = getelementptr inbounds [50 x i32], [50 x i32]* %1, i64 0, i64 0
  %31 = call i32 @memset(i32* %30, i32 0, i32 200)
  %32 = getelementptr inbounds [50 x i32], [50 x i32]* %1, i64 0, i64 0
  %33 = call i32 @StringFromGUID2(i32* @CLSID_StdFont, i32* %32, i32 39)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 39
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %2, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds [50 x i32], [50 x i32]* %1, i64 0, i64 0
  %40 = load i32, i32* @wszCLSID_StdFont, align 4
  %41 = call i32 @lstrcmpiW(i32* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %46 = getelementptr inbounds [50 x i32], [50 x i32]* %1, i64 0, i64 0
  %47 = call i32 @StringFromGUID2(i32* @CLSID_StdFont, i32* %46, i32 38)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %2, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds [50 x i32], [50 x i32]* %1, i64 0, i64 0
  %54 = call i32 @StringFromGUID2(i32* @CLSID_StdFont, i32* %53, i32 30)
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %2, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %2, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %58)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @StringFromGUID2(i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @lstrcmpiW(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
