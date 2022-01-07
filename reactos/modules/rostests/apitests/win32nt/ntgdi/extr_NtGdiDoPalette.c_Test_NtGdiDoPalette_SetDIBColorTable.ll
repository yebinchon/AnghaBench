; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiDoPalette.c_Test_NtGdiDoPalette_SetDIBColorTable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiDoPalette.c_Test_NtGdiDoPalette_SetDIBColorTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.TYPE_2__, [10 x i32] }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"hdc was NULL.\0A\00", align 1
@BI_RGB = common dso_local global i32 0, align 4
@DIB_PAL_COLORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"hbmp was NULL.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"pjBits was NULL.\0A\00", align 1
@GdiPalSetColorTable = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_NtGdiDoPalette_SetDIBColorTable() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.anon, align 8
  %5 = call i32* @CreateCompatibleDC(i32 0)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 56, i32* %11, align 8
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 10, i32* %13, align 4
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 10, i32* %15, align 8
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32 8, i32* %19, align 8
  %20 = load i32, i32* @BI_RGB, align 4
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 9
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 7
  store i32 9, i32* %30, align 4
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 8
  store i32 9, i32* %32, align 8
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %33, i64 0, i64 0
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %35, i64 0, i64 1
  store i32 2105376, i32* %36, align 4
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %37, i64 0, i64 2
  store i32 4210752, i32* %38, align 8
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %39, i64 0, i64 3
  store i32 6316128, i32* %40, align 4
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %41, i64 0, i64 4
  store i32 8421504, i32* %42, align 8
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %43, i64 0, i64 5
  store i32 10526880, i32* %44, align 4
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %45, i64 0, i64 6
  store i32 12632256, i32* %46, align 8
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %47, i64 0, i64 7
  store i32 14737632, i32* %48, align 4
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %49, i64 0, i64 8
  store i32 16777215, i32* %50, align 8
  %51 = load i32*, i32** %1, align 8
  %52 = bitcast %struct.anon* %4 to i32*
  %53 = load i32, i32* @DIB_PAL_COLORS, align 4
  %54 = bitcast i32** %3 to i32*
  %55 = call i32* @CreateDIBSection(i32* %51, i32* %52, i32 %53, i32* %54, i32* null, i32 0)
  store i32* %55, i32** %2, align 8
  %56 = load i32*, i32** %2, align 8
  %57 = icmp ne i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32*, i32** %3, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32*, i32** %1, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @SelectObject(i32* %64, i32* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 8, i32* %68, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 1, i32* %70, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 2, i32* %72, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 3, i32* %74, align 4
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %75, i64 0, i64 8
  store i32 0, i32* %76, align 8
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %78 = getelementptr inbounds [10 x i32], [10 x i32]* %77, i64 0, i64 7
  store i32 2105376, i32* %78, align 4
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %79, i64 0, i64 6
  store i32 4210752, i32* %80, align 8
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* %81, i64 0, i64 5
  store i32 6316128, i32* %82, align 4
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %83, i64 0, i64 4
  store i32 8421504, i32* %84, align 8
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* %85, i64 0, i64 3
  store i32 10526880, i32* %86, align 4
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %87, i64 0, i64 2
  store i32 12632256, i32* %88, align 8
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %89, i64 0, i64 1
  store i32 14737632, i32* %90, align 4
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %91, i64 0, i64 0
  store i32 16777215, i32* %92, align 8
  %93 = load i32*, i32** %1, align 8
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %95 = bitcast [10 x i32]* %94 to i32**
  %96 = load i32, i32* @GdiPalSetColorTable, align 4
  %97 = load i32, i32* @FALSE, align 4
  %98 = call i32 @NtGdiDoPalette(i32* %93, i32 0, i32 9, i32** %95, i32 %96, i32 %97)
  %99 = call i32 @ok_long(i32 %98, i32 9)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @SetDCPenColor(i32* %100, i32 14737632)
  %102 = load i32*, i32** %1, align 8
  %103 = call i32 @SetDCBrushColor(i32* %102, i32 2105376)
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 @Rectangle(i32* %104, i32 0, i32 0, i32 10, i32 10)
  %106 = load i32*, i32** %1, align 8
  %107 = call i32 @DeleteDC(i32* %106)
  %108 = load i32*, i32** %2, align 8
  %109 = call i32 @DeleteObject(i32* %108)
  ret void
}

declare dso_local i32* @CreateCompatibleDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32* @CreateDIBSection(i32*, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @SelectObject(i32*, i32*) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @NtGdiDoPalette(i32*, i32, i32, i32**, i32, i32) #1

declare dso_local i32 @SetDCPenColor(i32*, i32) #1

declare dso_local i32 @SetDCBrushColor(i32*, i32) #1

declare dso_local i32 @Rectangle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
