; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_settings.c_SetupControls.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_settings.c_SetupControls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@IDC_SLIDER_NUM_OF_STARS = common dso_local global i32 0, align 4
@TBM_SETRANGE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MIN_STARS = common dso_local global i32 0, align 4
@MAX_STARS = common dso_local global i32 0, align 4
@IDC_SLIDER_SPEED = common dso_local global i32 0, align 4
@ROTATION_ITEMS = common dso_local global i64 0, align 8
@RotoStrings = common dso_local global i32* null, align 8
@IDC_COMBO_ROTATION = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@IDB_COSMOS = common dso_local global i32 0, align 4
@IMAGE_BITMAP = common dso_local global i32 0, align 4
@LR_CREATEDIBSECTION = common dso_local global i32 0, align 4
@LR_DEFAULTSIZE = common dso_local global i32 0, align 4
@FW_THIN = common dso_local global i32 0, align 4
@ANSI_CHARSET = common dso_local global i32 0, align 4
@PROOF_QUALITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Tahoma\00", align 1
@TRANSPARENT = common dso_local global i32 0, align 4
@IDS_DESCRIPTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ReactOS\00", align 1
@IDC_IMAGE_COSMOS = common dso_local global i32 0, align 4
@STM_SETIMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @SetupControls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetupControls(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [256 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  store i32 %0, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @GWLP_HINSTANCE, align 4
  %19 = call i64 @GetWindowLongPtr(i32 %17, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @IDC_SLIDER_NUM_OF_STARS, align 4
  %22 = load i32, i32* @TBM_SETRANGE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32, i32* @MIN_STARS, align 4
  %25 = load i32, i32* @MAX_STARS, align 4
  %26 = call i32 @MAKELPARAM(i32 %24, i32 %25)
  %27 = call i32 @SendDlgItemMessage(i32 %20, i32 %21, i32 %22, i32 %23, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @IDC_SLIDER_SPEED, align 4
  %30 = load i32, i32* @TBM_SETRANGE, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @MAKELPARAM(i32 1, i32 100)
  %33 = call i32 @SendDlgItemMessage(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %52, %1
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @ROTATION_ITEMS, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = load i32*, i32** @RotoStrings, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %45 = call i64 @LoadString(i64 %39, i32 %43, i32* %44, i32 256)
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @IDC_COMBO_ROTATION, align 4
  %48 = load i32, i32* @CB_ADDSTRING, align 4
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %50 = ptrtoint i32* %49 to i32
  %51 = call i32 @SendDlgItemMessage(i32 %46, i32 %47, i32 %48, i32 0, i32 %50)
  br label %52

52:                                               ; preds = %38
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %34

55:                                               ; preds = %34
  %56 = load i64, i64* %4, align 8
  %57 = load i32, i32* @IDB_COSMOS, align 4
  %58 = call i32 @MAKEINTRESOURCE(i32 %57)
  %59 = load i32, i32* @IMAGE_BITMAP, align 4
  %60 = load i32, i32* @LR_CREATEDIBSECTION, align 4
  %61 = load i32, i32* @LR_DEFAULTSIZE, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @LoadImage(i64 %56, i32 %58, i32 %59, i32 0, i32 0, i32 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @GetDC(i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @CreateCompatibleDC(i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = call i32 @ZeroMemory(%struct.TYPE_9__* %7, i32 20)
  %69 = load i32, i32* @FW_THIN, align 4
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @ANSI_CHARSET, align 4
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @PROOF_QUALITY, align 4
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 36, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32* @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %79 = call i32 @_tcscpy(i32 %77, i32* %78)
  %80 = call i64 @CreateFontIndirect(%struct.TYPE_9__* %7)
  store i64 %80, i64* %8, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @SelectObject(i32 %81, i64 %82)
  store i64 %83, i64* %12, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i64, i64* %8, align 8
  %86 = call i64 @SelectObject(i32 %84, i64 %85)
  store i64 %86, i64* %13, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @TRANSPARENT, align 4
  %89 = call i32 @SetBkMode(i32 %87, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @RGB(i32 255, i32 255, i32 255)
  %92 = call i32 @SetTextColor(i32 %90, i32 %91)
  %93 = load i64, i64* %4, align 8
  %94 = load i32, i32* @IDS_DESCRIPTION, align 4
  %95 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %96 = call i64 @LoadString(i64 %93, i32 %94, i32* %95, i32 256)
  store i64 %96, i64* %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32* @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %99 = call i32 @GetTextExtentPoint32(i32 %97, i32* %98, i64 7, %struct.TYPE_8__* %14)
  %100 = load i32, i32* %11, align 4
  %101 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @GetTextExtentPoint32(i32 %100, i32* %101, i64 %102, %struct.TYPE_8__* %15)
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @GetObject(i64 %104, i32 8, %struct.TYPE_10__* %16)
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %107, %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub i64 %110, %112
  store i64 %113, i64* %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i64, i64* %6, align 8
  %116 = mul i64 %115, 2
  %117 = udiv i64 %116, 5
  %118 = call i32* @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %119 = call i32 @TextOut(i32 %114, i32 16, i64 %117, i32* %118, i64 7)
  %120 = load i32, i32* %11, align 4
  %121 = load i64, i64* %6, align 8
  %122 = mul i64 %121, 3
  %123 = udiv i64 %122, 5
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %123, %125
  %127 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @TextOut(i32 %120, i32 16, i64 %126, i32* %127, i64 %128)
  %130 = load i32, i32* %11, align 4
  %131 = load i64, i64* %12, align 8
  %132 = call i64 @SelectObject(i32 %130, i64 %131)
  %133 = load i32, i32* %11, align 4
  %134 = load i64, i64* %13, align 8
  %135 = call i64 @SelectObject(i32 %133, i64 %134)
  %136 = load i64, i64* %8, align 8
  %137 = call i32 @DeleteObject(i64 %136)
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @DeleteDC(i32 %138)
  %140 = load i32, i32* %2, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @ReleaseDC(i32 %140, i32 %141)
  %143 = load i32, i32* %2, align 4
  %144 = load i32, i32* @IDC_IMAGE_COSMOS, align 4
  %145 = load i32, i32* @STM_SETIMAGE, align 4
  %146 = load i32, i32* @IMAGE_BITMAP, align 4
  %147 = load i64, i64* %9, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 @SendDlgItemMessage(i32 %143, i32 %144, i32 %145, i32 %146, i32 %148)
  ret void
}

declare dso_local i64 @GetWindowLongPtr(i32, i32) #1

declare dso_local i32 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

declare dso_local i64 @LoadString(i64, i32, i32*, i32) #1

declare dso_local i64 @LoadImage(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @_tcscpy(i32, i32*) #1

declare dso_local i32* @_T(i8*) #1

declare dso_local i64 @CreateFontIndirect(%struct.TYPE_9__*) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @GetTextExtentPoint32(i32, i32*, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @GetObject(i64, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @TextOut(i32, i32, i64, i32*, i64) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
