; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_frame_dec.c_DoFilter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_frame_dec.c_DoFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @DoFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoFilter(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %10, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %35, 16
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 16
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32* %44, i32** %11, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %12, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %3
  br label %211

54:                                               ; preds = %3
  %55 = load i32, i32* %13, align 4
  %56 = icmp sge i32 %55, 3
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %102

63:                                               ; preds = %54
  %64 = load i32, i32* %5, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 4
  %71 = call i32 @VP8SimpleHFilter16(i32* %67, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @VP8SimpleHFilter16i(i32* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %6, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 4
  %90 = call i32 @VP8SimpleVFilter16(i32* %86, i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @VP8SimpleVFilter16i(i32* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %91
  br label %211

102:                                              ; preds = %54
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %14, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = mul nsw i32 %109, 8
  %111 = load i32, i32* %14, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %108, i64 %113
  %115 = load i32, i32* %5, align 4
  %116 = mul nsw i32 %115, 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32* %118, i32** %15, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = mul nsw i32 %122, 8
  %124 = load i32, i32* %14, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32, i32* %5, align 4
  %129 = mul nsw i32 %128, 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32* %131, i32** %16, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %102
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @VP8HFilter16(i32* %138, i32 %139, i32 %141, i32 %142, i32 %143)
  %145 = load i32*, i32** %15, align 8
  %146 = load i32*, i32** %16, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @VP8HFilter8(i32* %145, i32* %146, i32 %147, i32 %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %137, %102
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @VP8HFilter16i(i32* %159, i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32*, i32** %15, align 8
  %166 = load i32*, i32** %16, align 8
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @VP8HFilter8i(i32* %165, i32* %166, i32 %167, i32 %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %158, %153
  %173 = load i32, i32* %6, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %172
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 4
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %17, align 4
  %182 = call i32 @VP8VFilter16(i32* %176, i32 %177, i32 %179, i32 %180, i32 %181)
  %183 = load i32*, i32** %15, align 8
  %184 = load i32*, i32** %16, align 8
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, 4
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %17, align 4
  %190 = call i32 @VP8VFilter8(i32* %183, i32* %184, i32 %185, i32 %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %175, %172
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %191
  %197 = load i32*, i32** %11, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %17, align 4
  %202 = call i32 @VP8VFilter16i(i32* %197, i32 %198, i32 %199, i32 %200, i32 %201)
  %203 = load i32*, i32** %15, align 8
  %204 = load i32*, i32** %16, align 8
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %17, align 4
  %209 = call i32 @VP8VFilter8i(i32* %203, i32* %204, i32 %205, i32 %206, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %196, %191
  br label %211

211:                                              ; preds = %53, %210, %101
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VP8SimpleHFilter16(i32*, i32, i32) #1

declare dso_local i32 @VP8SimpleHFilter16i(i32*, i32, i32) #1

declare dso_local i32 @VP8SimpleVFilter16(i32*, i32, i32) #1

declare dso_local i32 @VP8SimpleVFilter16i(i32*, i32, i32) #1

declare dso_local i32 @VP8HFilter16(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VP8HFilter8(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VP8HFilter16i(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VP8HFilter8i(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VP8VFilter16(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VP8VFilter8(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VP8VFilter16i(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VP8VFilter8i(i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
