; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_bsc.c_create_uri.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_bsc.c_create_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"can't find path\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"can't create url from path\0A\00", align 1
@Uri_CREATE_ALLOW_RELATIVE = common dso_local global i32 0, align 4
@Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_uri(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %12 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @debugstr_w(i32* %16)
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @PathIsURLW(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %15)
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %26)
  %30 = call i32 @PathSearchAndQualifyW(i32* %28, i32* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = call i32 @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @E_FAIL, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

35:                                               ; preds = %22
  %36 = call i32 @UrlCreateFromPathW(i32* %26, i32* %15, i32* %10, i32 0)
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @E_FAIL, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

42:                                               ; preds = %35
  store i32* %15, i32** %4, align 8
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %39, %32
  %44 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %11, align 4
  switch i32 %45, label %54 [
    i32 0, label %46
  ]

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @Uri_CREATE_ALLOW_RELATIVE, align 4
  %50 = load i32, i32* @Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME, align 4
  %51 = or i32 %49, %50
  %52 = load i32**, i32*** %5, align 8
  %53 = call i32 @CreateUri(i32* %48, i32 %51, i32 0, i32** %52)
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %54

54:                                               ; preds = %47, %43
  %55 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32 @PathIsURLW(i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @PathSearchAndQualifyW(i32*, i32*, i32) #2

declare dso_local i32 @WARN(i8*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @UrlCreateFromPathW(i32*, i32*, i32*, i32) #2

declare dso_local i32 @ERR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @CreateUri(i32*, i32, i32, i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
