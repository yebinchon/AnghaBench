; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lpk/extr_lpk.c_LPK_DrawUnderscore.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lpk/extr_lpk.c_LPK_DrawUnderscore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SSA_GLYPHS = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@SIC_COMPLEX = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@LAYOUT_RTL = common dso_local global i32 0, align 4
@TA_RTLREADING = common dso_local global i32 0, align 4
@SSA_RTL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PS_SOLID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @LPK_DrawUnderscore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LPK_DrawUnderscore(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* @SSA_GLYPHS, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i64, i64* @S_FALSE, align 8
  store i64 %23, i64* %21, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %120

27:                                               ; preds = %6
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @SIC_COMPLEX, align 4
  %31 = call i64 @ScriptIsComplex(i32 %28, i32 %29, i32 %30)
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @GetLayout(i32 %35)
  %37 = load i32, i32* @LAYOUT_RTL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @GetTextAlign(i32 %41)
  %43 = load i32, i32* @TA_RTLREADING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @SSA_RTL, align 4
  %48 = load i32, i32* %14, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 3, %54
  %56 = sdiv i32 %55, 2
  %57 = add nsw i32 %56, 16
  %58 = load i32, i32* %14, align 4
  %59 = call i64 @ScriptStringAnalyse(i32 %51, i32 %52, i32 %53, i32 %57, i32 -1, i32 %58, i32 -1, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %13)
  store i64 %59, i64* %21, align 8
  br label %60

60:                                               ; preds = %50, %27
  %61 = load i64, i64* %21, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @ScriptStringCPtoX(i32 %65, i32 %66, i32 %67, i32* %17)
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @ScriptStringCPtoX(i32 %72, i32 %73, i32 %74, i32* %17)
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %16, align 4
  %79 = call i32 @ScriptStringFree(i32* %13)
  br label %99

80:                                               ; preds = %60
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @GetTextExtentPointW(i32 %81, i32 %82, i32 %83, %struct.TYPE_3__* %18)
  %85 = load i32, i32* %8, align 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %85, %87
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @GetTextExtentPointW(i32 %89, i32 %90, i32 %92, %struct.TYPE_3__* %18)
  %94 = load i32, i32* %8, align 4
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %94, %96
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %80, %64
  %100 = load i32, i32* @PS_SOLID, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @GetTextColor(i32 %101)
  %103 = call i32 @CreatePen(i32 %100, i32 1, i32 %102)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @SelectObject(i32 %104, i32 %105)
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @MoveToEx(i32 %107, i32 %108, i32 %109, i32* null)
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @LineTo(i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %20, align 4
  %117 = call i32 @SelectObject(i32 %115, i32 %116)
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @DeleteObject(i32 %118)
  br label %120

120:                                              ; preds = %99, %26
  ret void
}

declare dso_local i64 @ScriptIsComplex(i32, i32, i32) #1

declare dso_local i32 @GetLayout(i32) #1

declare dso_local i32 @GetTextAlign(i32) #1

declare dso_local i64 @ScriptStringAnalyse(i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ScriptStringCPtoX(i32, i32, i32, i32*) #1

declare dso_local i32 @ScriptStringFree(i32*) #1

declare dso_local i32 @GetTextExtentPointW(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @CreatePen(i32, i32, i32) #1

declare dso_local i32 @GetTextColor(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @MoveToEx(i32, i32, i32, i32*) #1

declare dso_local i32 @LineTo(i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
