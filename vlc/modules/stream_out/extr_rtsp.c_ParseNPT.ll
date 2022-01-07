; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtsp.c_ParseNPT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtsp.c_ParseNPT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_NUMERIC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%u:%u:%f\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ParseNPT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseNPT(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @LC_NUMERIC_MASK, align 4
  %9 = call i64 @newlocale(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @uselocale(i64 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 (i8*, i8*, ...) @sscanf(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32* %6, float* %7)
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = mul i32 %16, 60
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %17, %18
  %20 = mul i32 %19, 60
  %21 = uitofp i32 %20 to float
  %22 = load float, float* %7, align 4
  %23 = fadd float %22, %21
  store float %23, float* %7, align 4
  br label %30

24:                                               ; preds = %1
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 (i8*, i8*, ...) @sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %7)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store float -1.000000e+00, float* %7, align 4
  br label %29

29:                                               ; preds = %28, %24
  br label %30

30:                                               ; preds = %29, %15
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @uselocale(i64 %34)
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @freelocale(i64 %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = load float, float* %7, align 4
  %40 = fcmp olt float %39, 0.000000e+00
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %45

42:                                               ; preds = %38
  %43 = load float, float* %7, align 4
  %44 = call i32 @vlc_tick_from_sec(float %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = phi i32 [ -1, %41 ], [ %44, %42 ]
  ret i32 %46
}

declare dso_local i64 @newlocale(i32, i8*, i32*) #1

declare dso_local i64 @uselocale(i64) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @freelocale(i64) #1

declare dso_local i32 @vlc_tick_from_sec(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
