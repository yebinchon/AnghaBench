; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_timsort.h_libxml_domnode_tim_sort_merge.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_timsort.h_libxml_domnode_tim_sort_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32, %struct.TYPE_7__*)* @TIM_SORT_MERGE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TIM_SORT_MERGE(i32* %0, %struct.TYPE_6__* %1, i32 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @MIN(i64 %38, i64 %39)
  %41 = call i32 @TIM_SORT_RESIZE(%struct.TYPE_7__* %37, i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %12, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %130

48:                                               ; preds = %4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i64, i64* %9, align 8
  %54 = mul i64 %53, 4
  %55 = call i32 @memcpy(i32* %49, i32* %52, i64 %54)
  store i64 0, i64* %13, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %56, %57
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %11, align 8
  store i64 %59, i64* %15, align 8
  br label %60

60:                                               ; preds = %126, %48
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %62, %63
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %64, %65
  %67 = icmp ult i64 %61, %66
  br i1 %67, label %68, label %129

68:                                               ; preds = %60
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %68
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %74, %75
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %76, %77
  %79 = icmp ult i64 %73, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %72
  %81 = load i32*, i32** %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i64, i64* %14, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @SORT_CMP(i32 %84, i32 %88)
  %90 = icmp sle i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %80
  %92 = load i32*, i32** %12, align 8
  %93 = load i64, i64* %13, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %13, align 8
  %95 = getelementptr inbounds i32, i32* %92, i64 %93
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i64, i64* %15, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %96, i32* %99, align 4
  br label %109

100:                                              ; preds = %80
  %101 = load i32*, i32** %5, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %14, align 8
  %104 = getelementptr inbounds i32, i32* %101, i64 %102
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = load i64, i64* %15, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %100, %91
  br label %125

110:                                              ; preds = %72, %68
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %9, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load i32*, i32** %12, align 8
  %116 = load i64, i64* %13, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %13, align 8
  %118 = getelementptr inbounds i32, i32* %115, i64 %116
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = load i64, i64* %15, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32 %119, i32* %122, align 4
  br label %124

123:                                              ; preds = %110
  br label %129

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %109
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %15, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %15, align 8
  br label %60

129:                                              ; preds = %123, %60
  br label %209

130:                                              ; preds = %4
  %131 = load i32*, i32** %12, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %133, %134
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i64, i64* %10, align 8
  %138 = mul i64 %137, 4
  %139 = call i32 @memcpy(i32* %131, i32* %136, i64 %138)
  %140 = load i64, i64* %10, align 8
  store i64 %140, i64* %13, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* %9, align 8
  %143 = add i64 %141, %142
  store i64 %143, i64* %14, align 8
  %144 = load i64, i64* %11, align 8
  %145 = load i64, i64* %9, align 8
  %146 = add i64 %144, %145
  %147 = load i64, i64* %10, align 8
  %148 = add i64 %146, %147
  store i64 %148, i64* %15, align 8
  br label %149

149:                                              ; preds = %207, %130
  %150 = load i64, i64* %15, align 8
  %151 = add i64 %150, -1
  store i64 %151, i64* %15, align 8
  %152 = load i64, i64* %11, align 8
  %153 = icmp ugt i64 %150, %152
  br i1 %153, label %154, label %208

154:                                              ; preds = %149
  %155 = load i64, i64* %13, align 8
  %156 = icmp ugt i64 %155, 0
  br i1 %156, label %157, label %193

157:                                              ; preds = %154
  %158 = load i64, i64* %14, align 8
  %159 = load i64, i64* %11, align 8
  %160 = icmp ugt i64 %158, %159
  br i1 %160, label %161, label %193

161:                                              ; preds = %157
  %162 = load i32*, i32** %5, align 8
  %163 = load i64, i64* %14, align 8
  %164 = sub i64 %163, 1
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %12, align 8
  %168 = load i64, i64* %13, align 8
  %169 = sub i64 %168, 1
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @SORT_CMP(i32 %166, i32 %171)
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %161
  %175 = load i32*, i32** %5, align 8
  %176 = load i64, i64* %14, align 8
  %177 = add i64 %176, -1
  store i64 %177, i64* %14, align 8
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %5, align 8
  %181 = load i64, i64* %15, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32 %179, i32* %182, align 4
  br label %192

183:                                              ; preds = %161
  %184 = load i32*, i32** %12, align 8
  %185 = load i64, i64* %13, align 8
  %186 = add i64 %185, -1
  store i64 %186, i64* %13, align 8
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %5, align 8
  %190 = load i64, i64* %15, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32 %188, i32* %191, align 4
  br label %192

192:                                              ; preds = %183, %174
  br label %207

193:                                              ; preds = %157, %154
  %194 = load i64, i64* %13, align 8
  %195 = icmp ugt i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %193
  %197 = load i32*, i32** %12, align 8
  %198 = load i64, i64* %13, align 8
  %199 = add i64 %198, -1
  store i64 %199, i64* %13, align 8
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %5, align 8
  %203 = load i64, i64* %15, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32 %201, i32* %204, align 4
  br label %206

205:                                              ; preds = %193
  br label %208

206:                                              ; preds = %196
  br label %207

207:                                              ; preds = %206, %192
  br label %149

208:                                              ; preds = %205, %149
  br label %209

209:                                              ; preds = %208, %129
  ret void
}

declare dso_local i32 @TIM_SORT_RESIZE(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @SORT_CMP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
