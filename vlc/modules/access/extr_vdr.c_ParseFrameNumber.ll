; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_ParseFrameNumber.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_ParseFrameNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%u:%u:%u.%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, float)* @ParseFrameNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseFrameNumber(i8* %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store float %1, float* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp uge i32 %15, 3
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load i32, i32* %10, align 4
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %22, 3600
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 60
  %26 = add nsw i32 %23, %25
  %27 = load i32, i32* %8, align 4
  %28 = add i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = sitofp i32 %29 to double
  %31 = load float, float* %5, align 4
  %32 = fpext float %31 to double
  %33 = fmul double %30, %32
  %34 = fptosi double %33 to i32
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @__MAX(i32 1, i32 %35)
  %37 = add nsw i32 %34, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %2
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strtoll(i8* %40, i32* null, i32 10)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @__MAX(i32 1, i32 %42)
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
