; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_mirror.c_YUV422VerticalMirror.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_mirror.c_YUV422VerticalMirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32)* @YUV422VerticalMirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @YUV422VerticalMirror(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %34, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %26, i64 %44
  store i32* %45, i32** %12, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %15, align 8
  br label %54

54:                                               ; preds = %174, %5
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = icmp ult i32* %55, %56
  br i1 %57, label %58, label %215

58:                                               ; preds = %54
  %59 = load i32*, i32** %11, align 8
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %60, i64 %69
  store i32* %70, i32** %14, align 8
  br label %71

71:                                               ; preds = %173, %58
  %72 = load i32*, i32** %11, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = icmp ult i32* %72, %73
  br i1 %74, label %75, label %174

75:                                               ; preds = %71
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = ptrtoint i32* %78 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = sdiv i64 %83, 2
  %85 = getelementptr inbounds i32, i32* %77, i64 %84
  %86 = icmp ult i32* %76, %85
  br i1 %86, label %87, label %130

87:                                               ; preds = %75
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %11, align 8
  %93 = load i32, i32* %91, align 4
  %94 = load i32*, i32** %15, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %15, align 8
  store i32 %93, i32* %94, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %11, align 8
  %98 = load i32, i32* %96, align 4
  %99 = load i32*, i32** %15, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %15, align 8
  store i32 %98, i32* %99, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %11, align 8
  %103 = load i32, i32* %101, align 4
  %104 = load i32*, i32** %15, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %15, align 8
  store i32 %103, i32* %104, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %11, align 8
  %108 = load i32, i32* %106, align 4
  %109 = load i32*, i32** %15, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %15, align 8
  store i32 %108, i32* %109, align 4
  br label %129

111:                                              ; preds = %87
  %112 = load i32*, i32** %14, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = ptrtoint i32* %113 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = sub i64 0, %118
  %120 = getelementptr inbounds i32, i32* %112, i64 %119
  store i32* %120, i32** %16, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @YUV422Mirror2Pixels(i32* %121, i32* %122, i32 %123)
  %125 = load i32*, i32** %11, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  store i32* %126, i32** %11, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  store i32* %128, i32** %15, align 8
  br label %129

129:                                              ; preds = %111, %90
  br label %173

130:                                              ; preds = %75
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %130
  %134 = load i32*, i32** %14, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** %13, align 8
  %137 = ptrtoint i32* %135 to i64
  %138 = ptrtoint i32* %136 to i64
  %139 = sub i64 %137, %138
  %140 = sdiv exact i64 %139, 4
  %141 = sub i64 0, %140
  %142 = getelementptr inbounds i32, i32* %134, i64 %141
  store i32* %142, i32** %17, align 8
  %143 = load i32*, i32** %15, align 8
  %144 = load i32*, i32** %17, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @YUV422Mirror2Pixels(i32* %143, i32* %144, i32 %145)
  %147 = load i32*, i32** %11, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 4
  store i32* %148, i32** %11, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  store i32* %150, i32** %15, align 8
  br label %172

151:                                              ; preds = %130
  %152 = load i32*, i32** %11, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %11, align 8
  %154 = load i32, i32* %152, align 4
  %155 = load i32*, i32** %15, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %15, align 8
  store i32 %154, i32* %155, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %11, align 8
  %159 = load i32, i32* %157, align 4
  %160 = load i32*, i32** %15, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %15, align 8
  store i32 %159, i32* %160, align 4
  %162 = load i32*, i32** %11, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %11, align 8
  %164 = load i32, i32* %162, align 4
  %165 = load i32*, i32** %15, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %15, align 8
  store i32 %164, i32* %165, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %11, align 8
  %169 = load i32, i32* %167, align 4
  %170 = load i32*, i32** %15, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %15, align 8
  store i32 %169, i32* %170, align 4
  br label %172

172:                                              ; preds = %151, %133
  br label %173

173:                                              ; preds = %172, %129
  br label %71

174:                                              ; preds = %71
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %182, %190
  %192 = load i32*, i32** %11, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %11, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = sub nsw i32 %202, %210
  %212 = load i32*, i32** %15, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  store i32* %214, i32** %15, align 8
  br label %54

215:                                              ; preds = %54
  ret void
}

declare dso_local i32 @YUV422Mirror2Pixels(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
