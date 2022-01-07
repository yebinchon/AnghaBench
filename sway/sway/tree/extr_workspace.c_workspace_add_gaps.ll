; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_add_gaps.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_add_gaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.sway_workspace = type { i64, i64, i64, %struct.TYPE_3__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.sway_seat = type { i32 }
%struct.sway_container = type { i64, i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@MIN_SANE_W = common dso_local global i64 0, align 8
@MIN_SANE_H = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workspace_add_gaps(%struct.sway_workspace* %0) #0 {
  %2 = alloca %struct.sway_workspace*, align 8
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %1
  %14 = call %struct.sway_seat* (...) @input_manager_get_default_seat()
  store %struct.sway_seat* %14, %struct.sway_seat** %3, align 8
  %15 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %16 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %17 = call %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat* %15, %struct.sway_workspace* %16)
  store %struct.sway_container* %17, %struct.sway_container** %4, align 8
  %18 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %19 = icmp ne %struct.sway_container* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %22 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %27 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 1
  %29 = call %struct.sway_container* @seat_get_focus_inactive_view(%struct.sway_seat* %26, i32* %28)
  store %struct.sway_container* %29, %struct.sway_container** %4, align 8
  br label %30

30:                                               ; preds = %25, %20, %13
  %31 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %32 = icmp ne %struct.sway_container* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %35 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %40 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @view_is_only_visible(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %46 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %49 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %52 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %55 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  br label %303

57:                                               ; preds = %38, %33, %30
  br label %58

58:                                               ; preds = %57, %1
  %59 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %60 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %59, i32 0, i32 3
  %61 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %62 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %61, i32 0, i32 6
  %63 = bitcast %struct.TYPE_3__* %60 to i8*
  %64 = bitcast %struct.TYPE_3__* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 32, i1 false)
  %65 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %66 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %70 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = call i8* @fmax(i32 0, i64 %72)
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %76 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  %78 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %79 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %83 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = call i8* @fmax(i32 0, i64 %85)
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %89 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i64 %87, i64* %90, align 8
  %91 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %92 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %96 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = call i8* @fmax(i32 0, i64 %98)
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %102 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i64 %100, i64* %103, align 8
  %104 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %105 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %109 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = call i8* @fmax(i32 0, i64 %111)
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %115 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  store i64 %113, i64* %116, align 8
  %117 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %118 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %121 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %119, %123
  %125 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %126 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %124, %128
  %130 = load i64, i64* @MIN_SANE_W, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %186

132:                                              ; preds = %58
  %133 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %134 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %138 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %136, %140
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %186

143:                                              ; preds = %132
  %144 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %145 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @MIN_SANE_W, align 8
  %148 = sub nsw i64 %146, %147
  %149 = call i8* @fmax(i32 0, i64 %148)
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %5, align 4
  %151 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %152 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = sitofp i64 %154 to double
  %156 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %157 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = sitofp i64 %159 to double
  %161 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %162 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = sitofp i64 %164 to double
  %166 = fadd double %160, %165
  %167 = fdiv double %155, %166
  store double %167, double* %6, align 8
  %168 = load double, double* %6, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sitofp i32 %169 to double
  %171 = fmul double %168, %170
  %172 = fptosi double %171 to i64
  %173 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %174 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  store i64 %172, i64* %175, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %179 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = sub nsw i64 %177, %181
  %183 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %184 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  store i64 %182, i64* %185, align 8
  br label %186

186:                                              ; preds = %143, %132, %58
  %187 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %188 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %191 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = sub nsw i64 %189, %193
  %195 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %196 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %194, %198
  %200 = load i64, i64* @MIN_SANE_H, align 8
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %202, label %256

202:                                              ; preds = %186
  %203 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %204 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %208 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %206, %210
  %212 = icmp sgt i64 %211, 0
  br i1 %212, label %213, label %256

213:                                              ; preds = %202
  %214 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %215 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @MIN_SANE_H, align 8
  %218 = sub nsw i64 %216, %217
  %219 = call i8* @fmax(i32 0, i64 %218)
  %220 = ptrtoint i8* %219 to i32
  store i32 %220, i32* %7, align 4
  %221 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %222 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = sitofp i64 %224 to double
  %226 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %227 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = sitofp i64 %229 to double
  %231 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %232 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = sitofp i64 %234 to double
  %236 = fadd double %230, %235
  %237 = fdiv double %225, %236
  store double %237, double* %8, align 8
  %238 = load double, double* %8, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sitofp i32 %239 to double
  %241 = fmul double %238, %240
  %242 = fptosi double %241 to i64
  %243 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %244 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  store i64 %242, i64* %245, align 8
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %249 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = sub nsw i64 %247, %251
  %253 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %254 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 2
  store i64 %252, i64* %255, align 8
  br label %256

256:                                              ; preds = %213, %202, %186
  %257 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %258 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %262 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %264, %260
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %262, align 4
  %267 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %268 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %272 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %274, %270
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %272, align 8
  %277 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %278 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %282 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %280, %284
  %286 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %287 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = sub nsw i64 %288, %285
  store i64 %289, i64* %287, align 8
  %290 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %291 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %295 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %293, %297
  %299 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %300 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = sub nsw i64 %301, %298
  store i64 %302, i64* %300, align 8
  br label %303

303:                                              ; preds = %256, %44
  ret void
}

declare dso_local %struct.sway_seat* @input_manager_get_default_seat(...) #1

declare dso_local %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat*, %struct.sway_workspace*) #1

declare dso_local %struct.sway_container* @seat_get_focus_inactive_view(%struct.sway_seat*, i32*) #1

declare dso_local i64 @view_is_only_visible(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @fmax(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
