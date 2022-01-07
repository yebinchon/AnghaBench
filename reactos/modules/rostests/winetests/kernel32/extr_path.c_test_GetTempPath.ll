; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetTempPath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetTempPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"TMP=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetTempPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetTempPath() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %19 = trunc i64 %7 to i32
  %20 = call i32 @GetEnvironmentVariableA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %0
  %23 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %23, align 16
  br label %24

24:                                               ; preds = %22, %0
  %25 = call i32 @trace(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %26 = getelementptr inbounds i8, i8* %9, i64 0
  %27 = load i8, i8* %26, align 16
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = call i32 @strcpy(i8* %15, i8* %9)
  %31 = call i32 @strlen(i8* %15)
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %15, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 92
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @strcat(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %29
  %41 = call i32 @test_GetTempPathA(i8* %15)
  %42 = call i32 @test_GetTempPathW(i8* %15)
  br label %43

43:                                               ; preds = %40, %24
  %44 = trunc i64 %11 to i32
  %45 = call i32 @GetWindowsDirectoryA(i8* %12, i32 %44)
  %46 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %12)
  %47 = trunc i64 %14 to i32
  %48 = call i32 @GetEnvironmentVariableA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %47)
  %49 = call i32 @trace(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %50 = call i32 @strcat(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @test_GetTempPathA(i8* %12)
  %52 = call i32 @test_GetTempPathW(i8* %12)
  %53 = trunc i64 %11 to i32
  %54 = call i32 @GetWindowsDirectoryA(i8* %12, i32 %53)
  %55 = getelementptr inbounds i8, i8* %12, i64 3
  store i8 0, i8* %55, align 1
  %56 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %12)
  %57 = trunc i64 %14 to i32
  %58 = call i32 @GetEnvironmentVariableA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %57)
  %59 = call i32 @trace(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %60 = call i32 @test_GetTempPathA(i8* %12)
  %61 = call i32 @test_GetTempPathW(i8* %12)
  %62 = load i32, i32* @MAX_PATH, align 4
  %63 = call i32 @GetCurrentDirectoryW(i32 %62, i32* %18)
  %64 = trunc i64 %11 to i32
  %65 = call i32 @GetWindowsDirectoryA(i8* %12, i32 %64)
  %66 = call i32 @SetCurrentDirectoryA(i8* %12)
  %67 = getelementptr inbounds i8, i8* %12, i64 2
  store i8 0, i8* %67, align 2
  %68 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %12)
  %69 = trunc i64 %14 to i32
  %70 = call i32 @GetEnvironmentVariableA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %69)
  %71 = call i32 @trace(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %72 = trunc i64 %11 to i32
  %73 = call i32 @GetWindowsDirectoryA(i8* %12, i32 %72)
  %74 = call i32 @strcat(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 @test_GetTempPathA(i8* %12)
  %76 = call i32 @test_GetTempPathW(i8* %12)
  %77 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %9)
  %78 = call i32 @SetCurrentDirectoryW(i32* %18)
  %79 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetEnvironmentVariableA(i8*, i8*, i32) #2

declare dso_local i32 @trace(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @test_GetTempPathA(i8*) #2

declare dso_local i32 @test_GetTempPathW(i8*) #2

declare dso_local i32 @GetWindowsDirectoryA(i8*, i32) #2

declare dso_local i32 @SetEnvironmentVariableA(i8*, i8*) #2

declare dso_local i32 @GetCurrentDirectoryW(i32, i32*) #2

declare dso_local i32 @SetCurrentDirectoryA(i8*) #2

declare dso_local i32 @SetCurrentDirectoryW(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
