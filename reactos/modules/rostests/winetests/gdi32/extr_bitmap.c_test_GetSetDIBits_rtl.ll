; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_GetSetDIBits_rtl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_GetSetDIBits_rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@LAYOUT_LTR = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@LAYOUT_RTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"bits differ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetSetDIBits_rtl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetSetDIBits_rtl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i32], align 16
  %8 = alloca [64 x i32], align 16
  %9 = call i32 @GetDC(i32* null)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @CreateCompatibleDC(i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @LAYOUT_LTR, align 4
  %14 = call i32 @pSetLayout(i32 %12, i32 %13)
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @CreateCompatibleBitmap(i32 %15, i32 8, i32 8)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @SelectObject(i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @RGB(i32 255, i32 0, i32 0)
  %22 = call i32 @SetPixel(i32 %20, i32 0, i32 0, i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @SelectObject(i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 4, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32 8, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i32 8, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i32 32, i32* %35, align 4
  %36 = load i32, i32* @BI_RGB, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %42 = load i32, i32* @DIB_RGB_COLORS, align 4
  %43 = call i32 @GetDIBits(i32 %39, i32 %40, i32 0, i32 8, i32* %41, %struct.TYPE_6__* %5, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 8
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 56
  %50 = load i32, i32* %49, align 16
  %51 = icmp eq i32 %50, 16711680
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 56
  %54 = load i32, i32* %53, align 16
  %55 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @LAYOUT_RTL, align 4
  %58 = call i32 @pSetLayout(i32 %56, i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* %3, align 4
  %61 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %62 = load i32, i32* @DIB_RGB_COLORS, align 4
  %63 = call i32 @GetDIBits(i32 %59, i32 %60, i32 0, i32 8, i32* %61, %struct.TYPE_6__* %5, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 8
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %70 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %71 = call i32 @memcmp(i32* %69, i32* %70, i32 256)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @LAYOUT_LTR, align 4
  %78 = call i32 @pSetLayout(i32 %76, i32 %77)
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* %3, align 4
  %81 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %82 = load i32, i32* @DIB_RGB_COLORS, align 4
  %83 = call i32 @SetDIBits(i32 %79, i32 %80, i32 0, i32 8, i32* %81, %struct.TYPE_6__* %5, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 8
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %3, align 4
  %91 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %92 = load i32, i32* @DIB_RGB_COLORS, align 4
  %93 = call i32 @GetDIBits(i32 %89, i32 %90, i32 0, i32 8, i32* %91, %struct.TYPE_6__* %5, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 8
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %100 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %101 = call i32 @memcmp(i32* %99, i32* %100, i32 256)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @LAYOUT_RTL, align 4
  %108 = call i32 @pSetLayout(i32 %106, i32 %107)
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* %3, align 4
  %111 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %112 = load i32, i32* @DIB_RGB_COLORS, align 4
  %113 = call i32 @SetDIBits(i32 %109, i32 %110, i32 0, i32 8, i32* %111, %struct.TYPE_6__* %5, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 8
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %6, align 4
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* %3, align 4
  %121 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %122 = load i32, i32* @DIB_RGB_COLORS, align 4
  %123 = call i32 @GetDIBits(i32 %119, i32 %120, i32 0, i32 8, i32* %121, %struct.TYPE_6__* %5, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %124, 8
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %130 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %131 = call i32 @memcmp(i32* %129, i32* %130, i32 256)
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @DeleteObject(i32 %136)
  %138 = load i32, i32* %2, align 4
  %139 = call i32 @DeleteDC(i32 %138)
  %140 = load i32, i32* %1, align 4
  %141 = call i32 @ReleaseDC(i32* null, i32 %140)
  ret void
}

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @pSetLayout(i32, i32) #1

declare dso_local i32 @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @SetPixel(i32, i32, i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @GetDIBits(i32, i32, i32, i32, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @SetDIBits(i32, i32, i32, i32, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
