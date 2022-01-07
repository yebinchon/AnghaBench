; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_settings.c_OnCommandAbout.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_settings.c_OnCommandAbout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@IDI_STARFIELD = common dso_local global i32 0, align 4
@IDS_DESCRIPTION = common dso_local global i32 0, align 4
@IDS_AUTHOR = common dso_local global i32 0, align 4
@IDS_LICENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @OnCommandAbout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnCommandAbout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i32], align 16
  %6 = alloca [256 x i32], align 16
  %7 = alloca [1024 x i32], align 16
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @GWLP_HINSTANCE, align 4
  %10 = call i64 @GetWindowLongPtr(i32 %8, i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @IDI_STARFIELD, align 4
  %13 = call i32 @MAKEINTRESOURCE(i32 %12)
  %14 = call i32 @LoadIcon(i64 %11, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @IDS_DESCRIPTION, align 4
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %19 = call i32 @SIZEOF(i32* %18)
  %20 = call i32 @LoadString(i64 %15, i32 %16, i32* %17, i32 %19)
  %21 = load i64, i64* %3, align 8
  %22 = load i32, i32* @IDS_AUTHOR, align 4
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %25 = call i32 @SIZEOF(i32* %24)
  %26 = call i32 @LoadString(i64 %21, i32 %22, i32* %23, i32 %25)
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* @IDS_LICENSE, align 4
  %29 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  %30 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  %31 = call i32 @SIZEOF(i32* %30)
  %32 = call i32 @LoadString(i64 %27, i32 %28, i32* %29, i32 %31)
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %34 = call i32* @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @_tcscat(i32* %33, i32* %34)
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %38 = call i32 @_tcscat(i32* %36, i32* %37)
  %39 = load i32, i32* %2, align 4
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ShellAbout(i32 %39, i32* %40, i32* %41, i32 %42)
  %44 = load i32, i32* @TRUE, align 4
  ret i32 %44
}

declare dso_local i64 @GetWindowLongPtr(i32, i32) #1

declare dso_local i32 @LoadIcon(i64, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @LoadString(i64, i32, i32*, i32) #1

declare dso_local i32 @SIZEOF(i32*) #1

declare dso_local i32 @_tcscat(i32*, i32*) #1

declare dso_local i32* @_T(i8*) #1

declare dso_local i32 @ShellAbout(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
