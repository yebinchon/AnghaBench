; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_DecodeInto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_DecodeInto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_30__ = type { i32, i32, i32, i32* }
%struct.TYPE_27__ = type { i64, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_31__ = type { i64, i32, i32, i32 }
%struct.TYPE_29__ = type { i64 }

@VP8_STATUS_OK = common dso_local global i64 0, align 8
@VP8_STATUS_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, %struct.TYPE_28__*)* @DecodeInto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DecodeInto(i32* %0, i64 %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_30__, align 8
  %10 = alloca %struct.TYPE_27__, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 6
  store i32* %13, i32** %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 1
  store i32 1, i32* %17, align 8
  %18 = call i64 @WebPParseHeaders(%struct.TYPE_27__* %10)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @VP8_STATUS_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %4, align 8
  br label %186

24:                                               ; preds = %3
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %26 = icmp ne %struct.TYPE_28__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 @VP8InitIo(%struct.TYPE_30__* %9)
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 3
  store i32* %35, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %38, %41
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %46 = call i32 @WebPInitCustomIo(%struct.TYPE_28__* %45, %struct.TYPE_30__* %9)
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %115, label %50

50:                                               ; preds = %24
  %51 = call %struct.TYPE_31__* (...) @VP8New()
  store %struct.TYPE_31__* %51, %struct.TYPE_31__** %11, align 8
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %53 = icmp eq %struct.TYPE_31__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* @VP8_STATUS_OUT_OF_MEMORY, align 8
  store i64 %55, i64* %4, align 8
  br label %186

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %66 = call i32 @VP8GetHeaders(%struct.TYPE_31__* %65, %struct.TYPE_30__* %9)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %56
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %8, align 8
  br label %112

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %78, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @WebPAllocateDecBuffer(i32 %74, i32 %76, %struct.TYPE_32__* %79, i32 %82)
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @VP8_STATUS_OK, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %72
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @VP8GetThreadMethod(%struct.TYPE_32__* %90, %struct.TYPE_27__* %10, i32 %92, i32 %94)
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %99, align 8
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %102 = call i32 @VP8InitDithering(%struct.TYPE_32__* %100, %struct.TYPE_31__* %101)
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %104 = call i32 @VP8Decode(%struct.TYPE_31__* %103, %struct.TYPE_30__* %9)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %87
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %8, align 8
  br label %110

110:                                              ; preds = %106, %87
  br label %111

111:                                              ; preds = %110, %72
  br label %112

112:                                              ; preds = %111, %68
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %114 = call i32 @VP8Delete(%struct.TYPE_31__* %113)
  br label %157

115:                                              ; preds = %24
  %116 = call %struct.TYPE_29__* (...) @VP8LNew()
  store %struct.TYPE_29__* %116, %struct.TYPE_29__** %12, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %118 = icmp eq %struct.TYPE_29__* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i64, i64* @VP8_STATUS_OUT_OF_MEMORY, align 8
  store i64 %120, i64* %4, align 8
  br label %186

121:                                              ; preds = %115
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %123 = call i32 @VP8LDecodeHeader(%struct.TYPE_29__* %122, %struct.TYPE_30__* %9)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %8, align 8
  br label %154

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %135, align 8
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @WebPAllocateDecBuffer(i32 %131, i32 %133, %struct.TYPE_32__* %136, i32 %139)
  store i64 %140, i64* %8, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* @VP8_STATUS_OK, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %129
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %146 = call i32 @VP8LDecodeImage(%struct.TYPE_29__* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %8, align 8
  br label %152

152:                                              ; preds = %148, %144
  br label %153

153:                                              ; preds = %152, %129
  br label %154

154:                                              ; preds = %153, %125
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %156 = call i32 @VP8LDelete(%struct.TYPE_29__* %155)
  br label %157

157:                                              ; preds = %154, %112
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* @VP8_STATUS_OK, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @WebPFreeDecBuffer(i32 %164)
  br label %184

166:                                              ; preds = %157
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %168, align 8
  %170 = icmp ne %struct.TYPE_32__* %169, null
  br i1 %170, label %171, label %183

171:                                              ; preds = %166
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %171
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @WebPFlipBuffer(i32 %181)
  store i64 %182, i64* %8, align 8
  br label %183

183:                                              ; preds = %178, %171, %166
  br label %184

184:                                              ; preds = %183, %161
  %185 = load i64, i64* %8, align 8
  store i64 %185, i64* %4, align 8
  br label %186

186:                                              ; preds = %184, %119, %54, %22
  %187 = load i64, i64* %4, align 8
  ret i64 %187
}

declare dso_local i64 @WebPParseHeaders(%struct.TYPE_27__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VP8InitIo(%struct.TYPE_30__*) #1

declare dso_local i32 @WebPInitCustomIo(%struct.TYPE_28__*, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_31__* @VP8New(...) #1

declare dso_local i32 @VP8GetHeaders(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i64 @WebPAllocateDecBuffer(i32, i32, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @VP8GetThreadMethod(%struct.TYPE_32__*, %struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @VP8InitDithering(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @VP8Decode(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @VP8Delete(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_29__* @VP8LNew(...) #1

declare dso_local i32 @VP8LDecodeHeader(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @VP8LDecodeImage(%struct.TYPE_29__*) #1

declare dso_local i32 @VP8LDelete(%struct.TYPE_29__*) #1

declare dso_local i32 @WebPFreeDecBuffer(i32) #1

declare dso_local i64 @WebPFlipBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
