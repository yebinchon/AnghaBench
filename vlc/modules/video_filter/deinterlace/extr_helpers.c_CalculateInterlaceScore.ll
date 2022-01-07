; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_helpers.c_CalculateInterlaceScore.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_helpers.c_CalculateInterlaceScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i64*, i32 }

@T = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CalculateInterlaceScore(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %209

41:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %204, %41
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %207

49:                                               ; preds = %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %57, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %209

68:                                               ; preds = %49
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @FFMIN(i32 %85, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %10, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %96, %struct.TYPE_8__** %11, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %12, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %113

113:                                              ; preds = %200, %68
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %203

117:                                              ; preds = %113
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %12, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %125, i64 %129
  store i64* %130, i64** %15, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sub nsw i32 %139, 1
  %141 = load i32, i32* %13, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %138, i64 %143
  store i64* %144, i64** %16, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* %13, align 4
  %156 = mul nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %152, i64 %157
  store i64* %158, i64** %17, align 8
  store i32 0, i32* %18, align 4
  br label %159

159:                                              ; preds = %190, %117
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %193

163:                                              ; preds = %159
  %164 = load i64*, i64** %15, align 8
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %19, align 8
  %166 = load i64*, i64** %16, align 8
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %20, align 8
  %168 = load i64*, i64** %17, align 8
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %21, align 8
  %170 = load i64, i64* %20, align 8
  %171 = load i64, i64* %19, align 8
  %172 = sub nsw i64 %170, %171
  %173 = load i64, i64* %21, align 8
  %174 = load i64, i64* %19, align 8
  %175 = sub nsw i64 %173, %174
  %176 = mul nsw i64 %172, %175
  store i64 %176, i64* %22, align 8
  %177 = load i64, i64* %22, align 8
  %178 = load i64, i64* @T, align 8
  %179 = icmp sgt i64 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %163
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %180, %163
  %184 = load i64*, i64** %15, align 8
  %185 = getelementptr inbounds i64, i64* %184, i32 1
  store i64* %185, i64** %15, align 8
  %186 = load i64*, i64** %16, align 8
  %187 = getelementptr inbounds i64, i64* %186, i32 1
  store i64* %187, i64** %16, align 8
  %188 = load i64*, i64** %17, align 8
  %189 = getelementptr inbounds i64, i64* %188, i32 1
  store i64* %189, i64** %17, align 8
  br label %190

190:                                              ; preds = %183
  %191 = load i32, i32* %18, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %18, align 4
  br label %159

193:                                              ; preds = %159
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %194, %struct.TYPE_8__** %23, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %195, %struct.TYPE_8__** %10, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %196, %struct.TYPE_8__** %11, align 8
  %197 = load i32, i32* %12, align 4
  store i32 %197, i32* %24, align 4
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %24, align 4
  store i32 %199, i32* %13, align 4
  br label %200

200:                                              ; preds = %193
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %14, align 4
  br label %113

203:                                              ; preds = %113
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %7, align 4
  br label %42

207:                                              ; preds = %42
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %207, %67, %40
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
