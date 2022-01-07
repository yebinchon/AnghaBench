; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edgebuffer.c_index_edgebuffer_insert.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edgebuffer.c_index_edgebuffer_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { float, float, float, float }

@debugging_scan_converter = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float, float, i32)* @index_edgebuffer_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @index_edgebuffer_insert(i32* %0, i32* %1, float %2, float %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %15, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %26, %31
  store i32 %32, i32* %18, align 4
  %33 = load float, float* %11, align 4
  %34 = load float, float* %13, align 4
  %35 = fcmp oeq float %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %7
  br label %237

37:                                               ; preds = %7
  %38 = load float, float* %10, align 4
  %39 = load float, float* %12, align 4
  %40 = fcmp olt float %38, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %37
  %42 = load float, float* %10, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 8
  %48 = fcmp olt float %42, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load float, float* %10, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store float %50, float* %54, align 8
  br label %55

55:                                               ; preds = %49, %41
  %56 = load float, float* %12, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load float, float* %60, align 4
  %62 = fcmp ogt float %56, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load float, float* %12, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store float %64, float* %68, align 4
  br label %69

69:                                               ; preds = %63, %55
  br label %99

70:                                               ; preds = %37
  %71 = load float, float* %10, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load float, float* %75, align 4
  %77 = fcmp ogt float %71, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load float, float* %10, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store float %79, float* %83, align 4
  br label %84

84:                                               ; preds = %78, %70
  %85 = load float, float* %12, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load float, float* %89, align 8
  %91 = fcmp olt float %85, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load float, float* %12, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store float %93, float* %97, align 8
  br label %98

98:                                               ; preds = %92, %84
  br label %99

99:                                               ; preds = %98, %69
  %100 = load float, float* %11, align 4
  %101 = load float, float* %13, align 4
  %102 = fcmp olt float %100, %101
  br i1 %102, label %103, label %132

103:                                              ; preds = %99
  %104 = load float, float* %11, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load float, float* %108, align 8
  %110 = fcmp olt float %104, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load float, float* %11, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  store float %112, float* %116, align 8
  br label %117

117:                                              ; preds = %111, %103
  %118 = load float, float* %13, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = load float, float* %122, align 4
  %124 = fcmp ogt float %118, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load float, float* %13, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  store float %126, float* %130, align 4
  br label %131

131:                                              ; preds = %125, %117
  br label %161

132:                                              ; preds = %99
  %133 = load float, float* %13, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load float, float* %137, align 8
  %139 = fcmp olt float %133, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load float, float* %13, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  store float %141, float* %145, align 8
  br label %146

146:                                              ; preds = %140, %132
  %147 = load float, float* %11, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  %152 = load float, float* %151, align 4
  %153 = fcmp ogt float %147, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %146
  %155 = load float, float* %11, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  store float %155, float* %159, align 4
  br label %160

160:                                              ; preds = %154, %146
  br label %161

161:                                              ; preds = %160, %131
  %162 = load float, float* %11, align 4
  %163 = fptosi float %162 to i32
  store i32 %163, i32* %16, align 4
  %164 = load float, float* %13, align 4
  %165 = fptosi float %164 to i32
  store i32 %165, i32* %17, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %17, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %161
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %19, align 4
  %171 = load i32, i32* %17, align 4
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %19, align 4
  store i32 %172, i32* %17, align 4
  br label %173

173:                                              ; preds = %169, %161
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %16, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %17, align 4
  %184 = sub nsw i32 %183, %182
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* %17, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %173
  br label %237

188:                                              ; preds = %173
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %16, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %16, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %188
  store i32 0, i32* %16, align 4
  br label %205

199:                                              ; preds = %188
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %18, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %237

204:                                              ; preds = %199
  br label %205

205:                                              ; preds = %204, %198
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %18, align 4
  %208 = sub nsw i32 %207, 1
  %209 = icmp sgt i32 %206, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32, i32* %18, align 4
  %212 = sub nsw i32 %211, 1
  store i32 %212, i32* %17, align 4
  br label %213

213:                                              ; preds = %210, %205
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %16, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, %216
  store i32 %224, i32* %222, align 4
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %17, align 4
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %235, %227
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %213, %203, %187, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
