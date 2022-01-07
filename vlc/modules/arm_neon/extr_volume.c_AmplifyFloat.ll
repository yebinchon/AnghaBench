; ModuleID = '/home/carl/AnghaBench/vlc/modules/arm_neon/extr_volume.c_AmplifyFloat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/arm_neon/extr_volume.c_AmplifyFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, float)* @AmplifyFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AmplifyFloat(i32* %0, %struct.TYPE_3__* %1, float %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store float %2, float* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to float*
  store float* %12, float** %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load float, float* %6, align 4
  %17 = fpext float %16 to double
  %18 = fcmp oeq double %17, 1.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %69

20:                                               ; preds = %3
  %21 = load float*, float** %7, align 8
  %22 = ptrtoint float* %21 to i64
  %23 = and i64 %22, 3
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %33, %20
  %28 = load float*, float** %7, align 8
  %29 = ptrtoint float* %28 to i64
  %30 = and i64 %29, 12
  %31 = call i64 @unlikely(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load float, float* %6, align 4
  %35 = load float*, float** %7, align 8
  %36 = getelementptr inbounds float, float* %35, i32 1
  store float* %36, float** %7, align 8
  %37 = load float, float* %35, align 4
  %38 = fmul float %37, %34
  store float %38, float* %35, align 4
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 %39, 4
  store i64 %40, i64* %8, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load i64, i64* %8, align 8
  %43 = and i64 %42, 3
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %47

47:                                               ; preds = %52, %41
  %48 = load i64, i64* %8, align 8
  %49 = and i64 %48, 12
  %50 = call i64 @unlikely(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %53, 4
  store i64 %54, i64* %8, align 8
  %55 = load float, float* %6, align 4
  %56 = load float*, float** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = udiv i64 %57, 4
  %59 = getelementptr inbounds float, float* %56, i64 %58
  %60 = load float, float* %59, align 4
  %61 = fmul float %60, %55
  store float %61, float* %59, align 4
  br label %47

62:                                               ; preds = %47
  %63 = load float*, float** %7, align 8
  %64 = load float*, float** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load float, float* %6, align 4
  %67 = call i32 @amplify_float_arm_neon(float* %63, float* %64, i64 %65, float %66)
  %68 = load i32*, i32** %4, align 8
  br label %69

69:                                               ; preds = %62, %19
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @amplify_float_arm_neon(float*, float*, i64, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
