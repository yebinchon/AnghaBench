; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_layerapi.c_create_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_layerapi.c_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_file(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @PathCombineA(i8* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @malloc(i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @memset(i8* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @GENERIC_WRITE, align 4
  %29 = load i32, i32* @CREATE_ALWAYS, align 4
  %30 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %31 = call i64 @CreateFileA(i8* %18, i32 %28, i32 0, i32* null, i32 %29, i32 %30, i32* null)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %47

37:                                               ; preds = %4
  %38 = load i64, i64* %13, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @WriteFile(i64 %38, i8* %39, i32 %40, i32* %9, i32* null)
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @CloseHandle(i64 %42)
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %47

47:                                               ; preds = %37, %35
  %48 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PathCombineA(i8*, i32, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
