; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_MaskBlt.c_Test_MaskBlt_16bpp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_MaskBlt.c_Test_MaskBlt_16bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"CreateDIBSection failed\0A\00", align 1
@SRCCOPY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"MaskBlt failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"pusBitsDst[0] == 0x%x\0A\00", align 1
@SRCPAINT = common dso_local global i32 0, align 4
@MERGEPAINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_MaskBlt_16bpp() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 4, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 8, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  %19 = load i32, i32* @BI_RGB, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 6
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 7
  store i32 10, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 8
  store i32 10, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 9
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 10
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 4, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 8, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  store i32 16, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 5
  %32 = load i32, i32* @BI_RGB, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 7
  store i32 10, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 8
  store i32 10, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 9
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 10
  store i32 0, i32* %37, align 4
  %38 = call i64 @CreateCompatibleDC(i32* null)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i32, i32* @DIB_RGB_COLORS, align 4
  %41 = bitcast i32** %9 to i32*
  %42 = call i64 @CreateDIBSection(i64 %39, %struct.TYPE_5__* %4, i32 %40, i32* %41, i32* null, i32 0)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %1, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @SelectObject(i64 %43, i64 %44)
  %46 = call i64 @CreateCompatibleDC(i32* null)
  store i64 %46, i64* %2, align 8
  %47 = load i64, i64* %2, align 8
  %48 = load i32, i32* @DIB_RGB_COLORS, align 4
  %49 = bitcast i32** %10 to i32*
  %50 = call i64 @CreateDIBSection(i64 %47, %struct.TYPE_5__* %4, i32 %48, i32* %49, i32* null, i32 0)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @SelectObject(i64 %51, i64 %52)
  %54 = load i64, i64* %2, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %0
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %56, %0
  %60 = phi i1 [ false, %0 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %63 = load i64, i64* %1, align 8
  %64 = load i32, i32* @DIB_RGB_COLORS, align 4
  %65 = bitcast i32** %8 to i32*
  %66 = call i64 @CreateDIBSection(i64 %63, %struct.TYPE_5__* %3, i32 %64, i32* %65, i32* null, i32 0)
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 4660, i32* %72, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 22136, i32* %74, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 17185, i32* %76, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 34661, i32* %78, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 128, i32* %80, align 4
  %81 = load i64, i64* %1, align 8
  %82 = load i64, i64* %2, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* @SRCCOPY, align 4
  %85 = call i32 @MAKEROP4(i32 %84, i32 11141120)
  %86 = call i32 @MaskBlt(i64 %81, i32 0, i32 0, i32 8, i32 1, i64 %82, i32 0, i32 0, i64 %83, i32 0, i32 0, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 1
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %11, align 4
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 17185
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 22136
  %105 = zext i1 %104 to i32
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 4660, i32* %111, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 22136, i32* %113, align 4
  %114 = load i64, i64* %1, align 8
  %115 = load i64, i64* %2, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i32, i32* @SRCPAINT, align 4
  %118 = load i32, i32* @MERGEPAINT, align 4
  %119 = call i32 @MAKEROP4(i32 %117, i32 %118)
  %120 = call i32 @MaskBlt(i64 %114, i32 0, i32 0, i32 8, i32 1, i64 %115, i32 0, i32 0, i64 %116, i32 0, i32 0, i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp eq i32 %121, 1
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %11, align 4
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 21301
  %130 = zext i1 %129 to i32
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 32506
  %139 = zext i1 %138 to i32
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  ret void
}

declare dso_local i64 @CreateCompatibleDC(i32*) #1

declare dso_local i64 @CreateDIBSection(i64, %struct.TYPE_5__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @SelectObject(i64, i64) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @MaskBlt(i64, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @MAKEROP4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
