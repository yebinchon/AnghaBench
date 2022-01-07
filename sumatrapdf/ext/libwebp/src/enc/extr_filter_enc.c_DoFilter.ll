; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_filter_enc.c_DoFilter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_filter_enc.c_DoFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@Y_OFF_ENC = common dso_local global i32 0, align 4
@U_OFF_ENC = common dso_local global i32 0, align 4
@V_OFF_ENC = common dso_local global i32 0, align 4
@YUV_SIZE_ENC = common dso_local global i32 0, align 4
@BPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @DoFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoFilter(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @GetILevel(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 2, %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @Y_OFF_ENC, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %8, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @U_OFF_ENC, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %9, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @V_OFF_ENC, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @YUV_SIZE_ENC, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memcpy(i32* %44, i32 %47, i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %67

58:                                               ; preds = %2
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* @BPS, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @VP8SimpleHFilter16i(i32* %59, i32 %60, i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @BPS, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @VP8SimpleVFilter16i(i32* %63, i32 %64, i32 %65)
  br label %104

67:                                               ; preds = %2
  %68 = load i32, i32* %4, align 4
  %69 = icmp sge i32 %68, 40
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = icmp sge i32 %72, 15
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  br label %76

76:                                               ; preds = %71, %70
  %77 = phi i32 [ 2, %70 ], [ %75, %71 ]
  store i32 %77, i32* %11, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* @BPS, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @VP8HFilter16i(i32* %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32*, i32** %9, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* @BPS, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @VP8HFilter8i(i32* %84, i32* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* @BPS, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @VP8VFilter16i(i32* %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* @BPS, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @VP8VFilter8i(i32* %97, i32* %98, i32 %99, i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %76, %58
  ret void
}

declare dso_local i32 @GetILevel(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @VP8SimpleHFilter16i(i32*, i32, i32) #1

declare dso_local i32 @VP8SimpleVFilter16i(i32*, i32, i32) #1

declare dso_local i32 @VP8HFilter16i(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VP8HFilter8i(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VP8VFilter16i(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VP8VFilter8i(i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
