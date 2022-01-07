; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_araw.c_F32IDecode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_araw.c_F32IDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @F32IDecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @F32IDecode(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.anon, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to float*
  store float* %11, float** %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %38, %3
  %13 = load i64, i64* %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @GetDWBE(i32* %18)
  %20 = bitcast %union.anon* %9 to i32*
  store i32 %19, i32* %20, align 4
  %21 = bitcast %union.anon* %9 to float*
  %22 = load float, float* %21, align 4
  %23 = call i32 @isfinite(float %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = bitcast %union.anon* %9 to float*
  store float 0.000000e+00, float* %30, align 4
  br label %31

31:                                               ; preds = %29, %17
  %32 = bitcast %union.anon* %9 to float*
  %33 = load float, float* %32, align 4
  %34 = load float*, float** %7, align 8
  %35 = getelementptr inbounds float, float* %34, i32 1
  store float* %35, float** %7, align 8
  store float %33, float* %34, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %12

41:                                               ; preds = %12
  ret void
}

declare dso_local i32 @GetDWBE(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isfinite(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
