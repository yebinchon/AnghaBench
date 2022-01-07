; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_add_default_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_add_default_flags.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @add_default_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_default_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @Uri_CREATE_NO_CANONICALIZE, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @Uri_CREATE_CANONICALIZE, align 4
  %9 = load i32, i32* %2, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @Uri_CREATE_NO_DECODE_EXTRA_INFO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @Uri_CREATE_DECODE_EXTRA_INFO, align 4
  %18 = load i32, i32* %2, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @Uri_CREATE_CRACK_UNKNOWN_SCHEMES, align 4
  %27 = load i32, i32* %2, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @Uri_CREATE_NO_PRE_PROCESS_HTML_URI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @Uri_CREATE_PRE_PROCESS_HTML_URI, align 4
  %36 = load i32, i32* %2, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @Uri_CREATE_IE_SETTINGS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @Uri_CREATE_NO_IE_SETTINGS, align 4
  %45 = load i32, i32* %2, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
