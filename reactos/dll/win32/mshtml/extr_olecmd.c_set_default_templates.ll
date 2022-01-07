; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_set_default_templates.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_set_default_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_default_templates.empty = internal constant [1 x i32] zeroinitializer, align 4
@IDS_PRINT_HEADER_TEMPLATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDS_PRINT_FOOTER_TEMPLATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @set_default_templates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_default_templates(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [64 x i32], align 16
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @nsIPrintSettings_SetHeaderStrLeft(i32* %4, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @set_default_templates.empty, i64 0, i64 0))
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @nsIPrintSettings_SetHeaderStrRight(i32* %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @set_default_templates.empty, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @nsIPrintSettings_SetHeaderStrCenter(i32* %8, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @set_default_templates.empty, i64 0, i64 0))
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @nsIPrintSettings_SetFooterStrLeft(i32* %10, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @set_default_templates.empty, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @nsIPrintSettings_SetFooterStrRight(i32* %12, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @set_default_templates.empty, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @nsIPrintSettings_SetFooterStrCenter(i32* %14, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @set_default_templates.empty, i64 0, i64 0))
  %16 = call i32 (...) @get_shdoclc()
  %17 = load i32, i32* @IDS_PRINT_HEADER_TEMPLATE, align 4
  %18 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %19 = call i64 @LoadStringW(i32 %16, i32 %17, i32* %18, i32 64)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @set_print_template(i32* %22, i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = call i32 (...) @get_shdoclc()
  %28 = load i32, i32* @IDS_PRINT_FOOTER_TEMPLATE, align 4
  %29 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %30 = call i64 @LoadStringW(i32 %27, i32 %28, i32* %29, i32 64)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @set_print_template(i32* %33, i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %26
  ret void
}

declare dso_local i32 @nsIPrintSettings_SetHeaderStrLeft(i32*, i32*) #1

declare dso_local i32 @nsIPrintSettings_SetHeaderStrRight(i32*, i32*) #1

declare dso_local i32 @nsIPrintSettings_SetHeaderStrCenter(i32*, i32*) #1

declare dso_local i32 @nsIPrintSettings_SetFooterStrLeft(i32*, i32*) #1

declare dso_local i32 @nsIPrintSettings_SetFooterStrRight(i32*, i32*) #1

declare dso_local i32 @nsIPrintSettings_SetFooterStrCenter(i32*, i32*) #1

declare dso_local i64 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @get_shdoclc(...) #1

declare dso_local i32 @set_print_template(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
