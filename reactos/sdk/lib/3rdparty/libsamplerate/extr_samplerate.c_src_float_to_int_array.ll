; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_samplerate.c_src_float_to_int_array.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_samplerate.c_src_float_to_int_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_CLIPS_POSITIVE = common dso_local global i64 0, align 8
@CPU_CLIPS_NEGATIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @src_float_to_int_array(float* %0, i32* %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store float* %0, float** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %42, %37, %26, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = load float*, float** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %14, i64 %16
  %18 = load float, float* %17, align 4
  %19 = fpext float %18 to double
  %20 = fmul double %19, 0x41E0000000000000
  store double %20, double* %7, align 8
  %21 = load i64, i64* @CPU_CLIPS_POSITIVE, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load double, double* %7, align 8
  %25 = fcmp oge double %24, 0x41DFFFFFFFC00000
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 2147483647, i32* %30, align 4
  br label %8

31:                                               ; preds = %23, %11
  %32 = load i64, i64* @CPU_CLIPS_NEGATIVE, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load double, double* %7, align 8
  %36 = fcmp ole double %35, 0xC1E0000000000000
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 -2147483648, i32* %41, align 4
  br label %8

42:                                               ; preds = %34, %31
  %43 = load double, double* %7, align 8
  %44 = call i32 @lrint(double %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  br label %8

49:                                               ; preds = %8
  ret void
}

declare dso_local i32 @lrint(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
