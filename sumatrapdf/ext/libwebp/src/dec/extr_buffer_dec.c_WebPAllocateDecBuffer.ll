; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_buffer_dec.c_WebPAllocateDecBuffer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_buffer_dec.c_WebPAllocateDecBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@VP8_STATUS_INVALID_PARAM = common dso_local global i64 0, align 8
@VP8_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WebPAllocateDecBuffer(i32 %0, i32 %1, %struct.TYPE_7__* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19, %4
  %26 = load i64, i64* @VP8_STATUS_INVALID_PARAM, align 8
  store i64 %26, i64* %5, align 8
  br label %127

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %100

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %11, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, -2
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, -2
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67, %61, %58, %55, %52, %35
  %74 = load i64, i64* @VP8_STATUS_INVALID_PARAM, align 8
  store i64 %74, i64* %5, align 8
  br label %127

75:                                               ; preds = %67
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %30
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %78
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %15, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @WebPRescalerGetScaledDimensions(i32 %90, i32 %91, i32* %15, i32* %16)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %83
  %95 = load i64, i64* @VP8_STATUS_INVALID_PARAM, align 8
  store i64 %95, i64* %5, align 8
  br label %127

96:                                               ; preds = %83
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %96, %78
  br label %100

100:                                              ; preds = %99, %27
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %108 = call i64 @AllocateBuffer(%struct.TYPE_8__* %107)
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* @VP8_STATUS_OK, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = load i64, i64* %10, align 8
  store i64 %113, i64* %5, align 8
  br label %127

114:                                              ; preds = %100
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = icmp ne %struct.TYPE_7__* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %124 = call i64 @WebPFlipBuffer(%struct.TYPE_8__* %123)
  store i64 %124, i64* %10, align 8
  br label %125

125:                                              ; preds = %122, %117, %114
  %126 = load i64, i64* %10, align 8
  store i64 %126, i64* %5, align 8
  br label %127

127:                                              ; preds = %125, %112, %94, %73, %25
  %128 = load i64, i64* %5, align 8
  ret i64 %128
}

declare dso_local i32 @WebPRescalerGetScaledDimensions(i32, i32, i32*, i32*) #1

declare dso_local i64 @AllocateBuffer(%struct.TYPE_8__*) #1

declare dso_local i64 @WebPFlipBuffer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
