; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_send_opencv_img.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_send_opencv_img.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@__const.send_opencv_img.strides = private unnamed_addr constant [3 x i32] [i32 1280, i32 640, i32 640], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_opencv_img(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca [3 x i32*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %19 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([3 x i32]* @__const.send_opencv_img.strides to i8*), i64 12, i1 false)
  %20 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = call i32* @malloc(i32 %27)
  store i32* %28, i32** %20, align 8
  %29 = getelementptr inbounds i32*, i32** %20, i64 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = sdiv i32 %36, 4
  %38 = call i32* @malloc(i32 %37)
  store i32* %38, i32** %29, align 8
  %39 = getelementptr inbounds i32*, i32** %29, i64 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = sdiv i32 %46, 4
  %48 = call i32* @malloc(i32 %47)
  store i32* %48, i32** %39, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %175, %3
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %178

55:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %171, %55
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %174

62:                                               ; preds = %56
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = add nsw i32 %66, %71
  %73 = mul nsw i32 %72, 3
  %74 = add nsw i32 %73, 0
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %65, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %13, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %82, %85
  %87 = add nsw i32 %81, %86
  %88 = mul nsw i32 %87, 3
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %80, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %14, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %97, %100
  %102 = add nsw i32 %96, %101
  %103 = mul nsw i32 %102, 3
  %104 = add nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %95, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @RGB2Y(i32 %108, i32 %109, i32 %110)
  %112 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %113 = load i32*, i32** %112, align 16
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %115, %117
  %119 = add nsw i32 %114, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %113, i64 %120
  store i32 %111, i32* %121, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %9, align 4
  %124 = shl i32 1, %123
  %125 = srem i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %170, label %127

127:                                              ; preds = %62
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %10, align 4
  %130 = shl i32 1, %129
  %131 = srem i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %170, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %9, align 4
  %136 = shl i32 1, %135
  %137 = sdiv i32 %134, %136
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %10, align 4
  %140 = shl i32 1, %139
  %141 = sdiv i32 %138, %140
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @RGB2U(i32 %142, i32 %143, i32 %144)
  %146 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %17, align 4
  %150 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %149, %151
  %153 = add nsw i32 %148, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %147, i64 %154
  store i32 %145, i32* %155, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @RGB2V(i32 %156, i32 %157, i32 %158)
  %160 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 2
  %161 = load i32*, i32** %160, align 16
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %17, align 4
  %164 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %163, %165
  %167 = add nsw i32 %162, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %161, i64 %168
  store i32 %159, i32* %169, align 4
  br label %170

170:                                              ; preds = %133, %127, %62
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %56

174:                                              ; preds = %56
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  br label %49

178:                                              ; preds = %49
  %179 = load i32*, i32** %4, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %188 = load i32*, i32** %187, align 16
  %189 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 2
  %192 = load i32*, i32** %191, align 16
  %193 = call i32 @toxav_video_send_frame(i32* %179, i32 %180, i32 %183, i32 %186, i32* %188, i32* %190, i32* %192, i32* null)
  store i32 %193, i32* %18, align 4
  %194 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %195 = load i32*, i32** %194, align 16
  %196 = call i32 @free(i32* %195)
  %197 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 1
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @free(i32* %198)
  %200 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 2
  %201 = load i32*, i32** %200, align 16
  %202 = call i32 @free(i32* %201)
  %203 = load i32, i32* %18, align 4
  ret i32 %203
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @RGB2Y(i32, i32, i32) #2

declare dso_local i32 @RGB2U(i32, i32, i32) #2

declare dso_local i32 @RGB2V(i32, i32, i32) #2

declare dso_local i32 @toxav_video_send_frame(i32*, i32, i32, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
