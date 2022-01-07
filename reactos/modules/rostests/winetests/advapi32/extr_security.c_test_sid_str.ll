; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_sid_str.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_sid_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"ConvertSidToStringSidA() failed: %d\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_NONE_MAPPED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"LookupAccountSid(%s) failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" %s %s\\%s %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" %s couldn't be mapped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_sid_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sid_str(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @ConvertSidToStringSidA(i32* %11, i8** %3)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 (...) @GetLastError()
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 (i32, i8*, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %1
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %5, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %6, align 8
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %7, align 8
  %28 = load i32, i32* @MAX_PATH, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @MAX_PATH, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @LookupAccountSidA(i32* null, i32* %30, i8* %24, i32* %9, i8* %27, i32* %10, i32* %8)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %20
  %35 = call i64 (...) @GetLastError()
  %36 = load i64, i64* @ERROR_NONE_MAPPED, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %34, %20
  %39 = phi i1 [ true, %20 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 (...) @GetLastError()
  %43 = call i32 (i32, i8*, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %41, i64 %42)
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i8*, i8*, ...) @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* %27, i8* %24, i32 %48)
  br label %58

50:                                               ; preds = %38
  %51 = call i64 (...) @GetLastError()
  %52 = load i64, i64* @ERROR_NONE_MAPPED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 (i8*, i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %46
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @LocalFree(i8* %59)
  %61 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %62

62:                                               ; preds = %58, %1
  ret void
}

declare dso_local i64 @ConvertSidToStringSidA(i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @LookupAccountSidA(i32*, i32*, i8*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @trace(i8*, i8*, ...) #1

declare dso_local i32 @LocalFree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
