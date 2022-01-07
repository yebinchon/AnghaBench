; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_cpu.c_vlc_CPU_init.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_cpu.c_vlc_CPU_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_CPU_MMX = common dso_local global i32 0, align 4
@VLC_CPU_MMXEXT = common dso_local global i32 0, align 4
@VLC_CPU_SSE = common dso_local global i32 0, align 4
@VLC_CPU_SSE2 = common dso_local global i32 0, align 4
@VLC_CPU_SSE3 = common dso_local global i32 0, align 4
@VLC_CPU_SSSE3 = common dso_local global i32 0, align 4
@VLC_CPU_SSE4_1 = common dso_local global i32 0, align 4
@VLC_CPU_SSE4_2 = common dso_local global i32 0, align 4
@VLC_CPU_3dNOW = common dso_local global i32 0, align 4
@cpu_flags = common dso_local global i32 0, align 4
@Altivec_test = common dso_local global i32 0, align 4
@CPU_ALTIVEC = common dso_local global i32 0, align 4
@CTL_HW = common dso_local global i32 0, align 4
@CTL_MACHDEP = common dso_local global i32 0, align 4
@HW_VECTORUNIT = common dso_local global i32 0, align 4
@SSE_test = common dso_local global i32 0, align 4
@ThreeD_Now_test = common dso_local global i32 0, align 4
@VLC_CPU_ALTIVEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vlc_CPU_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_CPU_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A\09", "={ax},={bx},={cx},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 0) #1, !srcloc !2
  %8 = extractvalue { i32, i32, i32, i32 } %7, 0
  %9 = extractvalue { i32, i32, i32, i32 } %7, 1
  %10 = extractvalue { i32, i32, i32, i32 } %7, 2
  %11 = extractvalue { i32, i32, i32, i32 } %7, 3
  store i32 %8, i32* %2, align 4
  store i32 %9, i32* %3, align 4
  store i32 %10, i32* %4, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 1752462657
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 1145913699
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1769238117
  br label %20

20:                                               ; preds = %17, %14, %0
  %21 = phi i1 [ false, %14 ], [ false, %0 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A\09", "={ax},={bx},={cx},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 1) #1, !srcloc !3
  %24 = extractvalue { i32, i32, i32, i32 } %23, 0
  %25 = extractvalue { i32, i32, i32, i32 } %23, 1
  %26 = extractvalue { i32, i32, i32, i32 } %23, 2
  %27 = extractvalue { i32, i32, i32, i32 } %23, 3
  store i32 %24, i32* %2, align 4
  store i32 %25, i32* %3, align 4
  store i32 %26, i32* %4, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @VLC_CPU_MMX, align 4
  %29 = load i32, i32* %1, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 33554432
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load i32, i32* @VLC_CPU_MMXEXT, align 4
  %36 = load i32, i32* %1, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %34, %20
  %39 = load i32, i32* @VLC_CPU_SSE, align 4
  %40 = load i32, i32* %1, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 67108864
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @VLC_CPU_SSE2, align 4
  %47 = load i32, i32* %1, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @VLC_CPU_SSE3, align 4
  %55 = load i32, i32* %1, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 512
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @VLC_CPU_SSSE3, align 4
  %63 = load i32, i32* %1, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %1, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 524288
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* @VLC_CPU_SSE4_1, align 4
  %71 = load i32, i32* %1, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 1048576
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* @VLC_CPU_SSE4_2, align 4
  %79 = load i32, i32* %1, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %1, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A\09", "={ax},={bx},={cx},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 -2147483648) #1, !srcloc !4
  %83 = extractvalue { i32, i32, i32, i32 } %82, 0
  %84 = extractvalue { i32, i32, i32, i32 } %82, 1
  %85 = extractvalue { i32, i32, i32, i32 } %82, 2
  %86 = extractvalue { i32, i32, i32, i32 } %82, 3
  store i32 %83, i32* %2, align 4
  store i32 %84, i32* %3, align 4
  store i32 %85, i32* %4, align 4
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %2, align 4
  %88 = icmp ult i32 %87, -2147483647
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %110

90:                                               ; preds = %81
  %91 = call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A\09", "={ax},={bx},={cx},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 -2147483647) #1, !srcloc !5
  %92 = extractvalue { i32, i32, i32, i32 } %91, 0
  %93 = extractvalue { i32, i32, i32, i32 } %91, 1
  %94 = extractvalue { i32, i32, i32, i32 } %91, 2
  %95 = extractvalue { i32, i32, i32, i32 } %91, 3
  store i32 %92, i32* %2, align 4
  store i32 %93, i32* %3, align 4
  store i32 %94, i32* %4, align 4
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @VLC_CPU_3dNOW, align 4
  %97 = load i32, i32* %1, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %90
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, 4194304
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* @VLC_CPU_MMXEXT, align 4
  %107 = load i32, i32* %1, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %1, align 4
  br label %109

109:                                              ; preds = %105, %101, %90
  br label %110

110:                                              ; preds = %109, %89
  %111 = load i32, i32* %1, align 4
  store i32 %111, i32* @cpu_flags, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 831, i32 839}
!3 = !{i32 1060, i32 1068}
!4 = !{i32 1733, i32 1741}
!5 = !{i32 1899, i32 1907}
