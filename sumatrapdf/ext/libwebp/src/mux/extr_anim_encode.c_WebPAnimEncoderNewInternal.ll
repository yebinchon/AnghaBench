; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_WebPAnimEncoderNewInternal.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_WebPAnimEncoderNewInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i32*, i32*, %struct.TYPE_12__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@WEBP_MUX_ABI_VERSION = common dso_local global i32 0, align 4
@MAX_IMAGE_AREA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @WebPAnimEncoderNewInternal(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @WEBP_MUX_ABI_VERSION, align 4
  %13 = call i64 @WEBP_ABI_IS_INCOMPATIBLE(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %178

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* @MAX_IMAGE_AREA, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %19, %16
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %178

29:                                               ; preds = %22
  %30 = call i64 @WebPSafeCalloc(i32 1, i32 128)
  %31 = inttoptr i64 %30 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %10, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %33 = icmp eq %struct.TYPE_13__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %178

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 9
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 8
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = call i32 @MarkNoError(%struct.TYPE_13__* %40)
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 15
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 14
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %35
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 10
  %55 = bitcast %struct.TYPE_12__* %54 to i32*
  store i32 %52, i32* %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 10
  %58 = bitcast %struct.TYPE_12__* %57 to i32*
  %59 = call i32 @SanitizeEncoderOptions(i32* %58)
  br label %65

60:                                               ; preds = %35
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 10
  %63 = bitcast %struct.TYPE_12__* %62 to i32*
  %64 = call i32 @DefaultEncoderOptions(i32* %63)
  br label %65

65:                                               ; preds = %60, %50
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 13
  %68 = call i32 @WebPPictureInit(%struct.TYPE_14__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 11
  %73 = call i32 @WebPPictureInit(%struct.TYPE_14__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 12
  %78 = call i32 @WebPPictureInit(%struct.TYPE_14__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75, %70, %65
  br label %175

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 13
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 13
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 13
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 13
  %95 = call i32 @WebPPictureAlloc(%struct.TYPE_14__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %81
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 13
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 11
  %102 = call i32 @WebPPictureCopy(%struct.TYPE_14__* %99, %struct.TYPE_14__* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 13
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 12
  %109 = call i32 @WebPPictureCopy(%struct.TYPE_14__* %106, %struct.TYPE_14__* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104, %97, %81
  br label %175

112:                                              ; preds = %104
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 11
  %115 = call i32 @WebPUtilClearPic(%struct.TYPE_14__* %114, i32* null)
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = call i32 @ResetCounters(%struct.TYPE_13__* %118)
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 10
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 10
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %123, %127
  %129 = add nsw i32 %128, 1
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %134, 2
  br i1 %135, label %136, label %139

136:                                              ; preds = %112
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  store i32 2, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %112
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @WebPSafeCalloc(i32 %142, i32 4)
  %144 = inttoptr i64 %143 to i32*
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 9
  store i32* %144, i32** %146, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 9
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  br label %175

152:                                              ; preds = %139
  %153 = call i32* (...) @WebPMuxNew()
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 8
  store i32* %153, i32** %155, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 8
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %175

161:                                              ; preds = %152
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 7
  store i64 0, i64* %163, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 6
  store i64 0, i64* %165, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 5
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 4
  store i64 0, i64* %169, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  store i32 1, i32* %171, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %174, %struct.TYPE_13__** %5, align 8
  br label %178

175:                                              ; preds = %160, %151, %111, %80
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %177 = call i32 @WebPAnimEncoderDelete(%struct.TYPE_13__* %176)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %178

178:                                              ; preds = %175, %161, %34, %28, %15
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  ret %struct.TYPE_13__* %179
}

declare dso_local i64 @WEBP_ABI_IS_INCOMPATIBLE(i32, i32) #1

declare dso_local i64 @WebPSafeCalloc(i32, i32) #1

declare dso_local i32 @MarkNoError(%struct.TYPE_13__*) #1

declare dso_local i32 @SanitizeEncoderOptions(i32*) #1

declare dso_local i32 @DefaultEncoderOptions(i32*) #1

declare dso_local i32 @WebPPictureInit(%struct.TYPE_14__*) #1

declare dso_local i32 @WebPPictureAlloc(%struct.TYPE_14__*) #1

declare dso_local i32 @WebPPictureCopy(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @WebPUtilClearPic(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @ResetCounters(%struct.TYPE_13__*) #1

declare dso_local i32* @WebPMuxNew(...) #1

declare dso_local i32 @WebPAnimEncoderDelete(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
