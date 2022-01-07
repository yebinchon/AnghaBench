; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_arrange_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_arrange_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.sway_workspace = type { i64, i64, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.sway_container*, i32, i32, %struct.TYPE_4__, %struct.sway_output* }
%struct.TYPE_6__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { double, double }
%struct.sway_output = type { i32, i32, i32, i32, %struct.wlr_box }
%struct.wlr_box = type { i64, i64, i32, i32 }

@config = common dso_local global %struct.TYPE_5__* null, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Usable area for ws: %dx%d@%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Arranging workspace '%s' at %f, %f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arrange_workspace(%struct.sway_workspace* %0) #0 {
  %2 = alloca %struct.sway_workspace*, align 8
  %3 = alloca %struct.sway_output*, align 8
  %4 = alloca %struct.wlr_box*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_container*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.wlr_box, align 8
  %15 = alloca %struct.sway_container*, align 8
  %16 = alloca %struct.wlr_box, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %2, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %247

22:                                               ; preds = %1
  %23 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %24 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %23, i32 0, i32 11
  %25 = load %struct.sway_output*, %struct.sway_output** %24, align 8
  %26 = icmp ne %struct.sway_output* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %247

28:                                               ; preds = %22
  %29 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %30 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %29, i32 0, i32 11
  %31 = load %struct.sway_output*, %struct.sway_output** %30, align 8
  store %struct.sway_output* %31, %struct.sway_output** %3, align 8
  %32 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %33 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %32, i32 0, i32 4
  store %struct.wlr_box* %33, %struct.wlr_box** %4, align 8
  %34 = load i32, i32* @SWAY_DEBUG, align 4
  %35 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %36 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %39 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sitofp i64 %40 to double
  %42 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %43 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sitofp i32 %44 to double
  %46 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %47 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, i64, double, double, ...) @sway_log(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %37, double %41, double %45, i32 %48)
  %50 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %51 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %28
  %55 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %56 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br label %59

59:                                               ; preds = %54, %28
  %60 = phi i1 [ false, %28 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %5, align 4
  %62 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %63 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sitofp i32 %64 to double
  %66 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %67 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %66, i32 0, i32 10
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load double, double* %68, align 8
  %70 = fsub double %65, %69
  store double %70, double* %6, align 8
  %71 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %72 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = sitofp i32 %73 to double
  %75 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %76 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %75, i32 0, i32 10
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load double, double* %77, align 8
  %79 = fsub double %74, %78
  store double %79, double* %7, align 8
  %80 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %81 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %84 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %86 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %89 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %91 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %94 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %92, %95
  %97 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %98 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %100 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %103 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %107 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %109 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = sitofp i32 %110 to double
  %112 = load double, double* %6, align 8
  %113 = fsub double %111, %112
  store double %113, double* %8, align 8
  %114 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %115 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = sitofp i32 %116 to double
  %118 = load double, double* %7, align 8
  %119 = fsub double %117, %118
  store double %119, double* %9, align 8
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %183, label %122

122:                                              ; preds = %59
  %123 = load double, double* %8, align 8
  %124 = fcmp une double %123, 0.000000e+00
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load double, double* %9, align 8
  %127 = fcmp une double %126, 0.000000e+00
  br i1 %127, label %128, label %183

128:                                              ; preds = %125, %122
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %179, %128
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %132 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %131, i32 0, i32 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %130, %135
  br i1 %136, label %137, label %182

137:                                              ; preds = %129
  %138 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %139 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %138, i32 0, i32 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load %struct.sway_container**, %struct.sway_container*** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %142, i64 %144
  %146 = load %struct.sway_container*, %struct.sway_container** %145, align 8
  store %struct.sway_container* %146, %struct.sway_container** %11, align 8
  %147 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %148 = load double, double* %8, align 8
  %149 = load double, double* %9, align 8
  %150 = call i32 @container_floating_translate(%struct.sway_container* %147, double %148, double %149)
  %151 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %152 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %155 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %156, 2
  %158 = add nsw i32 %153, %157
  %159 = sitofp i32 %158 to double
  store double %159, double* %12, align 8
  %160 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %161 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %164 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = sdiv i32 %165, 2
  %167 = add nsw i32 %162, %166
  %168 = sitofp i32 %167 to double
  store double %168, double* %13, align 8
  %169 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %170 = call i32 @workspace_get_box(%struct.sway_workspace* %169, %struct.wlr_box* %14)
  %171 = load double, double* %12, align 8
  %172 = load double, double* %13, align 8
  %173 = call i32 @wlr_box_contains_point(%struct.wlr_box* %14, double %171, double %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %137
  %176 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %177 = call i32 @container_floating_move_to_center(%struct.sway_container* %176)
  br label %178

178:                                              ; preds = %175, %137
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  br label %129

182:                                              ; preds = %129
  br label %183

183:                                              ; preds = %182, %125, %59
  %184 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %185 = call i32 @workspace_add_gaps(%struct.sway_workspace* %184)
  %186 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %187 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %186, i32 0, i32 9
  %188 = call i32 @node_set_dirty(i32* %187)
  %189 = load i32, i32* @SWAY_DEBUG, align 4
  %190 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %191 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %195 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = sitofp i32 %196 to double
  %198 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %199 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = sitofp i32 %200 to double
  %202 = call i32 (i32, i8*, i64, double, double, ...) @sway_log(i32 %189, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %193, double %197, double %201)
  %203 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %204 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %203, i32 0, i32 7
  %205 = load %struct.sway_container*, %struct.sway_container** %204, align 8
  %206 = icmp ne %struct.sway_container* %205, null
  br i1 %206, label %207, label %233

207:                                              ; preds = %183
  %208 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %209 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %208, i32 0, i32 7
  %210 = load %struct.sway_container*, %struct.sway_container** %209, align 8
  store %struct.sway_container* %210, %struct.sway_container** %15, align 8
  %211 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %212 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %215 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %217 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %220 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 4
  %221 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %222 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %225 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %227 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %230 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 4
  %231 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %232 = call i32 @arrange_container(%struct.sway_container* %231)
  br label %247

233:                                              ; preds = %183
  %234 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %235 = call i32 @workspace_get_box(%struct.sway_workspace* %234, %struct.wlr_box* %16)
  %236 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %237 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %240 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @arrange_children(i32 %238, i32 %241, %struct.wlr_box* %16)
  %243 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %244 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %243, i32 0, i32 4
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = call i32 @arrange_floating(%struct.TYPE_6__* %245)
  br label %247

247:                                              ; preds = %21, %27, %233, %207
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, i64, double, double, ...) #1

declare dso_local i32 @container_floating_translate(%struct.sway_container*, double, double) #1

declare dso_local i32 @workspace_get_box(%struct.sway_workspace*, %struct.wlr_box*) #1

declare dso_local i32 @wlr_box_contains_point(%struct.wlr_box*, double, double) #1

declare dso_local i32 @container_floating_move_to_center(%struct.sway_container*) #1

declare dso_local i32 @workspace_add_gaps(%struct.sway_workspace*) #1

declare dso_local i32 @node_set_dirty(i32*) #1

declare dso_local i32 @arrange_container(%struct.sway_container*) #1

declare dso_local i32 @arrange_children(i32, i32, %struct.wlr_box*) #1

declare dso_local i32 @arrange_floating(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
