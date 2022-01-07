; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiRestoreDC.c_Test_IsSpecialState.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiRestoreDC.c_Test_IsSpecialState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@DC_BRUSH = common dso_local global i32 0, align 4
@hbrush = common dso_local global i64 0, align 8
@DC_PEN = common dso_local global i32 0, align 4
@hpen = common dso_local global i64 0, align 8
@DEFAULT_GUI_FONT = common dso_local global i32 0, align 4
@hfont = common dso_local global i64 0, align 8
@DEFAULT_BITMAP = common dso_local global i32 0, align 4
@hbitmap = common dso_local global i64 0, align 8
@hrgn2 = common dso_local global i32 0, align 4
@MM_ANISOTROPIC = common dso_local global i64 0, align 8
@GM_ADVANCED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"sz.cx == %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sz.cy == %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @Test_IsSpecialState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_IsSpecialState(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @DC_BRUSH, align 4
  %9 = call i32 @GetStockObject(i32 %8)
  %10 = call i64 @SelectObject(i32 %7, i32 %9)
  %11 = load i64, i64* @hbrush, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @TEST(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @DC_PEN, align 4
  %17 = call i32 @GetStockObject(i32 %16)
  %18 = call i64 @SelectObject(i32 %15, i32 %17)
  %19 = load i64, i64* @hpen, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @TEST(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @DEFAULT_GUI_FONT, align 4
  %25 = call i32 @GetStockObject(i32 %24)
  %26 = call i64 @SelectObject(i32 %23, i32 %25)
  %27 = load i64, i64* @hfont, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @TEST(i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %2
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @DEFAULT_BITMAP, align 4
  %36 = call i32 @GetStockObject(i32 %35)
  %37 = call i64 @SelectObject(i32 %34, i32 %36)
  %38 = load i64, i64* @hbitmap, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @TEST(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @hrgn2, align 4
  %44 = call i64 @SelectObject(i32 %42, i32 %43)
  %45 = icmp eq i64 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @TEST(i32 %46)
  br label %62

48:                                               ; preds = %2
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @DEFAULT_BITMAP, align 4
  %51 = call i32 @GetStockObject(i32 %50)
  %52 = call i64 @SelectObject(i32 %49, i32 %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @TEST(i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @hrgn2, align 4
  %58 = call i64 @SelectObject(i32 %56, i32 %57)
  %59 = icmp eq i64 %58, 2
  %60 = zext i1 %59 to i32
  %61 = call i32 @TEST(i32 %60)
  br label %62

62:                                               ; preds = %48, %33
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @GetDCBrushColor(i32 %63)
  %65 = call i64 @RGB(i32 12, i32 34, i32 56)
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @TEST(i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @GetDCPenColor(i32 %69)
  %71 = call i64 @RGB(i32 23, i32 34, i32 45)
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @TEST(i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = call i64 @GetMapMode(i32 %75)
  %77 = load i64, i64* @MM_ANISOTROPIC, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @TEST(i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = call i64 @GetGraphicsMode(i32 %81)
  %83 = load i64, i64* @GM_ADVANCED, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @TEST(i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @GetWindowOrgEx(i32 %87, %struct.TYPE_8__* %5)
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 12
  %92 = zext i1 %91 to i32
  %93 = call i32 @TEST(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 34
  %97 = zext i1 %96 to i32
  %98 = call i32 @TEST(i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @GetViewportOrgEx(i32 %99, %struct.TYPE_8__* %5)
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 56
  %104 = zext i1 %103 to i32
  %105 = call i32 @TEST(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 78
  %109 = zext i1 %108 to i32
  %110 = call i32 @TEST(i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @GetWindowExtEx(i32 %111, %struct.TYPE_7__* %6)
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 123
  %116 = zext i1 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 456
  %123 = zext i1 %122 to i32
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @GetViewportExtEx(i32 %127, %struct.TYPE_7__* %6)
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 234
  %132 = zext i1 %131 to i32
  %133 = call i32 @TEST(i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 567
  %137 = zext i1 %136 to i32
  %138 = call i32 @TEST(i32 %137)
  ret void
}

declare dso_local i32 @TEST(i32) #1

declare dso_local i64 @SelectObject(i32, i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i64 @GetDCBrushColor(i32) #1

declare dso_local i64 @RGB(i32, i32, i32) #1

declare dso_local i64 @GetDCPenColor(i32) #1

declare dso_local i64 @GetMapMode(i32) #1

declare dso_local i64 @GetGraphicsMode(i32) #1

declare dso_local i32 @GetWindowOrgEx(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @GetViewportOrgEx(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @GetWindowExtEx(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetViewportExtEx(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
