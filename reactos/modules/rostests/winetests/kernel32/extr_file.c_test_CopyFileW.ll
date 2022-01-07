; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test_CopyFileW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test_CopyFileW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_CopyFileW.prefix = internal constant [4 x i8] c"pfx\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"GetTempPathW is not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GetTempPathW error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"temp path should fit into MAX_PATH\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"GetTempFileNameW error %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ERROR_FILE_EXISTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"CopyFileW: unexpected error %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"CopyFileW: error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"DeleteFileW: error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CopyFileW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CopyFileW() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = call i32 @GetTempPathW(i32 %17, i8* %10)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %0
  %22 = call i64 (...) @GetLastError()
  %23 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @win_skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %76

27:                                               ; preds = %21, %0
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = icmp slt i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @GetTempFileNameW(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_CopyFileW.prefix, i64 0, i64 0), i32 0, i8* %13)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 (...) @GetLastError()
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  %44 = call i32 @GetTempFileNameW(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_CopyFileW.prefix, i64 0, i64 0), i32 0, i8* %16)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 (...) @GetLastError()
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @CopyFileW(i8* %13, i8* %16, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %27
  %55 = call i64 (...) @GetLastError()
  %56 = load i64, i64* @ERROR_FILE_EXISTS, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %54, %27
  %59 = phi i1 [ false, %27 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 (...) @GetLastError()
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @CopyFileW(i8* %13, i8* %16, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i64 (...) @GetLastError()
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %66)
  %68 = call i32 @DeleteFileW(i8* %13)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i64 (...) @GetLastError()
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 %70)
  %72 = call i32 @DeleteFileW(i8* %16)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i64 (...) @GetLastError()
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 %74)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %58, %25
  %77 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %6, align 4
  switch i32 %78, label %80 [
    i32 0, label %79
    i32 1, label %79
  ]

79:                                               ; preds = %76, %76
  ret void

80:                                               ; preds = %76
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathW(i32, i8*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetTempFileNameW(i8*, i8*, i32, i8*) #2

declare dso_local i32 @CopyFileW(i8*, i8*, i32) #2

declare dso_local i32 @DeleteFileW(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
