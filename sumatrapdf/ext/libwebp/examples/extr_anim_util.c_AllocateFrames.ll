; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_util.c_AllocateFrames.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_util.c_AllocateFrames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_6__* }

@kNumChannels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64)* @AllocateFrames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocateFrames(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @kNumChannels, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %17, %20
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %5, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 24
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @CheckSizeForOverflow(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @CheckSizeForOverflow(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %2
  store i32 0, i32* %3, align 4
  br label %102

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = call i64 @WebPMalloc(i64 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = call i64 @WebPMalloc(i64 %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %8, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = icmp eq %struct.TYPE_6__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = icmp eq %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53, %42
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = call i32 @WebPFree(%struct.TYPE_6__* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = call i32 @WebPFree(%struct.TYPE_6__* %59)
  store i32 0, i32* %3, align 4
  br label %102

61:                                               ; preds = %53
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call i32 @WebPFree(%struct.TYPE_6__* %64)
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %71, align 8
  store i64 0, i64* %6, align 8
  br label %72

72:                                               ; preds = %95, %61
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %78, %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %76
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %6, align 8
  br label %72

98:                                               ; preds = %72
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %101, align 8
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %56, %41
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @CheckSizeForOverflow(i32) #1

declare dso_local i64 @WebPMalloc(i64) #1

declare dso_local i32 @WebPFree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
