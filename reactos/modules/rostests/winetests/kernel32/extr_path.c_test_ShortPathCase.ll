; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_ShortPathCase.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_ShortPathCase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s\\%s\\%s\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"CreateFileA failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @test_ShortPathCase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ShortPathCase(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add i64 %20, %22
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = add i64 %23, %25
  %27 = add i64 %26, 2
  %28 = icmp ult i64 %27, %13
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32, i8* %33)
  %35 = trunc i64 %17 to i32
  %36 = call i32 @GetShortPathNameA(i8* %15, i8* %18, i32 %35)
  %37 = load i32, i32* @GENERIC_READ, align 4
  %38 = load i32, i32* @GENERIC_WRITE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @OPEN_EXISTING, align 4
  %41 = call i64 @CreateFileA(i8* %18, i32 %39, i32 0, i32* null, i32 %40, i32 0, i32* null)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @CloseHandle(i64 %48)
  store i64 0, i64* %11, align 8
  br label %50

50:                                               ; preds = %66, %3
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @strlen(i8* %18)
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i64, i64* %11, align 8
  %56 = urem i64 %55, 2
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds i8, i8* %18, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call signext i8 @tolower(i8 signext %61)
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i8, i8* %18, i64 %63
  store i8 %62, i8* %64, align 1
  br label %65

65:                                               ; preds = %58, %54
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %11, align 8
  br label %50

69:                                               ; preds = %50
  %70 = load i32, i32* @GENERIC_READ, align 4
  %71 = load i32, i32* @GENERIC_WRITE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @OPEN_EXISTING, align 4
  %74 = call i64 @CreateFileA(i8* %18, i32 %72, i32 0, i32* null, i32 %73, i32 0, i32* null)
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %77 = icmp ne i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 (...) @GetLastError()
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @CloseHandle(i64 %81)
  %83 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @GetShortPathNameA(i8*, i8*, i32) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local signext i8 @tolower(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
