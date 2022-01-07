; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_render_sni.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_render_sni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.swaybar_sni = type { i32, i32, i32, i32, i64 }
%struct.swaybar_hotspot = type { double, i32, i32, i32, i32, i32, i32, i32 }

@CAIRO_FORMAT_ARGB32 = common dso_local global i32 0, align 4
@CAIRO_OPERATOR_CLEAR = common dso_local global i32 0, align 4
@CAIRO_OPERATOR_OVER = common dso_local global i32 0, align 4
@icon_hotspot_callback = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @render_sni(i32* %0, %struct.swaybar_output* %1, double* %2, %struct.swaybar_sni* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.swaybar_output*, align 8
  %7 = alloca double*, align 8
  %8 = alloca %struct.swaybar_sni*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.swaybar_hotspot*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.swaybar_output* %1, %struct.swaybar_output** %6, align 8
  store double* %2, double** %7, align 8
  store %struct.swaybar_sni* %3, %struct.swaybar_sni** %8, align 8
  %20 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %21 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %24 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %28 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 2, %35
  %37 = sub nsw i32 %34, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.swaybar_sni*, %struct.swaybar_sni** %8, align 8
  %40 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %4
  %44 = load %struct.swaybar_sni*, %struct.swaybar_sni** %8, align 8
  %45 = call i64 @sni_ready(%struct.swaybar_sni* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.swaybar_sni*, %struct.swaybar_sni** %8, align 8
  %50 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.swaybar_sni*, %struct.swaybar_sni** %8, align 8
  %56 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %53, %47
  %60 = load %struct.swaybar_sni*, %struct.swaybar_sni** %8, align 8
  %61 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %62 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @reload_sni(%struct.swaybar_sni* %60, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %59, %53
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.swaybar_sni*, %struct.swaybar_sni** %8, align 8
  %73 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %43, %4
  %75 = load %struct.swaybar_sni*, %struct.swaybar_sni** %8, align 8
  %76 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %74
  %80 = load %struct.swaybar_sni*, %struct.swaybar_sni** %8, align 8
  %81 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @cairo_image_surface_get_height(i64 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %14, align 4
  %91 = sdiv i32 %89, %90
  %92 = mul nsw i32 %88, %91
  br label %95

93:                                               ; preds = %79
  %94 = load i32, i32* %11, align 4
  br label %95

95:                                               ; preds = %93, %87
  %96 = phi i32 [ %92, %87 ], [ %94, %93 ]
  store i32 %96, i32* %12, align 4
  %97 = load %struct.swaybar_sni*, %struct.swaybar_sni** %8, align 8
  %98 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32* @cairo_image_surface_scale(i64 %99, i32 %100, i32 %101)
  store i32* %102, i32** %13, align 8
  br label %151

103:                                              ; preds = %74
  %104 = load i32, i32* %11, align 4
  %105 = sitofp i32 %104 to double
  %106 = fmul double %105, 8.000000e-01
  %107 = fptosi double %106 to i32
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32* @cairo_image_surface_create(i32 %108, i32 %109, i32 %110)
  store i32* %111, i32** %13, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = call i32* @cairo_create(i32* %112)
  store i32* %113, i32** %15, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @cairo_set_source_u32(i32* %114, i32 -16776961)
  %116 = load i32*, i32** %15, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sdiv i32 %117, 2
  %119 = load i32, i32* %12, align 4
  %120 = sdiv i32 %119, 2
  %121 = call i32 @cairo_translate(i32* %116, i32 %118, i32 %120)
  %122 = load i32*, i32** %15, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sdiv i32 %123, 2
  %125 = load i32, i32* %12, align 4
  %126 = sdiv i32 %125, 2
  %127 = call i32 @cairo_scale(i32* %122, i32 %124, i32 %126)
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @cairo_arc(i32* %128, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 7.000000e+00)
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @cairo_fill(i32* %130)
  %132 = load i32*, i32** %15, align 8
  %133 = load i32, i32* @CAIRO_OPERATOR_CLEAR, align 4
  %134 = call i32 @cairo_set_operator(i32* %132, i32 %133)
  %135 = load i32*, i32** %15, align 8
  %136 = call i32 @cairo_arc(i32* %135, double 3.500000e-01, double -3.000000e-01, double 1.000000e-01, double 0.000000e+00, double 7.000000e+00)
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @cairo_fill(i32* %137)
  %139 = load i32*, i32** %15, align 8
  %140 = call i32 @cairo_arc(i32* %139, double -3.500000e-01, double -3.000000e-01, double 1.000000e-01, double 0.000000e+00, double 7.000000e+00)
  %141 = load i32*, i32** %15, align 8
  %142 = call i32 @cairo_fill(i32* %141)
  %143 = load i32*, i32** %15, align 8
  %144 = call i32 @cairo_arc(i32* %143, double 0.000000e+00, double 7.500000e-01, double 5.000000e-01, double 0x400DB2F8FE6643A5, double 0x4016D97C7F3321D2)
  %145 = load i32*, i32** %15, align 8
  %146 = call i32 @cairo_set_line_width(i32* %145, double 1.000000e-01)
  %147 = load i32*, i32** %15, align 8
  %148 = call i32 @cairo_stroke(i32* %147)
  %149 = load i32*, i32** %15, align 8
  %150 = call i32 @cairo_destroy(i32* %149)
  br label %151

151:                                              ; preds = %103, %95
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %10, align 4
  %154 = mul nsw i32 2, %153
  %155 = add nsw i32 %152, %154
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %16, align 4
  %157 = sitofp i32 %156 to double
  %158 = load double*, double** %7, align 8
  %159 = load double, double* %158, align 8
  %160 = fsub double %159, %157
  store double %160, double* %158, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %16, align 4
  %163 = sub nsw i32 %161, %162
  %164 = sitofp i32 %163 to double
  %165 = fdiv double %164, 2.000000e+00
  %166 = fptosi double %165 to i32
  %167 = call i32 @floor(i32 %166)
  store i32 %167, i32* %17, align 4
  %168 = load i32*, i32** %5, align 8
  %169 = call i32 @cairo_get_operator(i32* %168)
  store i32 %169, i32* %18, align 4
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* @CAIRO_OPERATOR_OVER, align 4
  %172 = call i32 @cairo_set_operator(i32* %170, i32 %171)
  %173 = load i32*, i32** %5, align 8
  %174 = load i32*, i32** %13, align 8
  %175 = load double*, double** %7, align 8
  %176 = load double, double* %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sitofp i32 %177 to double
  %179 = fadd double %176, %178
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %180, %181
  %183 = call i32 @cairo_set_source_surface(i32* %173, i32* %174, double %179, i32 %182)
  %184 = load i32*, i32** %5, align 8
  %185 = load double*, double** %7, align 8
  %186 = load double, double* %185, align 8
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %16, align 4
  %190 = call i32 @cairo_rectangle(i32* %184, double %186, i32 %187, i32 %188, i32 %189)
  %191 = load i32*, i32** %5, align 8
  %192 = call i32 @cairo_fill(i32* %191)
  %193 = load i32*, i32** %5, align 8
  %194 = load i32, i32* %18, align 4
  %195 = call i32 @cairo_set_operator(i32* %193, i32 %194)
  %196 = load i32*, i32** %13, align 8
  %197 = call i32 @cairo_surface_destroy(i32* %196)
  %198 = call %struct.swaybar_hotspot* @calloc(i32 1, i32 40)
  store %struct.swaybar_hotspot* %198, %struct.swaybar_hotspot** %19, align 8
  %199 = load double*, double** %7, align 8
  %200 = load double, double* %199, align 8
  %201 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %19, align 8
  %202 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %201, i32 0, i32 0
  store double %200, double* %202, align 8
  %203 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %19, align 8
  %204 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %203, i32 0, i32 7
  store i32 0, i32* %204, align 8
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %19, align 8
  %207 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %19, align 8
  %210 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* @icon_hotspot_callback, align 4
  %212 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %19, align 8
  %213 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %212, i32 0, i32 6
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* @free, align 4
  %215 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %19, align 8
  %216 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 8
  %217 = load %struct.swaybar_sni*, %struct.swaybar_sni** %8, align 8
  %218 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @strdup(i32 %219)
  %221 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %19, align 8
  %222 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 4
  %223 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %224 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %223, i32 0, i32 2
  %225 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %19, align 8
  %226 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %225, i32 0, i32 3
  %227 = call i32 @wl_list_insert(i32* %224, i32* %226)
  %228 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %229 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  ret i32 %230
}

declare dso_local i64 @sni_ready(%struct.swaybar_sni*) #1

declare dso_local i32 @reload_sni(%struct.swaybar_sni*, i32, i32) #1

declare dso_local i32 @cairo_image_surface_get_height(i64) #1

declare dso_local i32* @cairo_image_surface_scale(i64, i32, i32) #1

declare dso_local i32* @cairo_image_surface_create(i32, i32, i32) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32 @cairo_set_source_u32(i32*, i32) #1

declare dso_local i32 @cairo_translate(i32*, i32, i32) #1

declare dso_local i32 @cairo_scale(i32*, i32, i32) #1

declare dso_local i32 @cairo_arc(i32*, double, double, double, double, double) #1

declare dso_local i32 @cairo_fill(i32*) #1

declare dso_local i32 @cairo_set_operator(i32*, i32) #1

declare dso_local i32 @cairo_set_line_width(i32*, double) #1

declare dso_local i32 @cairo_stroke(i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @cairo_get_operator(i32*) #1

declare dso_local i32 @cairo_set_source_surface(i32*, i32*, double, i32) #1

declare dso_local i32 @cairo_rectangle(i32*, double, i32, i32, i32) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

declare dso_local %struct.swaybar_hotspot* @calloc(i32, i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
