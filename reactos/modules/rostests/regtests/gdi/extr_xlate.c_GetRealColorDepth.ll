; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/regtests/gdi/extr_xlate.c_GetRealColorDepth.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/regtests/gdi/extr_xlate.c_GetRealColorDepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.TYPE_2__, [3 x i32] }
%struct.TYPE_2__ = type { i32, i32, i32 }

@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@BMF_1BPP = common dso_local global i32 0, align 4
@BMF_4BPP = common dso_local global i32 0, align 4
@BMF_8BPP = common dso_local global i32 0, align 4
@BMF_16BPP_555 = common dso_local global i32 0, align 4
@BMF_16BPP_565 = common dso_local global i32 0, align 4
@BI_BITFIELDS = common dso_local global i32 0, align 4
@BMF_32BPP_RGB = common dso_local global i32 0, align 4
@BMF_32BPP_BGR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetRealColorDepth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.anon, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = ptrtoint %struct.anon* %4 to i32
  store i32 %7, i32* %5, align 4
  %8 = call i32 @GetDC(i32* null)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @CreateCompatibleBitmap(i32 %9, i32 1, i32 1)
  store i32 %10, i32* %2, align 4
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 12, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DIB_RGB_COLORS, align 4
  %17 = call i32 @GetDIBits(i32 %13, i32 %14, i32 0, i32 1, i32* null, i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DIB_RGB_COLORS, align 4
  %22 = call i32 @GetDIBits(i32 %18, i32 %19, i32 0, i32 1, i32* null, i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @DeleteObject(i32 %26)
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %61 [
    i32 1, label %29
    i32 4, label %31
    i32 8, label %33
    i32 16, label %35
    i32 24, label %44
    i32 32, label %46
  ]

29:                                               ; preds = %0
  %30 = load i32, i32* @BMF_1BPP, align 4
  store i32 %30, i32* %1, align 4
  br label %63

31:                                               ; preds = %0
  %32 = load i32, i32* @BMF_4BPP, align 4
  store i32 %32, i32* %1, align 4
  br label %63

33:                                               ; preds = %0
  %34 = load i32, i32* @BMF_8BPP, align 4
  store i32 %34, i32* %1, align 4
  br label %63

35:                                               ; preds = %0
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 31744
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @BMF_16BPP_555, align 4
  store i32 %41, i32* %1, align 4
  br label %63

42:                                               ; preds = %35
  %43 = load i32, i32* @BMF_16BPP_565, align 4
  store i32 %43, i32* %1, align 4
  br label %63

44:                                               ; preds = %0
  %45 = load i32, i32* @BMF_4BPP, align 4
  store i32 %45, i32* %1, align 4
  br label %63

46:                                               ; preds = %0
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BI_BITFIELDS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %53, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @BMF_32BPP_RGB, align 4
  store i32 %58, i32* %1, align 4
  br label %63

59:                                               ; preds = %52, %46
  %60 = load i32, i32* @BMF_32BPP_BGR, align 4
  store i32 %60, i32* %1, align 4
  br label %63

61:                                               ; preds = %0
  %62 = load i32, i32* @BMF_32BPP_RGB, align 4
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %61, %59, %57, %44, %42, %40, %33, %31, %29
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i32 @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @GetDIBits(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
