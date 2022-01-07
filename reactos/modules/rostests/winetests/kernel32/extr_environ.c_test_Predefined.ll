; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_environ.c_test_Predefined.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_environ.c_test_Predefined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to open token, error %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to get user profile dir, error %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"USERPROFILE\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Failed to retrieve environment variable USERPROFILE, error %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"USERPROFILE env var %s doesn't match GetUserProfileDirectory %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Skipping USERPROFILE check, can't get user profile dir\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to close token, error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Predefined to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Predefined() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @GetCurrentProcess()
  %8 = load i32, i32* @TOKEN_QUERY, align 4
  %9 = call i32 @pOpenProcessToken(i32 %7, i32 %8, i32* %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 (...) @GetLastError()
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 (i32, i8*, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 1024, i32* %2, align 4
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %17 = call i32 @pGetUserProfileDirectoryA(i32 %15, i8* %16, i32* %2)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (...) @GetLastError()
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 (i32, i8*, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %0
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %27 = call i32 @GetEnvironmentVariableA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %26, i32 1024)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ule i64 %32, 1024
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i1 [ false, %25 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 (...) @GetLastError()
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 (i32, i8*, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %43 = call i64 @strcmp(i8* %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %48 = call i32 (i32, i8*, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* %46, i8* %47)
  br label %51

49:                                               ; preds = %0
  %50 = call i32 @skip(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %34
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @CloseHandle(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (...) @GetLastError()
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 (i32, i8*, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %57)
  ret void
}

declare dso_local i32 @pOpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @pGetUserProfileDirectoryA(i32, i8*, i32*) #1

declare dso_local i32 @GetEnvironmentVariableA(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
