; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_draw.c_UITOOLS95_DrawFrameMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_draw.c_UITOOLS95_DrawFrameMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid menu; flags=0x%04x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i32 0, align 4
@DEFAULT_CHARSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Marlett\00", align 1
@DFCS_INACTIVE = common dso_local global i32 0, align 4
@COLOR_BTNSHADOW = common dso_local global i32 0, align 4
@COLOR_BTNTEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@COLOR_BTNHIGHLIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @UITOOLS95_DrawFrameMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UITOOLS95_DrawFrameMenu(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @UITOOLS_MakeSquareRect(i32 %14, %struct.TYPE_6__* %12)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 255
  switch i32 %17, label %24 [
    i32 130, label %18
    i32 132, label %19
    i32 133, label %20
    i32 131, label %21
    i32 129, label %22
    i32 128, label %23
  ]

18:                                               ; preds = %3
  store i8 53, i8* %11, align 1
  br label %28

19:                                               ; preds = %3
  store i8 54, i8* %11, align 1
  br label %28

20:                                               ; preds = %3
  store i8 56, i8* %11, align 1
  br label %28

21:                                               ; preds = %3
  store i8 119, i8* %11, align 1
  br label %28

22:                                               ; preds = %3
  store i8 104, i8* %11, align 1
  br label %28

23:                                               ; preds = %3
  store i8 97, i8* %11, align 1
  br label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %4, align 4
  br label %79

28:                                               ; preds = %23, %22, %21, %20, %19, %18
  %29 = call i32 @ZeroMemory(%struct.TYPE_7__* %8, i32 32)
  %30 = load i32, i32* %13, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @FW_NORMAL, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @DEFAULT_CHARSET, align 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @TEXT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @lstrcpy(i32 %38, i32 %39)
  %41 = call i32 @CreateFontIndirect(%struct.TYPE_7__* %8)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @SelectObject(i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 255
  %47 = icmp eq i32 %46, 130
  br i1 %47, label %52, label %48

48:                                               ; preds = %28
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 255
  %51 = icmp eq i32 %50, 132
  br i1 %51, label %52, label %66

52:                                               ; preds = %48, %28
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @DFCS_INACTIVE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @COLOR_BTNSHADOW, align 4
  br label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @COLOR_BTNTEXT, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = call i32 @GetSysColor(i32 %63)
  %65 = call i32 @SetTextColor(i32 %53, i32 %64)
  br label %66

66:                                               ; preds = %62, %48
  %67 = load i32, i32* %5, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @TextOut(i32 %67, i64 %69, i64 %71, i8* %11, i32 1)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @SelectObject(i32 %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @DeleteObject(i32 %76)
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %66, %24
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @UITOOLS_MakeSquareRect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @lstrcpy(i32, i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @CreateFontIndirect(%struct.TYPE_7__*) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @TextOut(i32, i64, i64, i8*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
