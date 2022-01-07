; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hercules.c_PrintGrafHercules.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hercules.c_PrintGrafHercules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@pScreenBufferHercules = common dso_local global i32 0, align 4
@cGraphTable = common dso_local global i32* null, align 8
@attr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@COLOR_FOREGROUND = common dso_local global i64 0, align 8
@COLOR_BACKGROUND = common dso_local global i64 0, align 8
@COLOR_CAPTION = common dso_local global i64 0, align 8
@COLOR_TEXT = common dso_local global i64 0, align 8
@pVgaOffset = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintGrafHercules(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 3
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @pScreenBufferHercules, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %94

15:                                               ; preds = %3
  %16 = load i32*, i32** @cGraphTable, align 8
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %8, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @attr, i32 0, i32 0, i32 0, i32 0), align 8
  %23 = load i64, i64* @COLOR_FOREGROUND, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @attr, i32 0, i32 0, i32 0, i32 1), align 8
  %27 = load i64, i64* @COLOR_BACKGROUND, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25, %15
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @attr, i32 0, i32 0, i32 0, i32 0), align 8
  %31 = load i64, i64* @COLOR_CAPTION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @attr, i32 0, i32 0, i32 0, i32 1), align 8
  %35 = load i64, i64* @COLOR_TEXT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %33, %25
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %60, %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %8, align 8
  %44 = load i32, i32* %42, align 4
  %45 = xor i32 %44, -1
  %46 = load i32*, i32** @pVgaOffset, align 8
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = ashr i32 %52, 2
  %54 = mul nsw i32 90, %53
  %55 = add nsw i32 %51, %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  store i32 %45, i32* %59, align 4
  br label %60

60:                                               ; preds = %41
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %38

65:                                               ; preds = %38
  br label %94

66:                                               ; preds = %33, %29
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %88, %66
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  %73 = load i32, i32* %71, align 4
  %74 = load i32*, i32** @pVgaOffset, align 8
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = ashr i32 %80, 2
  %82 = mul nsw i32 90, %81
  %83 = add nsw i32 %79, %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i32*
  store i32 %73, i32* %87, align 4
  br label %88

88:                                               ; preds = %70
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %67

93:                                               ; preds = %67
  br label %94

94:                                               ; preds = %14, %93, %65
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
