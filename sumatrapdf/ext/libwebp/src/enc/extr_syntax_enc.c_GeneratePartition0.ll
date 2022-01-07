; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_syntax_enc.c_GeneratePartition0.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_syntax_enc.c_GeneratePartition0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_21__*, i64, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32*, i32 }
%struct.TYPE_20__ = type { i64 }

@VP8_ENC_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @GeneratePartition0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GeneratePartition0(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 7
  store %struct.TYPE_20__* %10, %struct.TYPE_20__** %4, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = call i32 @VP8BitWriterPos(%struct.TYPE_20__* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 7
  %23 = sdiv i32 %22, 8
  %24 = call i32 @VP8BitWriterInit(%struct.TYPE_20__* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  %31 = call i32 @WebPEncodingSetError(%struct.TYPE_21__* %29, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %140

32:                                               ; preds = %1
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = call i32 @VP8PutBitUniform(%struct.TYPE_20__* %33, i32 0)
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %36 = call i32 @VP8PutBitUniform(%struct.TYPE_20__* %35, i32 0)
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = call i32 @PutSegmentHeader(%struct.TYPE_20__* %37, %struct.TYPE_19__* %38)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 6
  %43 = call i32 @PutFilterHeader(%struct.TYPE_20__* %40, i32* %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  br label %65

50:                                               ; preds = %32
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %63

56:                                               ; preds = %50
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 2
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  br label %63

63:                                               ; preds = %56, %55
  %64 = phi i32 [ 2, %55 ], [ %62, %56 ]
  br label %65

65:                                               ; preds = %63, %49
  %66 = phi i32 [ 3, %49 ], [ %64, %63 ]
  %67 = call i32 @VP8PutBits(%struct.TYPE_20__* %44, i32 %66, i32 2)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = call i32 @PutQuant(%struct.TYPE_20__* %68, %struct.TYPE_19__* %69)
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = call i32 @VP8PutBitUniform(%struct.TYPE_20__* %71, i32 0)
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 5
  %76 = call i32 @VP8WriteProbas(%struct.TYPE_20__* %73, i32* %75)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %78 = call i32 @VP8BitWriterPos(%struct.TYPE_20__* %77)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %80 = call i32 @VP8CodeIntraModes(%struct.TYPE_19__* %79)
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = call i32 @VP8BitWriterFinish(%struct.TYPE_20__* %81)
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = call i32 @VP8BitWriterPos(%struct.TYPE_20__* %83)
  store i32 %84, i32* %8, align 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = icmp ne %struct.TYPE_18__* %89, null
  br i1 %90, label %91, label %128

91:                                               ; preds = %65
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %92, %93
  %95 = add nsw i32 %94, 7
  %96 = ashr i32 %95, 3
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %96, i32* %104, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %105, %106
  %108 = add nsw i32 %107, 7
  %109 = ashr i32 %108, 3
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 %109, i32* %117, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  store i32 %121, i32* %127, align 8
  br label %128

128:                                              ; preds = %91, %65
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  %137 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  %138 = call i32 @WebPEncodingSetError(%struct.TYPE_21__* %136, i32 %137)
  store i32 %138, i32* %2, align 4
  br label %140

139:                                              ; preds = %128
  store i32 1, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %133, %26
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @VP8BitWriterPos(%struct.TYPE_20__*) #1

declare dso_local i32 @VP8BitWriterInit(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @WebPEncodingSetError(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @VP8PutBitUniform(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @PutSegmentHeader(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @PutFilterHeader(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @VP8PutBits(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @PutQuant(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @VP8WriteProbas(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @VP8CodeIntraModes(%struct.TYPE_19__*) #1

declare dso_local i32 @VP8BitWriterFinish(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
