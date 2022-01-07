; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_create_testfontfile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_create_testfontfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"file creation failed, at %s, error %d\0A\00", align 1
@RT_RCDATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"couldn't find resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"couldn't write resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @create_testfontfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_testfontfile(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @GetTempPathW(i32 %13, i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @lstrcatW(i32* %16, i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @GENERIC_READ, align 4
  %21 = load i32, i32* @GENERIC_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CREATE_ALWAYS, align 4
  %24 = call i64 @CreateFileW(i32* %19, i32 %22, i32 0, i32* null, i32 %23, i32 0, i32 0)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @wine_dbgstr_w(i32* %29)
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = call i32 @GetModuleHandleA(i32* null)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @MAKEINTRESOURCEA(i32 %34)
  %36 = load i64, i64* @RT_RCDATA, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @FindResourceA(i32 %33, i32 %35, i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @GetModuleHandleA(i32* null)
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @LoadResource(i32 %43, i64 %44)
  %46 = call i8* @LockResource(i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @GetModuleHandleA(i32* null)
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @SizeofResource(i32 %49, i64 %50)
  %52 = call i32 @WriteFile(i64 %47, i8* %48, i64 %51, i64* %7, i32* null)
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @GetModuleHandleA(i32* null)
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @SizeofResource(i32 %54, i64 %55)
  %57 = icmp eq i64 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @CloseHandle(i64 %60)
  ret void
}

declare dso_local i32 @GetTempPathW(i32, i32*) #1

declare dso_local i32 @lstrcatW(i32*, i32*) #1

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @FindResourceA(i32, i32, i32) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @MAKEINTRESOURCEA(i32) #1

declare dso_local i8* @LockResource(i32) #1

declare dso_local i32 @LoadResource(i32, i64) #1

declare dso_local i32 @WriteFile(i64, i8*, i64, i64*, i32*) #1

declare dso_local i64 @SizeofResource(i32, i64) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
