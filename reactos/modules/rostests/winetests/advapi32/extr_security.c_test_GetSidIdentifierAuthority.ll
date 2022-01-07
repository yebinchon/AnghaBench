; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_GetSidIdentifierAuthority.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_GetSidIdentifierAuthority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECURITY_MAX_SID_SIZE = common dso_local global i32 0, align 4
@pGetSidIdentifierAuthority = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"GetSidIdentifierAuthority not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"expected FALSE, got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"got NULL pointer as identifier authority\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"expected ERROR_SUCCESS, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetSidIdentifierAuthority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetSidIdentifierAuthority() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*****, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = bitcast i8* %10 to i32******
  %12 = bitcast i32****** %11 to i32*****
  store i32***** %12, i32****** %3, align 8
  %13 = load i32, i32* @pGetSidIdentifierAuthority, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %0
  %16 = call i32 @win_skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %53

17:                                               ; preds = %0
  %18 = trunc i64 %8 to i32
  %19 = call i32 @memset(i8* %10, i32 204, i32 %18)
  %20 = load i32*****, i32****** %3, align 8
  %21 = call i64 @IsValidSid(i32***** %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %5, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = call i32 @SetLastError(i32 -559038737)
  %29 = load i32*****, i32****** %3, align 8
  %30 = call i32* @GetSidIdentifierAuthority(i32***** %29)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i64 (...) @GetLastError()
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 (...) @GetLastError()
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  %41 = call i32 @SetLastError(i32 -559038737)
  %42 = call i32* @GetSidIdentifierAuthority(i32***** null)
  store i32* %42, i32** %4, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i64 (...) @GetLastError()
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 (...) @GetLastError()
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %17, %15
  %54 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %57 [
    i32 0, label %56
    i32 1, label %56
  ]

56:                                               ; preds = %53, %53
  ret void

57:                                               ; preds = %53
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @IsValidSid(i32*****) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @GetSidIdentifierAuthority(i32*****) #2

declare dso_local i64 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
