; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_format_bytes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_format_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@format_bytes.sFmtSmall = internal constant [3 x i8] c"%u\00", align 1
@format_bytes.sFmtBig = internal constant [8 x i8] c"%.1f %s\00", align 1
@IDS_UNIT_GB = common dso_local global i32 0, align 4
@IDS_UNIT_MB = common dso_local global i32 0, align 4
@IDS_UNIT_KB = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @format_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_bytes(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 1024
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sitofp i32 %12 to float
  %14 = call i32 (i32, i8*, float, ...) @sprintfW(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @format_bytes.sFmtSmall, i64 0, i64 0), float %13)
  br label %49

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 1073741824
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = sitofp i32 %19 to float
  %21 = fdiv float %20, 0x41D0000000000000
  %22 = fadd float %21, 5.000000e-01
  store float %22, float* %7, align 4
  %23 = load i32, i32* @IDS_UNIT_GB, align 4
  store i32 %23, i32* %6, align 4
  br label %40

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 1048576
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = sitofp i32 %28 to float
  %30 = fdiv float %29, 0x4130000000000000
  %31 = fadd float %30, 5.000000e-01
  store float %31, float* %7, align 4
  %32 = load i32, i32* @IDS_UNIT_MB, align 4
  store i32 %32, i32* %6, align 4
  br label %39

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = sitofp i32 %34 to float
  %36 = fdiv float %35, 1.024000e+03
  %37 = fadd float %36, 5.000000e-01
  store float %37, float* %7, align 4
  %38 = load i32, i32* @IDS_UNIT_KB, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %27
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %42 = load i32, i32* %6, align 4
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %44 = call i32 @LoadStringW(i32 %41, i32 %42, i8* %43, i32 64)
  %45 = load i32, i32* %3, align 4
  %46 = load float, float* %7, align 4
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %48 = call i32 (i32, i8*, float, ...) @sprintfW(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @format_bytes.sFmtBig, i64 0, i64 0), float %46, i8* %47)
  br label %49

49:                                               ; preds = %40, %10
  ret void
}

declare dso_local i32 @sprintfW(i32, i8*, float, ...) #1

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
