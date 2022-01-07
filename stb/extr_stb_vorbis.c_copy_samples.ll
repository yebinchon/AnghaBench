; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_copy_samples.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_copy_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@temp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*, float*, i32)* @copy_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_samples(i16* %0, float* %1, i32 %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @check_endianness()
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %39, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load i32, i32* @temp, align 4
  %16 = call i32 @FASTDEF(i32 %15)
  %17 = load i32, i32* @temp, align 4
  %18 = load float*, float** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  %22 = load float, float* %21, align 4
  %23 = call i32 @FAST_SCALED_FLOAT_TO_INT(i32 %17, float %22, i32 15)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 32768
  %26 = icmp ugt i32 %25, 65535
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 -32768, i32 32767
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %27, %14
  %33 = load i32, i32* %8, align 4
  %34 = trunc i32 %33 to i16
  %35 = load i16*, i16** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %35, i64 %37
  store i16 %34, i16* %38, align 2
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %10

42:                                               ; preds = %10
  ret void
}

declare dso_local i32 @check_endianness(...) #1

declare dso_local i32 @FASTDEF(i32) #1

declare dso_local i32 @FAST_SCALED_FLOAT_TO_INT(i32, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
