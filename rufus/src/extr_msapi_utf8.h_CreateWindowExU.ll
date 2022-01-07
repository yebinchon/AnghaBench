; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_CreateWindowExU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_CreateWindowExU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@wlpClassName = common dso_local global i32 0, align 4
@wlpWindowName = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*, i8*, i32, i32, i32, i32, i32, i32*, i32, i32, i32)* @CreateWindowExU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CreateWindowExU(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  store i32* null, i32** %25, align 8
  %27 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %27, i32* %26, align 4
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 @wconvert(i8* %28)
  %30 = load i8*, i8** %15, align 8
  %31 = call i32 @wconvert(i8* %30)
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @wlpClassName, align 4
  %34 = load i32, i32* @wlpWindowName, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %20, align 4
  %40 = load i32*, i32** %21, align 8
  %41 = load i32, i32* %22, align 4
  %42 = load i32, i32* %23, align 4
  %43 = load i32, i32* %24, align 4
  %44 = call i32* @CreateWindowExW(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32* %40, i32 %41, i32 %42, i32 %43)
  store i32* %44, i32** %25, align 8
  %45 = call i32 (...) @GetLastError()
  store i32 %45, i32* %26, align 4
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @wfree(i8* %46)
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 @wfree(i8* %48)
  %50 = load i32, i32* %26, align 4
  %51 = call i32 @SetLastError(i32 %50)
  %52 = load i32*, i32** %25, align 8
  ret i32* %52
}

declare dso_local i32 @wconvert(i8*) #1

declare dso_local i32* @CreateWindowExW(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @wfree(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
