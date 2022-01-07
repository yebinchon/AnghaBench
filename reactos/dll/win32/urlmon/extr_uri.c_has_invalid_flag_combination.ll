; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_has_invalid_flag_combination.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_has_invalid_flag_combination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Uri_CREATE_DECODE_EXTRA_INFO = common dso_local global i32 0, align 4
@Uri_CREATE_NO_DECODE_EXTRA_INFO = common dso_local global i32 0, align 4
@Uri_CREATE_CANONICALIZE = common dso_local global i32 0, align 4
@Uri_CREATE_NO_CANONICALIZE = common dso_local global i32 0, align 4
@Uri_CREATE_CRACK_UNKNOWN_SCHEMES = common dso_local global i32 0, align 4
@Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES = common dso_local global i32 0, align 4
@Uri_CREATE_PRE_PROCESS_HTML_URI = common dso_local global i32 0, align 4
@Uri_CREATE_NO_PRE_PROCESS_HTML_URI = common dso_local global i32 0, align 4
@Uri_CREATE_IE_SETTINGS = common dso_local global i32 0, align 4
@Uri_CREATE_NO_IE_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @has_invalid_flag_combination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_invalid_flag_combination(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @Uri_CREATE_DECODE_EXTRA_INFO, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @Uri_CREATE_NO_DECODE_EXTRA_INFO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %54, label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @Uri_CREATE_CANONICALIZE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @Uri_CREATE_NO_CANONICALIZE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @Uri_CREATE_CRACK_UNKNOWN_SCHEMES, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @Uri_CREATE_PRE_PROCESS_HTML_URI, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @Uri_CREATE_NO_PRE_PROCESS_HTML_URI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @Uri_CREATE_IE_SETTINGS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @Uri_CREATE_NO_IE_SETTINGS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ false, %42 ], [ %51, %47 ]
  br label %54

54:                                               ; preds = %52, %37, %27, %17, %7
  %55 = phi i1 [ true, %37 ], [ true, %27 ], [ true, %17 ], [ true, %7 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
