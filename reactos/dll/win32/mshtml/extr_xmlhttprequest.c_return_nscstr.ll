; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_xmlhttprequest.c_return_nscstr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_xmlhttprequest.c_return_nscstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"failed: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32**)* @return_nscstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @return_nscstr(i32 %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @NS_FAILED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @nsACString_Finish(i32* %16)
  %18 = load i32, i32* @E_FAIL, align 4
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @nsACString_GetData(i32* %20, i8** %8)
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %19
  %26 = load i32, i32* @CP_UTF8, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @MultiByteToWideChar(i32 %26, i32 0, i8* %27, i32 -1, i32* null, i32 0)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32* @SysAllocStringLen(i32* null, i32 %29)
  %31 = load i32**, i32*** %7, align 8
  store i32* %30, i32** %31, align 8
  %32 = load i32**, i32*** %7, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @nsACString_Finish(i32* %36)
  %38 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %38, i32* %4, align 4
  br label %52

39:                                               ; preds = %25
  %40 = load i32, i32* @CP_UTF8, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i32**, i32*** %7, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @MultiByteToWideChar(i32 %40, i32 0, i8* %41, i32 -1, i32* %43, i32 %44)
  br label %48

46:                                               ; preds = %19
  %47 = load i32**, i32*** %7, align 8
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %46, %39
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @nsACString_Finish(i32* %49)
  %51 = load i32, i32* @S_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %35, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsACString_Finish(i32*) #1

declare dso_local i32 @nsACString_GetData(i32*, i8**) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32* @SysAllocStringLen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
