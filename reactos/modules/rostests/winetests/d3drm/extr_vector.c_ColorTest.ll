; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_vector.c_ColorTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_vector.c_ColorTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Expected color=%x, Got color=%x\0A\00", align 1
@admit_error = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Expected=%f, Got=%f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ColorTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ColorTest() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store float 0x3FE99999A0000000, float* %6, align 4
  store float 0x3FD3333340000000, float* %7, align 4
  store float 0x3FE19999A0000000, float* %8, align 4
  store float 0x41EFF989A0000000, float* %2, align 4
  %10 = load float, float* %6, align 4
  %11 = load float, float* %7, align 4
  %12 = load float, float* %8, align 4
  %13 = call float @D3DRMCreateColorRGB(float %10, float %11, float %12)
  store float %13, float* %3, align 4
  %14 = load float, float* %2, align 4
  %15 = load float, float* %3, align 4
  %16 = fcmp oeq float %14, %15
  %17 = zext i1 %16 to i32
  %18 = load float, float* %2, align 4
  %19 = load float, float* %3, align 4
  %20 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), float %18, float %19)
  store float 0x3FB99999A0000000, float* %6, align 4
  store float 0x3FD99999A0000000, float* %7, align 4
  store float 0x3FE6666660000000, float* %8, align 4
  store float 0x3FE28F5C20000000, float* %9, align 4
  store float 0x41E2632CE0000000, float* %2, align 4
  %21 = load float, float* %6, align 4
  %22 = load float, float* %7, align 4
  %23 = load float, float* %8, align 4
  %24 = load float, float* %9, align 4
  %25 = call float @D3DRMCreateColorRGBA(float %21, float %22, float %23, float %24)
  store float %25, float* %3, align 4
  %26 = load float, float* %2, align 4
  %27 = load float, float* %3, align 4
  %28 = fcmp oeq float %26, %27
  %29 = zext i1 %28 to i32
  %30 = load float, float* %2, align 4
  %31 = load float, float* %3, align 4
  %32 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), float %30, float %31)
  store float 0xBFEC28F5C0000000, float* %6, align 4
  store float 0x3FD99999A0000000, float* %7, align 4
  store float 0x3FE3333340000000, float* %8, align 4
  store float 0x3FDA3D70A0000000, float* %9, align 4
  store float 0x41DA0019A0000000, float* %2, align 4
  %33 = load float, float* %6, align 4
  %34 = load float, float* %7, align 4
  %35 = load float, float* %8, align 4
  %36 = load float, float* %9, align 4
  %37 = call float @D3DRMCreateColorRGBA(float %33, float %34, float %35, float %36)
  store float %37, float* %3, align 4
  %38 = load float, float* %2, align 4
  %39 = load float, float* %3, align 4
  %40 = fcmp oeq float %38, %39
  %41 = zext i1 %40 to i32
  %42 = load float, float* %2, align 4
  %43 = load float, float* %3, align 4
  %44 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), float %42, float %43)
  store float 0x4002F5C280000000, float* %6, align 4
  store float 0x3FD99999A0000000, float* %7, align 4
  store float 0x3FE3333340000000, float* %8, align 4
  store float 0x3FDA3D70A0000000, float* %9, align 4
  store float 0x41DA3FD9A0000000, float* %2, align 4
  %45 = load float, float* %6, align 4
  %46 = load float, float* %7, align 4
  %47 = load float, float* %8, align 4
  %48 = load float, float* %9, align 4
  %49 = call float @D3DRMCreateColorRGBA(float %45, float %46, float %47, float %48)
  store float %49, float* %3, align 4
  %50 = load float, float* %2, align 4
  %51 = load float, float* %3, align 4
  %52 = fcmp oeq float %50, %51
  %53 = zext i1 %52 to i32
  %54 = load float, float* %2, align 4
  %55 = load float, float* %3, align 4
  %56 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), float %54, float %55)
  store float 0x41AC924380000000, float* %1, align 4
  store float 0x3FAC1C1C20000000, float* %4, align 4
  %57 = load float, float* %1, align 4
  %58 = call float @D3DRMColorGetAlpha(float %57)
  store float %58, float* %5, align 4
  %59 = load float, float* %4, align 4
  %60 = load float, float* %5, align 4
  %61 = fsub float %59, %60
  %62 = call i64 @fabs(float %61)
  %63 = load i64, i64* @admit_error, align 8
  %64 = icmp slt i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load float, float* %4, align 4
  %67 = load float, float* %5, align 4
  %68 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), float %66, float %67)
  store float 0x41E9054280000000, float* %1, align 4
  store float 0x3FD5555560000000, float* %4, align 4
  %69 = load float, float* %1, align 4
  %70 = call float @D3DRMColorGetBlue(float %69)
  store float %70, float* %5, align 4
  %71 = load float, float* %4, align 4
  %72 = load float, float* %5, align 4
  %73 = fsub float %71, %72
  %74 = call i64 @fabs(float %73)
  %75 = load i64, i64* @admit_error, align 8
  %76 = icmp slt i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load float, float* %4, align 4
  %79 = load float, float* %5, align 4
  %80 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), float %78, float %79)
  store float 0x41E5B2E240000000, float* %1, align 4
  store float 0x3FB2121220000000, float* %4, align 4
  %81 = load float, float* %1, align 4
  %82 = call float @D3DRMColorGetGreen(float %81)
  store float %82, float* %5, align 4
  %83 = load float, float* %4, align 4
  %84 = load float, float* %5, align 4
  %85 = fsub float %83, %84
  %86 = call i64 @fabs(float %85)
  %87 = load i64, i64* @admit_error, align 8
  %88 = icmp slt i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load float, float* %4, align 4
  %91 = load float, float* %5, align 4
  %92 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), float %90, float %91)
  store float 0x41E6C5AF40000000, float* %1, align 4
  store float 0x3FC69696A0000000, float* %4, align 4
  %93 = load float, float* %1, align 4
  %94 = call float @D3DRMColorGetRed(float %93)
  store float %94, float* %5, align 4
  %95 = load float, float* %4, align 4
  %96 = load float, float* %5, align 4
  %97 = fsub float %95, %96
  %98 = call i64 @fabs(float %97)
  %99 = load i64, i64* @admit_error, align 8
  %100 = icmp slt i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load float, float* %4, align 4
  %103 = load float, float* %5, align 4
  %104 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), float %102, float %103)
  ret void
}

declare dso_local float @D3DRMCreateColorRGB(float, float, float) #1

declare dso_local i32 @ok(i32, i8*, float, float) #1

declare dso_local float @D3DRMCreateColorRGBA(float, float, float, float) #1

declare dso_local float @D3DRMColorGetAlpha(float) #1

declare dso_local i64 @fabs(float) #1

declare dso_local float @D3DRMColorGetBlue(float) #1

declare dso_local float @D3DRMColorGetGreen(float) #1

declare dso_local float @D3DRMColorGetRed(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
