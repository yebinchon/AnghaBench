; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_get_sans_serif_height.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_get_sans_serif_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@msi_dialog_get_sans_serif_height.szSansSerif = internal constant [14 x i8] c"MS Sans Serif\00", align 1
@LOGPIXELSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @msi_dialog_get_sans_serif_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_dialog_get_sans_serif_height(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @GetDC(i32 %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %1
  %15 = call i32 @memset(%struct.TYPE_7__* %3, i32 0, i32 8)
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* @LOGPIXELSY, align 4
  %18 = call i32 @GetDeviceCaps(i64 %16, i32 %17)
  %19 = call i32 @MulDiv(i32 12, i32 %18, i32 72)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcpyW(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @msi_dialog_get_sans_serif_height.szSansSerif, i64 0, i64 0))
  %24 = call i64 @CreateFontIndirectW(%struct.TYPE_7__* %3)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %14
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @SelectObject(i64 %28, i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @GetTextMetricsW(i64 %31, %struct.TYPE_6__* %4)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %27
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @SelectObject(i64 %39, i64 %40)
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @DeleteObject(i64 %42)
  br label %44

44:                                               ; preds = %38, %14
  %45 = load i32, i32* %2, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @ReleaseDC(i32 %45, i64 %46)
  br label %48

48:                                               ; preds = %44, %1
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i64 @GetDC(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @MulDiv(i32, i32, i32) #1

declare dso_local i32 @GetDeviceCaps(i64, i32) #1

declare dso_local i32 @strcpyW(i32, i8*) #1

declare dso_local i64 @CreateFontIndirectW(%struct.TYPE_7__*) #1

declare dso_local i64 @SelectObject(i64, i64) #1

declare dso_local i64 @GetTextMetricsW(i64, %struct.TYPE_6__*) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @ReleaseDC(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
