; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_draw.c_UITOOLS95_DrawFrameCaption.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_draw.c_UITOOLS95_DrawFrameCaption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Invalid caption; flags=0x%04x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DFCS_PUSHED = common dso_local global i32 0, align 4
@EDGE_SUNKEN = common dso_local global i32 0, align 4
@EDGE_RAISED = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@BF_MIDDLE = common dso_local global i32 0, align 4
@BF_SOFT = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i32 0, align 4
@DEFAULT_CHARSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Marlett\00", align 1
@TRANSPARENT = common dso_local global i32 0, align 4
@DFCS_INACTIVE = common dso_local global i32 0, align 4
@COLOR_BTNHIGHLIGHT = common dso_local global i32 0, align 4
@COLOR_BTNSHADOW = common dso_local global i32 0, align 4
@COLOR_BTNTEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @UITOOLS95_DrawFrameCaption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UITOOLS95_DrawFrameCaption(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 255
  switch i32 %16, label %22 [
    i32 132, label %17
    i32 131, label %18
    i32 129, label %19
    i32 130, label %20
    i32 128, label %21
  ]

17:                                               ; preds = %3
  store i8 114, i8* %14, align 1
  br label %26

18:                                               ; preds = %3
  store i8 115, i8* %14, align 1
  br label %26

19:                                               ; preds = %3
  store i8 48, i8* %14, align 1
  br label %26

20:                                               ; preds = %3
  store i8 49, i8* %14, align 1
  br label %26

21:                                               ; preds = %3
  store i8 50, i8* %14, align 1
  br label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %142

26:                                               ; preds = %21, %20, %19, %18, %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DFCS_PUSHED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @EDGE_SUNKEN, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @EDGE_RAISED, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load i32, i32* @BF_RECT, align 4
  %40 = load i32, i32* @BF_MIDDLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @BF_SOFT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @IntDrawRectEdge(i32 %27, i32 %28, i32 %38, i32 %43, i32 1)
  %45 = call i32 @ZeroMemory(%struct.TYPE_8__* %8, i32 32)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @UITOOLS_MakeSquareRect(i32 %46, %struct.TYPE_7__* %12)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @DFCS_PUSHED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %37
  %65 = call i32 @OffsetRect(%struct.TYPE_7__* %12, i32 1, i32 1)
  br label %66

66:                                               ; preds = %64, %37
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %68, %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i64 %71, i64* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @FW_NORMAL, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %74, i32* %75, align 8
  %76 = load i32, i32* @DEFAULT_CHARSET, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @TEXT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i32 @lstrcpy(i32 %79, i32 %80)
  %82 = call i32 @CreateFontIndirect(%struct.TYPE_8__* %8)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @SelectObject(i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @GetTextColor(i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @GetBkMode(i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @TRANSPARENT, align 4
  %92 = call i32 @SetBkMode(i32 %90, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @DFCS_INACTIVE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %66
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @COLOR_BTNHIGHLIGHT, align 4
  %100 = call i32 @GetSysColor(i32 %99)
  %101 = call i32 @SetTextColor(i32 %98, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  %109 = call i32 @TextOut(i32 %102, i64 %105, i64 %108, i8* %14, i32 1)
  br label %110

110:                                              ; preds = %97, %66
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @DFCS_INACTIVE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* @COLOR_BTNSHADOW, align 4
  br label %120

118:                                              ; preds = %110
  %119 = load i32, i32* @COLOR_BTNTEXT, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = call i32 @GetSysColor(i32 %121)
  %123 = call i32 @SetTextColor(i32 %111, i32 %122)
  %124 = load i32, i32* %5, align 4
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @TextOut(i32 %124, i64 %126, i64 %128, i8* %14, i32 1)
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @SetTextColor(i32 %130, i32 %131)
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @SelectObject(i32 %133, i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @SetBkMode(i32 %136, i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @DeleteObject(i32 %139)
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %120, %22
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IntDrawRectEdge(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @UITOOLS_MakeSquareRect(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @lstrcpy(i32, i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @CreateFontIndirect(%struct.TYPE_8__*) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetTextColor(i32) #1

declare dso_local i32 @GetBkMode(i32) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

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
