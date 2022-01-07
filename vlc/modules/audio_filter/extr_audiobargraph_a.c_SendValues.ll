; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_audiobargraph_a.c_SendValues.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_audiobargraph_a.c_SendValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%f:\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"audiobargraph_v-i_values\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, i32)* @SendValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendValues(i32* %0, float* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load i64, i64* %8, align 8
  %16 = icmp uge i64 %15, 256
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %36

18:                                               ; preds = %14
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i64, i64* %8, align 8
  %23 = sub i64 256, %22
  %24 = trunc i64 %23 to i32
  %25 = load float*, float** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = call i64 @snprintf(i8* %21, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), float %29)
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %10

36:                                               ; preds = %17, %10
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @vlc_object_instance(i32* %37)
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %40 = call i32 @var_SetString(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  ret void
}

declare dso_local i64 @snprintf(i8*, i32, i8*, float) #1

declare dso_local i32 @var_SetString(i32, i8*, i8*) #1

declare dso_local i32 @vlc_object_instance(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
