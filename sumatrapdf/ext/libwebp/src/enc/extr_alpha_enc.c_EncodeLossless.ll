; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_alpha_enc.c_EncodeLossless.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_alpha_enc.c_EncodeLossless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32* }

@VP8_ENC_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, %struct.TYPE_15__*, i32*)* @EncodeLossless to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EncodeLossless(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_15__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__, align 4
  %18 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %19 = call i32 @WebPPictureInit(%struct.TYPE_13__* %18)
  %20 = load i32, i32* %10, align 4
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %11, align 4
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 5
  store i32* %25, i32** %26, align 8
  %27 = call i32 @WebPPictureAlloc(%struct.TYPE_13__* %18)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %96

30:                                               ; preds = %7
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WebPDispatchAlphaToGreen(i32* %31, i32 %32, i32 %34, i32 %36, i32 %38, i32 %40)
  %42 = call i32 @WebPConfigInit(%struct.TYPE_14__* %17)
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* %12, align 4
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %30
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, 6
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %57

53:                                               ; preds = %49, %30
  %54 = load i32, i32* %12, align 4
  %55 = sitofp i32 %54 to float
  %56 = fmul float 8.000000e+00, %55
  br label %57

57:                                               ; preds = %53, %52
  %58 = phi float [ 1.000000e+02, %52 ], [ %56, %53 ]
  %59 = fptosi float %58 to i32
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to float
  %68 = fcmp ole float %67, 1.000000e+02
  br label %69

69:                                               ; preds = %64, %57
  %70 = phi i1 [ false, %57 ], [ %68, %64 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %74 = call i64 @VP8LEncodeStream(%struct.TYPE_14__* %17, %struct.TYPE_13__* %18, %struct.TYPE_15__* %73, i32 0)
  %75 = load i64, i64* @VP8_ENC_OK, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %16, align 4
  %78 = call i32 @WebPPictureFree(%struct.TYPE_13__* %18)
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %69
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %81, %69
  %88 = phi i1 [ false, %69 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %94 = call i32 @VP8LBitWriterWipeOut(%struct.TYPE_15__* %93)
  store i32 0, i32* %8, align 4
  br label %96

95:                                               ; preds = %87
  store i32 1, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %92, %29
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i32 @WebPPictureInit(%struct.TYPE_13__*) #1

declare dso_local i32 @WebPPictureAlloc(%struct.TYPE_13__*) #1

declare dso_local i32 @WebPDispatchAlphaToGreen(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WebPConfigInit(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @VP8LEncodeStream(%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @WebPPictureFree(%struct.TYPE_13__*) #1

declare dso_local i32 @VP8LBitWriterWipeOut(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
