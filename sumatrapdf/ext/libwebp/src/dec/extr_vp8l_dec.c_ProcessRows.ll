; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8l_dec.c_ProcessRows.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8l_dec.c_ProcessRows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_14__*, i64, %struct.TYPE_16__*, i32* }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64 }

@NUM_ARGB_CACHE_ROWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32)* @ProcessRows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessRows(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 7
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %16, i64 %24
  store i32* %25, i32** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %31, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NUM_ARGB_CACHE_ROWS, align 4
  %42 = icmp sle i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %182

47:                                               ; preds = %2
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %7, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %8, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %9, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @ApplyInverseTransforms(%struct.TYPE_15__* %61, i32 %64, i32 %65, i32* %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @SetCropWindow(%struct.TYPE_16__* %68, i32 %71, i32 %72, i32** %8, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %47
  br label %181

77:                                               ; preds = %47
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %10, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @WebPIsRGBMode(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %142

86:                                               ; preds = %77
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %11, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %92, i64 %100
  store i32* %101, i32** %12, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %86
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @EmitRescaledRowsRGBA(%struct.TYPE_15__* %107, i32* %108, i32 %109, i32 %112, i32* %113, i32 %116)
  br label %135

118:                                              ; preds = %86
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @EmitRows(i32 %121, i32* %122, i32 %123, i32 %126, i32 %129, i32* %130, i32 %133)
  br label %135

135:                                              ; preds = %118, %106
  %136 = phi i32 [ %117, %106 ], [ %134, %118 ]
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %170

142:                                              ; preds = %77
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @EmitRescaledRowsYUVA(%struct.TYPE_15__* %148, i32* %149, i32 %150, i32 %153)
  br label %166

155:                                              ; preds = %142
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @EmitRowsYUVA(%struct.TYPE_15__* %156, i32* %157, i32 %158, i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %155, %147
  %167 = phi i32 [ %154, %147 ], [ %165, %155 ]
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %166, %135
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp sle i64 %174, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  br label %181

181:                                              ; preds = %170, %76
  br label %182

182:                                              ; preds = %181, %2
  %183 = load i32, i32* %4, align 4
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = icmp sle i32 %188, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ApplyInverseTransforms(%struct.TYPE_15__*, i32, i32, i32*) #1

declare dso_local i32 @SetCropWindow(%struct.TYPE_16__*, i32, i32, i32**, i32) #1

declare dso_local i64 @WebPIsRGBMode(i32) #1

declare dso_local i32 @EmitRescaledRowsRGBA(%struct.TYPE_15__*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @EmitRows(i32, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @EmitRescaledRowsYUVA(%struct.TYPE_15__*, i32*, i32, i32) #1

declare dso_local i32 @EmitRowsYUVA(%struct.TYPE_15__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
