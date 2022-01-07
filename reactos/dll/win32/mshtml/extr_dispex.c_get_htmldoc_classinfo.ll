; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_dispex.c_get_htmldoc_classinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_dispex.c_get_htmldoc_classinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@typelib = common dso_local global i32 0, align 4
@CLSID_HTMLDocument = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GetTypeInfoOfGuid failed: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_htmldoc_classinfo(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  %5 = load i32, i32* @typelib, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (...) @load_typelib()
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* @typelib, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %9
  %15 = load i32, i32* @typelib, align 4
  %16 = load i32**, i32*** %3, align 8
  %17 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32 %15, i32* @CLSID_HTMLDocument, i32** %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @load_typelib(...) #1

declare dso_local i32 @ITypeLib_GetTypeInfoOfGuid(i32, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
