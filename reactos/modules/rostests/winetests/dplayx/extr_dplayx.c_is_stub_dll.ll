; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_is_stub_dll.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_is_stub_dll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"\\StringFileInfo\\%04x%04x\\OriginalFilename\00", align 1
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"wcodstub.dll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_stub_dll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_stub_dll(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @GetFileVersionInfoSizeA(i8* %11, i32* %5)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %54

17:                                               ; preds = %1
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @HeapAlloc(i32 %18, i32 0, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %54

25:                                               ; preds = %17
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @GetFileVersionInfoA(i8* %26, i32 %27, i32 %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %34 = load i32, i32* @LANG_ENGLISH, align 4
  %35 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %36 = call i32 @MAKELANGID(i32 %34, i32 %35)
  %37 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %36, i32 1200)
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %40 = call i64 @VerQueryValueA(i8* %38, i8* %39, i8** %7, i32* %4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @lstrcmpiA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %42, %32
  br label %49

49:                                               ; preds = %48, %25
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @HeapFree(i32 %50, i32 0, i8* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %23, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @GetFileVersionInfoSizeA(i8*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @GetFileVersionInfoA(i8*, i32, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i64 @VerQueryValueA(i8*, i8*, i8**, i32*) #1

declare dso_local i32 @lstrcmpiA(i8*, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
