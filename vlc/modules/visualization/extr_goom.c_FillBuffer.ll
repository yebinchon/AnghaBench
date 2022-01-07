; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/extr_goom.c_FillBuffer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/extr_goom.c_FillBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i64, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, %struct.TYPE_7__*)* @FillBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FillBuffer(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca float*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %165, %5
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 512
  br i1 %18, label %19, label %166

19:                                               ; preds = %15
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %25, i32* %6, align 4
  br label %172

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %29, i64 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %13, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 512, %33
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %39, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @__MIN(i32 %34, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VLC_TICK_INVALID, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %26
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @date_Get(i32* %56)
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32*, i32** %10, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @date_Set(i32* %60, i64 %63)
  br label %65

65:                                               ; preds = %59, %52, %26
  %66 = load i64, i64* @VLC_TICK_INVALID, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @date_Increment(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %105, %65
  %73 = load i32, i32* %12, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %133

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to float*
  store float* %80, float** %14, align 8
  %81 = load float*, float** %14, align 8
  %82 = getelementptr inbounds float, float* %81, i64 0
  %83 = load float, float* %82, align 4
  %84 = call i32 @FloatToInt16(float %83)
  %85 = load i32*, i32** %7, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %84, i32* %89, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %105

94:                                               ; preds = %75
  %95 = load float*, float** %14, align 8
  %96 = getelementptr inbounds float, float* %95, i64 1
  %97 = load float, float* %96, align 4
  %98 = call i32 @FloatToInt16(float %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 512, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %94, %75
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 4, %112
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, %113
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 4, %123
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = sub i64 %128, %124
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 8
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %12, align 4
  br label %72

133:                                              ; preds = %72
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %165, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %140 = call i32 @block_Release(%struct.TYPE_8__* %139)
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %142, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %138
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %151, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %155, i64 1
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 @memmove(%struct.TYPE_8__** %152, %struct.TYPE_8__** %156, i32 %162)
  br label %164

164:                                              ; preds = %149, %138
  br label %165

165:                                              ; preds = %164, %133
  br label %15

166:                                              ; preds = %15
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %9, align 8
  store i32 %168, i32* %169, align 4
  %170 = load i32*, i32** %8, align 8
  store i32 0, i32* %170, align 4
  %171 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %166, %24
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i32 @date_Increment(i32*, i32) #1

declare dso_local i32 @FloatToInt16(float) #1

declare dso_local i32 @block_Release(%struct.TYPE_8__*) #1

declare dso_local i32 @memmove(%struct.TYPE_8__**, %struct.TYPE_8__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
