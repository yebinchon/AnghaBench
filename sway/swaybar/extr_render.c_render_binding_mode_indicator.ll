; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_binding_mode_indicator.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_binding_mode_indicator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32, %struct.swaybar_config* }
%struct.swaybar_config = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WS_VERTICAL_PADDING = common dso_local global i32 0, align 4
@WS_HORIZONTAL_PADDING = common dso_local global i32 0, align 4
@BORDER_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.swaybar_output*, double)* @render_binding_mode_indicator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @render_binding_mode_indicator(i32* %0, %struct.swaybar_output* %1, double %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.swaybar_output*, align 8
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.swaybar_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store %struct.swaybar_output* %1, %struct.swaybar_output** %6, align 8
  store double %2, double* %7, align 8
  %20 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %21 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %220

28:                                               ; preds = %3
  %29 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %30 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load %struct.swaybar_config*, %struct.swaybar_config** %32, align 8
  store %struct.swaybar_config* %33, %struct.swaybar_config** %9, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.swaybar_config*, %struct.swaybar_config** %9, align 8
  %36 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %39 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %42 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @get_text_size(i32* %34, i32 %37, i32* %10, i32* %11, i32* null, i32 %40, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @WS_VERTICAL_PADDING, align 4
  %49 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %50 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %48, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* @WS_HORIZONTAL_PADDING, align 4
  %54 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %55 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* @BORDER_WIDTH, align 4
  %59 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %60 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 %64, 2
  %66 = add nsw i32 %63, %65
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %67, 2
  %69 = add nsw i32 %66, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %73 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = sdiv i64 %71, %75
  store i64 %76, i64* %16, align 8
  %77 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %78 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load %struct.swaybar_config*, %struct.swaybar_config** %80, align 8
  %82 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %28
  %86 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %87 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %16, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i64, i64* %16, align 8
  store i64 %92, i64* %4, align 8
  br label %220

93:                                               ; preds = %85, %28
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %13, align 4
  %96 = mul nsw i32 %95, 2
  %97 = add nsw i32 %94, %96
  %98 = load i32, i32* %14, align 4
  %99 = mul nsw i32 %98, 2
  %100 = add nsw i32 %97, %99
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %17, align 8
  %102 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %103 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %106 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = mul nsw i64 %104, %108
  store i64 %109, i64* %18, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = load %struct.swaybar_config*, %struct.swaybar_config** %9, align 8
  %112 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @cairo_set_source_u32(i32* %110, i32 %115)
  %117 = load i32*, i32** %5, align 8
  %118 = load double, double* %7, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %18, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @cairo_rectangle(i32* %117, double %118, i64 0, i64 %119, i32 %121)
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @cairo_fill(i32* %123)
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.swaybar_config*, %struct.swaybar_config** %9, align 8
  %127 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @cairo_set_source_u32(i32* %125, i32 %130)
  %132 = load i32*, i32** %5, align 8
  %133 = load double, double* %7, align 8
  %134 = load i64, i64* %17, align 8
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @cairo_rectangle(i32* %132, double %133, i64 0, i64 %134, i32 %135)
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @cairo_fill(i32* %137)
  %139 = load i32*, i32** %5, align 8
  %140 = load double, double* %7, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %18, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @cairo_rectangle(i32* %139, double %140, i64 0, i64 %142, i32 %144)
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @cairo_fill(i32* %146)
  %148 = load i32*, i32** %5, align 8
  %149 = load double, double* %7, align 8
  %150 = load i64, i64* %17, align 8
  %151 = sitofp i64 %150 to double
  %152 = fadd double %149, %151
  %153 = load i32, i32* %14, align 4
  %154 = sitofp i32 %153 to double
  %155 = fsub double %152, %154
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %18, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @cairo_rectangle(i32* %148, double %155, i64 0, i64 %157, i32 %159)
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 @cairo_fill(i32* %161)
  %163 = load i32*, i32** %5, align 8
  %164 = load double, double* %7, align 8
  %165 = load i64, i64* %18, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = sub nsw i64 %165, %167
  %169 = load i64, i64* %17, align 8
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @cairo_rectangle(i32* %163, double %164, i64 %168, i64 %169, i32 %170)
  %172 = load i32*, i32** %5, align 8
  %173 = call i32 @cairo_fill(i32* %172)
  %174 = load i64, i64* %18, align 8
  %175 = sitofp i64 %174 to double
  %176 = fdiv double %175, 2.000000e+00
  %177 = load i32, i32* %11, align 4
  %178 = sitofp i32 %177 to double
  %179 = fdiv double %178, 2.000000e+00
  %180 = fsub double %176, %179
  store double %180, double* %19, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = load %struct.swaybar_config*, %struct.swaybar_config** %9, align 8
  %183 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @cairo_set_source_u32(i32* %181, i32 %186)
  %188 = load i32*, i32** %5, align 8
  %189 = load double, double* %7, align 8
  %190 = load i64, i64* %17, align 8
  %191 = sdiv i64 %190, 2
  %192 = sitofp i64 %191 to double
  %193 = fadd double %189, %192
  %194 = load i32, i32* %10, align 4
  %195 = sdiv i32 %194, 2
  %196 = sitofp i32 %195 to double
  %197 = fsub double %193, %196
  %198 = load double, double* %19, align 8
  %199 = call i64 @floor(double %198)
  %200 = trunc i64 %199 to i32
  %201 = call i32 @cairo_move_to(i32* %188, double %197, i32 %200)
  %202 = load i32*, i32** %5, align 8
  %203 = load %struct.swaybar_config*, %struct.swaybar_config** %9, align 8
  %204 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %207 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %211 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %210, i32 0, i32 2
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i8*, i8** %8, align 8
  %216 = call i32 @pango_printf(i32* %202, i32 %205, i64 %209, i32 %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %215)
  %217 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %218 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %4, align 8
  br label %220

220:                                              ; preds = %93, %91, %27
  %221 = load i64, i64* %4, align 8
  ret i64 %221
}

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @cairo_set_source_u32(i32*, i32) #1

declare dso_local i32 @cairo_rectangle(i32*, double, i64, i64, i32) #1

declare dso_local i32 @cairo_fill(i32*) #1

declare dso_local i32 @cairo_move_to(i32*, double, i32) #1

declare dso_local i64 @floor(double) #1

declare dso_local i32 @pango_printf(i32*, i32, i64, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
