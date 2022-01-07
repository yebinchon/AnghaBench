; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_script.c_load_string.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_script.c_load_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@doc_complete = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IID_IPersistStreamInit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @load_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* @doc_complete, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @GlobalAlloc(i32 0, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @memcpy(i32 %14, i8* %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @CreateStreamOnHGlobal(i32 %18, i32 %19, i32** %6)
  %21 = load i32*, i32** %3, align 8
  %22 = bitcast i32** %5 to i8**
  %23 = call i32 @IHTMLDocument2_QueryInterface(i32* %21, i32* @IID_IPersistStreamInit, i8** %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @IPersistStreamInit_Load(i32* %24, i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @IPersistStreamInit_Release(i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @IStream_Release(i32* %29)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @CreateStreamOnHGlobal(i32, i32, i32**) #1

declare dso_local i32 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IPersistStreamInit_Load(i32*, i32*) #1

declare dso_local i32 @IPersistStreamInit_Release(i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
