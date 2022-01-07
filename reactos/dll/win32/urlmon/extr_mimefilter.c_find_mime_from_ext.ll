; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_mimefilter.c_find_mime_from_ext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_mimefilter.c_find_mime_from_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@find_mime_from_ext.content_typeW = internal constant [13 x i8] c"Content Type\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"found MIME %s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_mime_from_ext(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @RegOpenKeyW(i32 %10, i8* %11, i32* %9)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @HRESULT_FROM_WIN32(i64 %17)
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  store i64 64, i64* %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %22 = ptrtoint i8* %21 to i32
  %23 = call i64 @RegQueryValueExW(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @find_mime_from_ext.content_typeW, i64 0, i64 0), i32* null, i32* null, i32 %22, i64* %7)
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @RegCloseKey(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @HRESULT_FROM_WIN32(i64 %30)
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %19
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %34 = call i32 @debugstr_w(i8* %33)
  %35 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = call i8* @CoTaskMemAlloc(i64 %36)
  %38 = load i8**, i8*** %5, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @memcpy(i8* %40, i8* %41, i64 %42)
  %44 = load i32, i32* @S_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %32, %29, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @RegOpenKeyW(i32, i8*, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i8* @CoTaskMemAlloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
