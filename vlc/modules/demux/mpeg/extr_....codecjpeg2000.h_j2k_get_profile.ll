; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_....codecjpeg2000.h_j2k_get_profile.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_....codecjpeg2000.h_j2k_get_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@J2K_PROFILE_SD = common dso_local global i32 0, align 4
@J2K_PROFILE_HD = common dso_local global i32 0, align 4
@J2K_PROFILE_3G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @j2k_get_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j2k_get_profile(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = udiv i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ule i32 %20, 414720
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  %24 = icmp ult i32 %23, 50
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @J2K_PROFILE_SD, align 4
  store i32 %26, i32* %6, align 4
  br label %51

27:                                               ; preds = %22, %5
  %28 = load i32, i32* %12, align 4
  %29 = icmp ule i32 %28, 921600
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = icmp ult i32 %31, 60
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @J2K_PROFILE_HD, align 4
  store i32 %37, i32* %6, align 4
  br label %51

38:                                               ; preds = %33, %30, %27
  %39 = load i32, i32* %12, align 4
  %40 = icmp ule i32 %39, 2073600
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %13, align 4
  %43 = icmp ult i32 %42, 60
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @J2K_PROFILE_HD, align 4
  store i32 %48, i32* %6, align 4
  br label %51

49:                                               ; preds = %44, %41, %38
  %50 = load i32, i32* @J2K_PROFILE_3G, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %47, %36, %25
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
