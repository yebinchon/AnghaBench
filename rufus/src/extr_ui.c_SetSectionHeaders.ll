; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_SetSectionHeaders.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_SetSectionHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@hMainDialog = common dso_local global i32 0, align 4
@LOGPIXELSY = common dso_local global i32 0, align 4
@FW_SEMIBOLD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DEFAULT_CHARSET = common dso_local global i32 0, align 4
@PROOF_QUALITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Segoe UI\00", align 1
@section_control_ids = common dso_local global i32* null, align 8
@WM_SETFONT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetSectionHeaders(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i64, align 8
  %7 = alloca [128 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @hMainDialog, align 4
  %12 = call i32 @GetDC(i32 %11)
  %13 = load i32, i32* @LOGPIXELSY, align 4
  %14 = call i32 @GetDeviceCaps(i32 %12, i32 %13)
  %15 = call i32 @MulDiv(i32 14, i32 %14, i32 72)
  %16 = sub nsw i32 0, %15
  %17 = load i32, i32* @FW_SEMIBOLD, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* @DEFAULT_CHARSET, align 4
  %22 = load i32, i32* @PROOF_QUALITY, align 4
  %23 = call i64 @CreateFontA(i32 %16, i32 0, i32 0, i32 0, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 0, i32 0, i32 %22, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 %23, i64* %6, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %87, %1
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** @section_control_ids, align 8
  %27 = call i32 @ARRAYSIZE(i32* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %90

29:                                               ; preds = %24
  %30 = load i32, i32* %2, align 4
  %31 = load i32*, i32** @section_control_ids, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WM_SETFONT, align 4
  %37 = load i64, i64* %6, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @SendDlgItemMessageA(i32 %30, i32 %35, i32 %36, i32 %38, i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = load i32*, i32** @section_control_ids, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @GetDlgItem(i32 %41, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %49 = call i32 @memset(i32* %48, i32 0, i32 512)
  %50 = load i32, i32* %4, align 4
  %51 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %52 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %53 = call i32 @ARRAYSIZE(i32* %52)
  %54 = call i32 @GetWindowTextW(i32 %50, i32* %51, i32 %53)
  %55 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %56 = call i64 @wcslen(i32* %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %8, align 8
  %59 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %57
  store i32 32, i32* %59, align 4
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %8, align 8
  %62 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %60
  store i32 32, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  %64 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %65 = call i32 @SetWindowTextW(i32 %63, i32* %64)
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @GetWindowRect(i32 %66, %struct.TYPE_6__* %3)
  %68 = load i32, i32* %2, align 4
  %69 = bitcast %struct.TYPE_6__* %3 to i32*
  %70 = call i32 @MapWindowPoints(i32* null, i32 %68, i32* %69, i32 2)
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @GetTextSize(i32 %71, i32* null)
  %73 = bitcast %struct.TYPE_5__* %10 to i64*
  store i64 %72, i64* %73, align 4
  %74 = bitcast %struct.TYPE_5__* %5 to i8*
  %75 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 8, i1 false)
  %76 = load i32, i32* %4, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SWP_NOZORDER, align 4
  %86 = call i32 @SetWindowPos(i32 %76, i32* null, i32 %78, i32 %80, i32 %82, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %29
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %24

90:                                               ; preds = %24
  ret void
}

declare dso_local i64 @CreateFontA(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @MulDiv(i32, i32, i32) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @SendDlgItemMessageA(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @GetWindowTextW(i32, i32*, i32) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @SetWindowTextW(i32, i32*) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @MapWindowPoints(i32*, i32, i32*, i32) #1

declare dso_local i64 @GetTextSize(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SetWindowPos(i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
