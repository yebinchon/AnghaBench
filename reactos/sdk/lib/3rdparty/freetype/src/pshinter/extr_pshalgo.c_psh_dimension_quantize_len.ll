; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pshinter/extr_pshalgo.c_psh_dimension_quantize_len.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pshinter/extr_pshalgo.c_psh_dimension_quantize_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i64)* @psh_dimension_quantize_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psh_dimension_quantize_len(%struct.TYPE_7__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 64
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 64, i32* %5, align 4
  br label %78

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %12, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %11
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 40
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 48
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 48, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %29
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 192
  br i1 %43, label %44, label %74

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 63
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, -64
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 10
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %73

55:                                               ; preds = %44
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 32
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 10
  store i32 %60, i32* %5, align 4
  br label %72

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 54
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 54
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72, %51
  br label %77

74:                                               ; preds = %41
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @FT_PIX_ROUND(i32 %75)
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %73
  br label %78

78:                                               ; preds = %77, %10
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @FT_PIX_ROUND(i32 %82)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @FT_PIX_ROUND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
