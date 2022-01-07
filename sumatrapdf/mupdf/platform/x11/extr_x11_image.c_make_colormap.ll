; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_image.c_make_colormap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_image.c_make_colormap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PseudoColor = common dso_local global i64 0, align 8
@DoRed = common dso_local global i32 0, align 4
@DoGreen = common dso_local global i32 0, align 4
@DoBlue = common dso_local global i32 0, align 4
@AllocAll = common dso_local global i32 0, align 4
@TrueColor = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Cannot handle visual class %d with depth: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @make_colormap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_colormap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 0, i32 0), align 8
  %6 = load i64, i64* @PseudoColor, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %89

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 0, i32 1), align 8
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %89

11:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %74, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %77

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %70, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %73

19:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %66, %19
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %69

23:                                               ; preds = %20
  %24 = load i32, i32* %1, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 2), align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* %2, align 4
  %31 = mul nsw i32 %30, 36
  %32 = shl i32 %31, 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 2), align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %32, i32* %37, align 4
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 %38, 36
  %40 = shl i32 %39, 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 2), align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = mul nsw i32 %46, 85
  %48 = shl i32 %47, 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 2), align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* @DoRed, align 4
  %55 = load i32, i32* @DoGreen, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @DoBlue, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 2), align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %66

66:                                               ; preds = %23
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %20

69:                                               ; preds = %20
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %16

73:                                               ; preds = %16
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %12

77:                                               ; preds = %12
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 3), align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 3), align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 4), align 4
  %81 = call i32 @RootWindow(i32 %79, i32 %80)
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 0, i32 2), align 4
  %83 = load i32, i32* @AllocAll, align 4
  %84 = call i64 @XCreateColormap(i32 %78, i32 %81, i32 %82, i32 %83)
  store i64 %84, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 1), align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 3), align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 1), align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 2), align 8
  %88 = call i32 @XStoreColors(i32 %85, i64 %86, %struct.TYPE_6__* %87, i32 256)
  br label %100

89:                                               ; preds = %8, %0
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 0, i32 0), align 8
  %91 = load i64, i64* @TrueColor, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 1), align 8
  br label %100

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* @stderr, align 4
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 0, i32 0), align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @info, i32 0, i32 0, i32 1), align 8
  %99 = call i32 @fprintf(i32 %96, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %93, %77
  ret void
}

declare dso_local i64 @XCreateColormap(i32, i32, i32, i32) #1

declare dso_local i32 @RootWindow(i32, i32) #1

declare dso_local i32 @XStoreColors(i32, i64, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
