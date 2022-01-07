; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_wl_pointer_button.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_wl_pointer_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_pointer = type { i32 }
%struct.swaynag = type { double, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.swaynag_button, %struct.swaynag_button, i64 }
%struct.swaynag_button = type { double, double, double, double }
%struct.TYPE_5__ = type { i32, %struct.swaynag_button** }
%struct.TYPE_4__ = type { double, double }

@WL_POINTER_BUTTON_STATE_PRESSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i64, i64, i64, i64)* @wl_pointer_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl_pointer_button(i8* %0, %struct.wl_pointer* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_pointer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.swaynag*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.swaynag_button*, align 8
  %18 = alloca %struct.swaynag_button, align 8
  %19 = alloca %struct.swaynag_button, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.swaynag*
  store %struct.swaynag* %22, %struct.swaynag** %13, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* @WL_POINTER_BUTTON_STATE_PRESSED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %219

27:                                               ; preds = %6
  %28 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %29 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %33 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = fmul double %31, %34
  store double %35, double* %14, align 8
  %36 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %37 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %41 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = fmul double %39, %42
  store double %43, double* %15, align 8
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %98, %27
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %47 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %101

52:                                               ; preds = %44
  %53 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %54 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.swaynag_button**, %struct.swaynag_button*** %56, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.swaynag_button*, %struct.swaynag_button** %57, i64 %59
  %61 = load %struct.swaynag_button*, %struct.swaynag_button** %60, align 8
  store %struct.swaynag_button* %61, %struct.swaynag_button** %17, align 8
  %62 = load double, double* %14, align 8
  %63 = load %struct.swaynag_button*, %struct.swaynag_button** %17, align 8
  %64 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %63, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = fcmp oge double %62, %65
  br i1 %66, label %67, label %97

67:                                               ; preds = %52
  %68 = load double, double* %15, align 8
  %69 = load %struct.swaynag_button*, %struct.swaynag_button** %17, align 8
  %70 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %69, i32 0, i32 1
  %71 = load double, double* %70, align 8
  %72 = fcmp oge double %68, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %67
  %74 = load double, double* %14, align 8
  %75 = load %struct.swaynag_button*, %struct.swaynag_button** %17, align 8
  %76 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %75, i32 0, i32 0
  %77 = load double, double* %76, align 8
  %78 = load %struct.swaynag_button*, %struct.swaynag_button** %17, align 8
  %79 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %78, i32 0, i32 2
  %80 = load double, double* %79, align 8
  %81 = fadd double %77, %80
  %82 = fcmp olt double %74, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %73
  %84 = load double, double* %15, align 8
  %85 = load %struct.swaynag_button*, %struct.swaynag_button** %17, align 8
  %86 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %85, i32 0, i32 1
  %87 = load double, double* %86, align 8
  %88 = load %struct.swaynag_button*, %struct.swaynag_button** %17, align 8
  %89 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %88, i32 0, i32 3
  %90 = load double, double* %89, align 8
  %91 = fadd double %87, %90
  %92 = fcmp olt double %84, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %95 = load %struct.swaynag_button*, %struct.swaynag_button** %17, align 8
  %96 = call i32 @swaynag_button_execute(%struct.swaynag* %94, %struct.swaynag_button* %95)
  br label %219

97:                                               ; preds = %83, %73, %67, %52
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %44

101:                                              ; preds = %44
  %102 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %103 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %219

107:                                              ; preds = %101
  %108 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %109 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %113 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %111, %115
  br i1 %116, label %117, label %219

117:                                              ; preds = %107
  %118 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %119 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = bitcast %struct.swaynag_button* %18 to i8*
  %122 = bitcast %struct.swaynag_button* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 32, i1 false)
  %123 = load double, double* %14, align 8
  %124 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %18, i32 0, i32 0
  %125 = load double, double* %124, align 8
  %126 = fcmp oge double %123, %125
  br i1 %126, label %127, label %162

127:                                              ; preds = %117
  %128 = load double, double* %15, align 8
  %129 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %18, i32 0, i32 1
  %130 = load double, double* %129, align 8
  %131 = fcmp oge double %128, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %127
  %133 = load double, double* %14, align 8
  %134 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %18, i32 0, i32 0
  %135 = load double, double* %134, align 8
  %136 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %18, i32 0, i32 2
  %137 = load double, double* %136, align 8
  %138 = fadd double %135, %137
  %139 = fcmp olt double %133, %138
  br i1 %139, label %140, label %162

140:                                              ; preds = %132
  %141 = load double, double* %15, align 8
  %142 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %18, i32 0, i32 1
  %143 = load double, double* %142, align 8
  %144 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %18, i32 0, i32 3
  %145 = load double, double* %144, align 8
  %146 = fadd double %143, %145
  %147 = fcmp olt double %141, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %140
  %149 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %150 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %148
  %155 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %156 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %157, align 8
  %160 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %161 = call i32 @render_frame(%struct.swaynag* %160)
  br label %219

162:                                              ; preds = %148, %140, %132, %127, %117
  %163 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %164 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 3
  %166 = bitcast %struct.swaynag_button* %19 to i8*
  %167 = bitcast %struct.swaynag_button* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 %167, i64 32, i1 false)
  %168 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %169 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %20, align 4
  %172 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %173 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %20, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %20, align 4
  %178 = load double, double* %14, align 8
  %179 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %19, i32 0, i32 0
  %180 = load double, double* %179, align 8
  %181 = fcmp oge double %178, %180
  br i1 %181, label %182, label %218

182:                                              ; preds = %162
  %183 = load double, double* %15, align 8
  %184 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %19, i32 0, i32 1
  %185 = load double, double* %184, align 8
  %186 = fcmp oge double %183, %185
  br i1 %186, label %187, label %218

187:                                              ; preds = %182
  %188 = load double, double* %14, align 8
  %189 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %19, i32 0, i32 0
  %190 = load double, double* %189, align 8
  %191 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %19, i32 0, i32 2
  %192 = load double, double* %191, align 8
  %193 = fadd double %190, %192
  %194 = fcmp olt double %188, %193
  br i1 %194, label %195, label %218

195:                                              ; preds = %187
  %196 = load double, double* %15, align 8
  %197 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %19, i32 0, i32 1
  %198 = load double, double* %197, align 8
  %199 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %19, i32 0, i32 3
  %200 = load double, double* %199, align 8
  %201 = fadd double %198, %200
  %202 = fcmp olt double %196, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %195
  %204 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %205 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %20, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %203
  %211 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %212 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 8
  %216 = load %struct.swaynag*, %struct.swaynag** %13, align 8
  %217 = call i32 @render_frame(%struct.swaynag* %216)
  br label %219

218:                                              ; preds = %203, %195, %187, %182, %162
  br label %219

219:                                              ; preds = %26, %93, %154, %210, %218, %107, %101
  ret void
}

declare dso_local i32 @swaynag_button_execute(%struct.swaynag*, %struct.swaynag_button*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @render_frame(%struct.swaynag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
