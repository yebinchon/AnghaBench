; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/starfield/extr_screensaver.c_DrawStarField.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/starfield/extr_screensaver.c_DrawStarField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }

@m_nTotStars = common dso_local global i32 0, align 4
@stars = common dso_local global %struct.TYPE_2__* null, align 8
@m_nCenterX = common dso_local global i64 0, align 8
@m_nCenterY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DrawStarField(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %77, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @m_nTotStars, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %80

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stars, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stars, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @RGB(i32 0, i32 0, i32 0)
  %25 = call i32 @SetPixel(i32 %11, i32 %17, i32 %23, i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stars, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = shl i64 %31, 7
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stars, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = sdiv i64 %32, %38
  %40 = load i64, i64* @m_nCenterX, align 8
  %41 = add nsw i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %3, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stars, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = shl i64 %48, 7
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stars, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sdiv i64 %49, %55
  %57 = load i64, i64* @m_nCenterY, align 8
  %58 = add nsw i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @RGB(i32 255, i32 255, i32 255)
  %64 = call i32 @SetPixel(i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stars, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stars, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %10
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %6

80:                                               ; preds = %6
  ret void
}

declare dso_local i32 @SetPixel(i32, i32, i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
