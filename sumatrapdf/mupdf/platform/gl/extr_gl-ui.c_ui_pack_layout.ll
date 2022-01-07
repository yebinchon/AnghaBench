; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_pack_layout.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_pack_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@ui = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@X = common dso_local global i32 0, align 4
@Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @ui_pack_layout(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* %11, align 4
  switch i32 %21, label %22 [
    i32 141, label %23
    i32 129, label %58
    i32 140, label %91
    i32 137, label %124
    i32 133, label %157
  ]

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %7, %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %14, align 4
  %28 = add nsw i32 %26, %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %14, align 4
  %34 = sub nsw i32 %32, %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %38, %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = sub nsw i32 %44, %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %190

58:                                               ; preds = %7
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %61, %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %14, align 4
  %69 = sub nsw i32 %67, %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %73, %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %81, %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %190

91:                                               ; preds = %7
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %94, %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %14, align 4
  %102 = sub nsw i32 %100, %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %15, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %108, %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 %110, i32* %111, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %15, align 4
  %116 = sub nsw i32 %114, %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %15, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  br label %190

124:                                              ; preds = %7
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %127, %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %135, %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 %137, i32* %138, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %141, %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 %143, i32* %144, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %15, align 4
  %149 = sub nsw i32 %147, %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i32 %149, i32* %150, align 4
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %152, %153
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  br label %190

157:                                              ; preds = %7
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %14, align 4
  %162 = sub nsw i32 %160, %161
  %163 = load i32, i32* %9, align 4
  %164 = sub nsw i32 %162, %163
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %164, i32* %165, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %14, align 4
  %170 = sub nsw i32 %168, %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 %170, i32* %171, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %174, %175
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 %176, i32* %177, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %15, align 4
  %182 = sub nsw i32 %180, %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i32 %182, i32* %183, align 4
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %14, align 4
  %187 = sub nsw i32 %185, %186
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %157, %124, %91, %58, %23
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %192, %194
  store i32 %195, i32* %17, align 4
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %197, %199
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @X, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %190
  %206 = load i32, i32* %17, align 4
  store i32 %206, i32* %9, align 4
  br label %207

207:                                              ; preds = %205, %190
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* @Y, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, i32* %18, align 4
  store i32 %213, i32* %10, align 4
  br label %214

214:                                              ; preds = %212, %207
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* %9, align 4
  %217 = sub nsw i32 %215, %216
  store i32 %217, i32* %19, align 4
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* %10, align 4
  %220 = sub nsw i32 %218, %219
  store i32 %220, i32* %20, align 4
  %221 = load i32, i32* %13, align 4
  switch i32 %221, label %222 [
    i32 139, label %223
    i32 136, label %236
    i32 135, label %246
    i32 138, label %255
    i32 131, label %267
    i32 132, label %278
    i32 130, label %290
    i32 128, label %299
    i32 134, label %309
  ]

222:                                              ; preds = %214
  br label %223

223:                                              ; preds = %214, %222
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %19, align 4
  %227 = sdiv i32 %226, 2
  %228 = add nsw i32 %225, %227
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %228, i32* %229, align 4
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %20, align 4
  %233 = sdiv i32 %232, 2
  %234 = add nsw i32 %231, %233
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %234, i32* %235, align 4
  br label %316

236:                                              ; preds = %214
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %19, align 4
  %240 = sdiv i32 %239, 2
  %241 = add nsw i32 %238, %240
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %241, i32* %242, align 4
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %244, i32* %245, align 4
  br label %316

246:                                              ; preds = %214
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %19, align 4
  %250 = add nsw i32 %248, %249
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %250, i32* %251, align 4
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %253, i32* %254, align 4
  br label %316

255:                                              ; preds = %214
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %19, align 4
  %259 = add nsw i32 %257, %258
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %259, i32* %260, align 4
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %20, align 4
  %264 = sdiv i32 %263, 2
  %265 = add nsw i32 %262, %264
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %265, i32* %266, align 4
  br label %316

267:                                              ; preds = %214
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %19, align 4
  %271 = add nsw i32 %269, %270
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %271, i32* %272, align 4
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %20, align 4
  %276 = add nsw i32 %274, %275
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %276, i32* %277, align 4
  br label %316

278:                                              ; preds = %214
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %19, align 4
  %282 = sdiv i32 %281, 2
  %283 = add nsw i32 %280, %282
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %283, i32* %284, align 4
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %20, align 4
  %288 = add nsw i32 %286, %287
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %288, i32* %289, align 4
  br label %316

290:                                              ; preds = %214
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %292, i32* %293, align 4
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %20, align 4
  %297 = add nsw i32 %295, %296
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %297, i32* %298, align 4
  br label %316

299:                                              ; preds = %214
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %301, i32* %302, align 4
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %20, align 4
  %306 = sdiv i32 %305, 2
  %307 = add nsw i32 %304, %306
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %307, i32* %308, align 4
  br label %316

309:                                              ; preds = %214
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %311, i32* %312, align 4
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %314, i32* %315, align 4
  br label %316

316:                                              ; preds = %309, %299, %290, %278, %267, %255, %246, %236, %223
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %9, align 4
  %320 = add nsw i32 %318, %319
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32 %320, i32* %321, align 4
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %10, align 4
  %325 = add nsw i32 %323, %324
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  store i32 %325, i32* %326, align 4
  %327 = bitcast %struct.TYPE_6__* %8 to { i64, i64 }*
  %328 = load { i64, i64 }, { i64, i64 }* %327, align 4
  ret { i64, i64 } %328
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
