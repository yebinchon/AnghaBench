; ModuleID = '/home/carl/AnghaBench/redis/src/extr_lolwut5.c_lwDrawSchotter.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_lolwut5.c_lwDrawSchotter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RAND_MAX = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lwDrawSchotter(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 4
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 0
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %27, 2
  %29 = sub nsw i32 %26, %28
  %30 = sitofp i32 %29 to float
  %31 = load i32, i32* %5, align 4
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %30, %32
  store float %33, float* %9, align 4
  %34 = load float, float* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sitofp i32 %35 to float
  %37 = fmul float %34, %36
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %38, 2
  %40 = sitofp i32 %39 to float
  %41 = fadd float %37, %40
  %42 = fptosi float %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32* @lwCreateCanvas(i32 %43, i32 %44, i32 0)
  store i32* %45, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %160, %3
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %163

50:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %156, %50
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %159

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = sitofp i32 %56 to float
  %58 = load float, float* %9, align 4
  %59 = fmul float %57, %58
  %60 = load float, float* %9, align 4
  %61 = fdiv float %60, 2.000000e+00
  %62 = fadd float %59, %61
  %63 = load i32, i32* %8, align 4
  %64 = sitofp i32 %63 to float
  %65 = fadd float %62, %64
  %66 = fptosi float %65 to i32
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sitofp i32 %67 to float
  %69 = load float, float* %9, align 4
  %70 = fmul float %68, %69
  %71 = load float, float* %9, align 4
  %72 = fdiv float %71, 2.000000e+00
  %73 = fadd float %70, %72
  %74 = load i32, i32* %8, align 4
  %75 = sitofp i32 %74 to float
  %76 = fadd float %73, %75
  %77 = fptosi float %76 to i32
  store i32 %77, i32* %15, align 4
  store float 0.000000e+00, float* %16, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %149

80:                                               ; preds = %55
  %81 = call i32 (...) @rand()
  %82 = sitofp i32 %81 to float
  %83 = load float, float* @RAND_MAX, align 4
  %84 = fdiv float %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = sitofp i32 %85 to float
  %87 = fdiv float %84, %86
  %88 = load i32, i32* %12, align 4
  %89 = sitofp i32 %88 to float
  %90 = fmul float %87, %89
  store float %90, float* %17, align 4
  %91 = call i32 (...) @rand()
  %92 = sitofp i32 %91 to float
  %93 = load float, float* @RAND_MAX, align 4
  %94 = fdiv float %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = sitofp i32 %95 to float
  %97 = fdiv float %94, %96
  %98 = load i32, i32* %12, align 4
  %99 = sitofp i32 %98 to float
  %100 = fmul float %97, %99
  store float %100, float* %18, align 4
  %101 = call i32 (...) @rand()
  %102 = sitofp i32 %101 to float
  %103 = load float, float* @RAND_MAX, align 4
  %104 = fdiv float %102, %103
  %105 = load i32, i32* %6, align 4
  %106 = sitofp i32 %105 to float
  %107 = fdiv float %104, %106
  %108 = load i32, i32* %12, align 4
  %109 = sitofp i32 %108 to float
  %110 = fmul float %107, %109
  store float %110, float* %19, align 4
  %111 = call i32 (...) @rand()
  %112 = srem i32 %111, 2
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %80
  %115 = load float, float* %17, align 4
  %116 = fneg float %115
  store float %116, float* %17, align 4
  br label %117

117:                                              ; preds = %114, %80
  %118 = call i32 (...) @rand()
  %119 = srem i32 %118, 2
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load float, float* %18, align 4
  %123 = fneg float %122
  store float %123, float* %18, align 4
  br label %124

124:                                              ; preds = %121, %117
  %125 = call i32 (...) @rand()
  %126 = srem i32 %125, 2
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load float, float* %19, align 4
  %130 = fneg float %129
  store float %130, float* %19, align 4
  br label %131

131:                                              ; preds = %128, %124
  %132 = load float, float* %17, align 4
  store float %132, float* %16, align 4
  %133 = load float, float* %18, align 4
  %134 = load float, float* %9, align 4
  %135 = fmul float %133, %134
  %136 = fdiv float %135, 3.000000e+00
  %137 = load i32, i32* %14, align 4
  %138 = sitofp i32 %137 to float
  %139 = fadd float %138, %136
  %140 = fptosi float %139 to i32
  store i32 %140, i32* %14, align 4
  %141 = load float, float* %19, align 4
  %142 = load float, float* %9, align 4
  %143 = fmul float %141, %142
  %144 = fdiv float %143, 3.000000e+00
  %145 = load i32, i32* %15, align 4
  %146 = sitofp i32 %145 to float
  %147 = fadd float %146, %144
  %148 = fptosi float %147 to i32
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %131, %55
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load float, float* %9, align 4
  %154 = load float, float* %16, align 4
  %155 = call i32 @lwDrawSquare(i32* %150, i32 %151, i32 %152, float %153, float %154, i32 1)
  br label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %13, align 4
  br label %51

159:                                              ; preds = %51
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %46

163:                                              ; preds = %46
  %164 = load i32*, i32** %11, align 8
  ret i32* %164
}

declare dso_local i32* @lwCreateCanvas(i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @lwDrawSquare(i32*, i32, i32, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
