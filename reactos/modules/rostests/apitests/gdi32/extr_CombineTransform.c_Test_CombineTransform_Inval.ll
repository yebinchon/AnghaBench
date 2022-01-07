; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineTransform.c_Test_CombineTransform_Inval.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineTransform.c_Test_CombineTransform_Inval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CombineTransform_Inval(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %8 = call i32 @set_xform(i32* %5, double 0.000000e+00, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %9 = load float, float* %3, align 4
  %10 = fpext float %9 to double
  %11 = call i32 @set_xform(i32* %6, double %10, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %12 = call i32 @CombineTransform(i32* %7, i32* %5, i32* %6)
  %13 = call i32 @ok_int(i32 %12, i32 1)
  %14 = load i32, i32* %7, align 4
  %15 = load float, float* %4, align 4
  %16 = call i32 @ok_xform(i32 %14, float %15, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %17 = call i32 @CombineTransform(i32* %7, i32* %6, i32* %5)
  %18 = call i32 @ok_int(i32 %17, i32 1)
  %19 = load i32, i32* %7, align 4
  %20 = load float, float* %4, align 4
  %21 = call i32 @ok_xform(i32 %19, float %20, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %22 = call i32 @set_xform(i32* %5, double 0.000000e+00, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %23 = load float, float* %3, align 4
  %24 = call i32 @set_xform(i32* %6, double 0.000000e+00, float %23, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %25 = call i32 @CombineTransform(i32* %7, i32* %5, i32* %6)
  %26 = call i32 @ok_int(i32 %25, i32 1)
  %27 = load i32, i32* %7, align 4
  %28 = load float, float* %4, align 4
  %29 = load float, float* %4, align 4
  %30 = call i32 @ok_xform(i32 %27, float 0.000000e+00, float %28, float 0.000000e+00, float %29, double 0.000000e+00, double 0.000000e+00)
  %31 = call i32 @CombineTransform(i32* %7, i32* %6, i32* %5)
  %32 = call i32 @ok_int(i32 %31, i32 1)
  %33 = load i32, i32* %7, align 4
  %34 = load float, float* %4, align 4
  %35 = load float, float* %4, align 4
  %36 = call i32 @ok_xform(i32 %33, float %34, float %35, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %37 = call i32 @set_xform(i32* %5, double 0.000000e+00, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %38 = load float, float* %3, align 4
  %39 = call i32 @set_xform(i32* %6, double 0.000000e+00, float 0.000000e+00, float %38, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %40 = call i32 @CombineTransform(i32* %7, i32* %5, i32* %6)
  %41 = call i32 @ok_int(i32 %40, i32 1)
  %42 = load i32, i32* %7, align 4
  %43 = load float, float* %4, align 4
  %44 = load float, float* %4, align 4
  %45 = call i32 @ok_xform(i32 %42, float %43, float 0.000000e+00, float %44, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %46 = call i32 @CombineTransform(i32* %7, i32* %6, i32* %5)
  %47 = call i32 @ok_int(i32 %46, i32 1)
  %48 = load i32, i32* %7, align 4
  %49 = load float, float* %4, align 4
  %50 = load float, float* %4, align 4
  %51 = call i32 @ok_xform(i32 %48, float 0.000000e+00, float 0.000000e+00, float %49, float %50, double 0.000000e+00, double 0.000000e+00)
  %52 = call i32 @set_xform(i32* %5, double 0.000000e+00, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %53 = load float, float* %3, align 4
  %54 = fpext float %53 to double
  %55 = call i32 @set_xform(i32* %6, double 0.000000e+00, float 0.000000e+00, float 0.000000e+00, double %54, double 0.000000e+00, double 0.000000e+00)
  %56 = call i32 @CombineTransform(i32* %7, i32* %5, i32* %6)
  %57 = call i32 @ok_int(i32 %56, i32 1)
  %58 = load i32, i32* %7, align 4
  %59 = load float, float* %4, align 4
  %60 = call i32 @ok_xform(i32 %58, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %59, double 0.000000e+00, double 0.000000e+00)
  %61 = call i32 @CombineTransform(i32* %7, i32* %6, i32* %5)
  %62 = call i32 @ok_int(i32 %61, i32 1)
  %63 = load i32, i32* %7, align 4
  %64 = load float, float* %4, align 4
  %65 = call i32 @ok_xform(i32 %63, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %64, double 0.000000e+00, double 0.000000e+00)
  %66 = call i32 @set_xform(i32* %5, double 0.000000e+00, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %67 = load float, float* %3, align 4
  %68 = fpext float %67 to double
  %69 = load float, float* %3, align 4
  %70 = call i32 @set_xform(i32* %6, double %68, float %69, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %71 = call i32 @CombineTransform(i32* %7, i32* %5, i32* %6)
  %72 = call i32 @ok_int(i32 %71, i32 1)
  %73 = load i32, i32* %7, align 4
  %74 = load float, float* %4, align 4
  %75 = load float, float* %4, align 4
  %76 = load float, float* %4, align 4
  %77 = load float, float* %4, align 4
  %78 = call i32 @ok_xform(i32 %73, float %74, float %75, float %76, float %77, double 0.000000e+00, double 0.000000e+00)
  %79 = call i32 @CombineTransform(i32* %7, i32* %6, i32* %5)
  %80 = call i32 @ok_int(i32 %79, i32 1)
  %81 = load i32, i32* %7, align 4
  %82 = load float, float* %4, align 4
  %83 = load float, float* %4, align 4
  %84 = call i32 @ok_xform(i32 %81, float %82, float %83, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %85 = call i32 @set_xform(i32* %5, double 0.000000e+00, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %86 = load float, float* %3, align 4
  %87 = fpext float %86 to double
  %88 = load float, float* %3, align 4
  %89 = call i32 @set_xform(i32* %6, double %87, float 0.000000e+00, float %88, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %90 = call i32 @CombineTransform(i32* %7, i32* %5, i32* %6)
  %91 = call i32 @ok_int(i32 %90, i32 1)
  %92 = load i32, i32* %7, align 4
  %93 = load float, float* %4, align 4
  %94 = load float, float* %4, align 4
  %95 = call i32 @ok_xform(i32 %92, float %93, float 0.000000e+00, float %94, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %96 = call i32 @CombineTransform(i32* %7, i32* %6, i32* %5)
  %97 = call i32 @ok_int(i32 %96, i32 1)
  %98 = load i32, i32* %7, align 4
  %99 = load float, float* %4, align 4
  %100 = load float, float* %4, align 4
  %101 = load float, float* %4, align 4
  %102 = load float, float* %4, align 4
  %103 = call i32 @ok_xform(i32 %98, float %99, float %100, float %101, float %102, double 0.000000e+00, double 0.000000e+00)
  %104 = call i32 @set_xform(i32* %5, double 0.000000e+00, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %105 = load float, float* %3, align 4
  %106 = fpext float %105 to double
  %107 = load float, float* %3, align 4
  %108 = fpext float %107 to double
  %109 = call i32 @set_xform(i32* %6, double %106, float 0.000000e+00, float 0.000000e+00, double %108, double 0.000000e+00, double 0.000000e+00)
  %110 = call i32 @CombineTransform(i32* %7, i32* %5, i32* %6)
  %111 = call i32 @ok_int(i32 %110, i32 1)
  %112 = load i32, i32* %7, align 4
  %113 = load float, float* %4, align 4
  %114 = load float, float* %4, align 4
  %115 = call i32 @ok_xform(i32 %112, float %113, float 0.000000e+00, float 0.000000e+00, float %114, double 0.000000e+00, double 0.000000e+00)
  %116 = call i32 @CombineTransform(i32* %7, i32* %6, i32* %5)
  %117 = call i32 @ok_int(i32 %116, i32 1)
  %118 = load i32, i32* %7, align 4
  %119 = load float, float* %4, align 4
  %120 = load float, float* %4, align 4
  %121 = call i32 @ok_xform(i32 %118, float %119, float 0.000000e+00, float 0.000000e+00, float %120, double 0.000000e+00, double 0.000000e+00)
  %122 = call i32 @set_xform(i32* %5, double 0.000000e+00, float 0.000000e+00, float 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %123 = load float, float* %3, align 4
  %124 = load float, float* %3, align 4
  %125 = call i32 @set_xform(i32* %6, double 0.000000e+00, float %123, float %124, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %126 = call i32 @CombineTransform(i32* %7, i32* %5, i32* %6)
  %127 = call i32 @ok_int(i32 %126, i32 1)
  %128 = load i32, i32* %7, align 4
  %129 = load float, float* %4, align 4
  %130 = load float, float* %4, align 4
  %131 = load float, float* %4, align 4
  %132 = load float, float* %4, align 4
  %133 = call i32 @ok_xform(i32 %128, float %129, float %130, float %131, float %132, double 0.000000e+00, double 0.000000e+00)
  %134 = call i32 @CombineTransform(i32* %7, i32* %6, i32* %5)
  %135 = call i32 @ok_int(i32 %134, i32 1)
  %136 = load i32, i32* %7, align 4
  %137 = load float, float* %4, align 4
  %138 = load float, float* %4, align 4
  %139 = load float, float* %4, align 4
  %140 = load float, float* %4, align 4
  %141 = call i32 @ok_xform(i32 %136, float %137, float %138, float %139, float %140, double 0.000000e+00, double 0.000000e+00)
  ret void
}

declare dso_local i32 @set_xform(i32*, double, float, float, double, double, double) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @CombineTransform(i32*, i32*, i32*) #1

declare dso_local i32 @ok_xform(i32, float, float, float, float, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
