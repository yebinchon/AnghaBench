; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hercules.c_PrintCursorHercules.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hercules.c_PrintCursorHercules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@PrintCursorHercules.count = internal global i32 0, align 4
@bCursorEnabled = common dso_local global i64 0, align 8
@wWindow = common dso_local global %struct.TYPE_2__* null, align 8
@OUTPUT_WINDOW = common dso_local global i64 0, align 8
@pVgaOffset = common dso_local global i32* null, align 8
@bRev = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintCursorHercules(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @PrintCursorHercules.count, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @PrintCursorHercules.count, align 4
  %12 = icmp sgt i32 %10, 100
  br i1 %12, label %13, label %65

13:                                               ; preds = %9
  %14 = load i64, i64* @bCursorEnabled, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %65

16:                                               ; preds = %13, %1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %18 = load i64, i64* @OUTPUT_WINDOW, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %23 = load i64, i64* @OUTPUT_WINDOW, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %28 = load i64, i64* @OUTPUT_WINDOW, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %26, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 3
  store i32 %34, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %55, %16
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load i32*, i32** @pVgaOffset, align 8
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 2
  %47 = mul nsw i32 90, %46
  %48 = add nsw i32 %44, %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, 255
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %35

60:                                               ; preds = %35
  %61 = load i32, i32* @bRev, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* @bRev, align 4
  store i32 0, i32* @PrintCursorHercules.count, align 4
  br label %65

65:                                               ; preds = %60, %13, %9
  %66 = call i32 @KeStallExecutionProcessor(i32 2500)
  ret void
}

declare dso_local i32 @KeStallExecutionProcessor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
