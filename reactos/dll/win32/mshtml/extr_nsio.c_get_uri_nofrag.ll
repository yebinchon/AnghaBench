; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_get_uri_nofrag.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_get_uri_nofrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Uri_PROPERTY_FRAGMENT = common dso_local global i32 0, align 4
@Uri_HAS_FRAGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_uri_nofrag(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @Uri_PROPERTY_FRAGMENT, align 4
  %10 = call i32 @IUri_HasProperty(i32* %8, i32 %9, i32* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @SUCCEEDED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @IUri_AddRef(i32* %18)
  %20 = load i32*, i32** %3, align 8
  store i32* %20, i32** %2, align 8
  br label %47

21:                                               ; preds = %14, %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @CreateIUriBuilder(i32* %22, i32 0, i32 0, i32** %4)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32* null, i32** %2, align 8
  br label %47

28:                                               ; preds = %21
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @Uri_HAS_FRAGMENT, align 4
  %31 = call i32 @IUriBuilder_RemoveProperties(i32* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @SUCCEEDED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @IUriBuilder_CreateUriSimple(i32* %36, i32 0, i32 0, i32** %5)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @IUriBuilder_Release(i32* %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32* null, i32** %2, align 8
  br label %47

45:                                               ; preds = %38
  %46 = load i32*, i32** %5, align 8
  store i32* %46, i32** %2, align 8
  br label %47

47:                                               ; preds = %45, %44, %27, %17
  %48 = load i32*, i32** %2, align 8
  ret i32* %48
}

declare dso_local i32 @IUri_HasProperty(i32*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IUri_AddRef(i32*) #1

declare dso_local i32 @CreateIUriBuilder(i32*, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IUriBuilder_RemoveProperties(i32*, i32) #1

declare dso_local i32 @IUriBuilder_CreateUriSimple(i32*, i32, i32, i32**) #1

declare dso_local i32 @IUriBuilder_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
