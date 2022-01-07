; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetGlyphIndices.c_ExtractTTFFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetGlyphIndices.c_ExtractTTFFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 116, i32 116, i32 102, i32 0], align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ExtractTTFFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExtractTTFFile(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @GetResource(i32 %17, i32* %10)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %46

23:                                               ; preds = %2
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = call i32 @GetTempPathW(i32 %24, i32* %16)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @GetTempFileNameW(i32* %16, i8* bitcast ([4 x i32]* @.str to i8*), i32 0, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @GENERIC_WRITE, align 4
  %30 = load i32, i32* @CREATE_ALWAYS, align 4
  %31 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %32 = call i64 @CreateFileW(i32 %28, i32 %29, i32 0, i32* null, i32 %30, i32 %31, i32 0)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %46

38:                                               ; preds = %23
  %39 = load i64, i64* %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @WriteFile(i64 %39, i8* %40, i32 %41, i32* %10, i32* null)
  store i32 %42, i32* %11, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @CloseHandle(i64 %43)
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %46

46:                                               ; preds = %38, %36, %21
  %47 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @GetResource(i32, i32*) #2

declare dso_local i32 @GetTempPathW(i32, i32*) #2

declare dso_local i32 @GetTempFileNameW(i32*, i8*, i32, i32) #2

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
