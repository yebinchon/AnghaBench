; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_apply_default_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_apply_default_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Uri_CREATE_NO_CANONICALIZE = common dso_local global i32 0, align 4
@Uri_CREATE_CANONICALIZE = common dso_local global i32 0, align 4
@Uri_CREATE_NO_DECODE_EXTRA_INFO = common dso_local global i32 0, align 4
@Uri_CREATE_DECODE_EXTRA_INFO = common dso_local global i32 0, align 4
@Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES = common dso_local global i32 0, align 4
@Uri_CREATE_CRACK_UNKNOWN_SCHEMES = common dso_local global i32 0, align 4
@Uri_CREATE_NO_PRE_PROCESS_HTML_URI = common dso_local global i32 0, align 4
@Uri_CREATE_PRE_PROCESS_HTML_URI = common dso_local global i32 0, align 4
@Uri_CREATE_IE_SETTINGS = common dso_local global i32 0, align 4
@Uri_CREATE_NO_IE_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @apply_default_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_default_flags(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @Uri_CREATE_NO_CANONICALIZE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @Uri_CREATE_CANONICALIZE, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %9
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %8, %1
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @Uri_CREATE_NO_DECODE_EXTRA_INFO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @Uri_CREATE_DECODE_EXTRA_INFO, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @Uri_CREATE_CRACK_UNKNOWN_SCHEMES, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %24
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @Uri_CREATE_NO_PRE_PROCESS_HTML_URI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @Uri_CREATE_PRE_PROCESS_HTML_URI, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %35
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @Uri_CREATE_IE_SETTINGS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @Uri_CREATE_NO_IE_SETTINGS, align 4
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
