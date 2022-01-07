; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/regtests/gdi/extr_xlate.c_Test_SrcMono.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/regtests/gdi/extr_xlate.c_Test_SrcMono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.TYPE_2__, [3 x i32] }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64 }

@hdcSrc = common dso_local global i32 0, align 4
@hbmp1bpp_a = common dso_local global i64 0, align 8
@BMF_1BPP = common dso_local global i32 0, align 4
@hbmp1bpp_b = common dso_local global i64 0, align 8
@iDcFormat = common dso_local global i32 0, align 4
@hbmpCompat = common dso_local global i64 0, align 8
@BI_RGB = common dso_local global i8* null, align 8
@hdcDst = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CreateDIBSection failed\0A\00", align 1
@BMF_16BPP_555 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"expected %lx, got %lx\0A\00", align 1
@BI_BITFIELDS = common dso_local global i8* null, align 8
@BMF_16BPP_565 = common dso_local global i32 0, align 4
@BMF_32BPP_BGR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SrcMono() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.anon, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @hdcSrc, align 4
  %7 = load i64, i64* @hbmp1bpp_a, align 8
  %8 = call i32 @SelectObject(i32 %6, i64 %7)
  %9 = load i32, i32* @BMF_1BPP, align 4
  %10 = load i64, i64* @hbmp1bpp_b, align 8
  %11 = call i32 @Test_SrcMono1(i32 %9, i64 %10, i64 0)
  %12 = load i32, i32* @iDcFormat, align 4
  %13 = load i64, i64* @hbmpCompat, align 8
  %14 = call i32 @Test_SrcMono1(i32 %12, i64 %13, i64 0)
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 56, i32* %16, align 8
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 2, i32* %18, align 4
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 -2, i32* %20, align 8
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  store i32 16, i32* %24, align 8
  %25 = load i8*, i8** @BI_RGB, align 8
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 9
  store i8* %25, i8** %27, align 8
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 10
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 6
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 7
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 8
  store i32 0, i32* %37, align 8
  %38 = load i32, i32* @hdcDst, align 4
  %39 = ptrtoint %struct.anon* %2 to i32
  %40 = load i32, i32* @DIB_RGB_COLORS, align 4
  %41 = call i64 @CreateDIBSection(i32 %38, i32 %39, i32 %40, i64* %3, i32* null, i32 0)
  store i64 %41, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @memset(i64 %46, i32 1431655765, i32 128)
  %48 = load i32, i32* @hdcDst, align 4
  %49 = load i64, i64* %1, align 8
  %50 = call i32 @SelectObject(i32 %48, i64 %49)
  %51 = load i32, i32* @hdcDst, align 4
  %52 = call i32 @GetPixel(i32 %51, i32 0, i32 0)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @BMF_16BPP_555, align 4
  %54 = call i32 @iXlateToRGB(i32 %53, i32 21845)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  store i32 1193046, i32* %5, align 4
  %62 = load i32, i32* @hdcDst, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @SetPixel(i32 %62, i32 0, i32 0, i32 %63)
  %65 = load i32, i32* @BMF_16BPP_555, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @iXlateFromRGB(i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i64, i64* %3, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load volatile i32, i32* %69, align 4
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* @BMF_16BPP_555, align 4
  %79 = load i64, i64* %1, align 8
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @Test_SrcMono1(i32 %78, i64 %79, i64 %80)
  %82 = load i64, i64* %1, align 8
  %83 = call i32 @DeleteObject(i64 %82)
  %84 = load i8*, i8** @BI_BITFIELDS, align 8
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 9
  store i8* %84, i8** %86, align 8
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 7
  store i32 3, i32* %88, align 4
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 8
  store i32 3, i32* %90, align 8
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 1
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %91, i64 0, i64 0
  store i32 63488, i32* %92, align 8
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 1
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %93, i64 0, i64 1
  store i32 2016, i32* %94, align 4
  %95 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 1
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %95, i64 0, i64 2
  store i32 31, i32* %96, align 8
  %97 = load i32, i32* @hdcDst, align 4
  %98 = ptrtoint %struct.anon* %2 to i32
  %99 = load i32, i32* @DIB_RGB_COLORS, align 4
  %100 = call i64 @CreateDIBSection(i32 %97, i32 %98, i32 %99, i64* %3, i32* null, i32 0)
  store i64 %100, i64* %1, align 8
  %101 = load i64, i64* %1, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @hdcDst, align 4
  %106 = load i64, i64* %1, align 8
  %107 = call i32 @SelectObject(i32 %105, i64 %106)
  %108 = load i32, i32* @BMF_16BPP_565, align 4
  %109 = load i64, i64* %1, align 8
  %110 = load i64, i64* %3, align 8
  %111 = call i32 @Test_SrcMono1(i32 %108, i64 %109, i64 %110)
  %112 = load i64, i64* %1, align 8
  %113 = call i32 @DeleteObject(i64 %112)
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  store i32 32, i32* %115, align 8
  %116 = load i8*, i8** @BI_RGB, align 8
  %117 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 9
  store i8* %116, i8** %118, align 8
  %119 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 7
  store i32 0, i32* %120, align 4
  %121 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 8
  store i32 0, i32* %122, align 8
  %123 = load i32, i32* @hdcDst, align 4
  %124 = ptrtoint %struct.anon* %2 to i32
  %125 = load i32, i32* @DIB_RGB_COLORS, align 4
  %126 = call i64 @CreateDIBSection(i32 %123, i32 %124, i32 %125, i64* %3, i32* null, i32 0)
  store i64 %126, i64* %1, align 8
  %127 = load i64, i64* %1, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %131 = load i32, i32* @hdcDst, align 4
  %132 = load i64, i64* %1, align 8
  %133 = call i32 @SelectObject(i32 %131, i64 %132)
  %134 = load i32, i32* @BMF_32BPP_BGR, align 4
  %135 = load i64, i64* %1, align 8
  %136 = load i64, i64* %3, align 8
  %137 = call i32 @Test_SrcMono1(i32 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %1, align 8
  %139 = call i32 @DeleteObject(i64 %138)
  ret void
}

declare dso_local i32 @SelectObject(i32, i64) #1

declare dso_local i32 @Test_SrcMono1(i32, i64, i64) #1

declare dso_local i64 @CreateDIBSection(i32, i32, i32, i64*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @GetPixel(i32, i32, i32) #1

declare dso_local i32 @iXlateToRGB(i32, i32) #1

declare dso_local i32 @SetPixel(i32, i32, i32, i32) #1

declare dso_local i32 @iXlateFromRGB(i32, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
