; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_showLatencyDistSamples.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_showLatencyDistSamples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.distsamples = type { i32, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"\1B[38;5;0m\00", align 1
@spectrum_palette_size = common dso_local global i32 0, align 4
@spectrum_palette = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"\1B[48;5;%dm%c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\1B[0m\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @showLatencyDistSamples(%struct.distsamples* %0, i64 %1) #0 {
  %3 = alloca %struct.distsamples*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.distsamples* %0, %struct.distsamples** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %52, %2
  %10 = load %struct.distsamples*, %struct.distsamples** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.distsamples, %struct.distsamples* %10, i64 %12
  %14 = getelementptr inbounds %struct.distsamples, %struct.distsamples* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = sitofp i64 %15 to float
  %17 = load i64, i64* %4, align 8
  %18 = sitofp i64 %17 to float
  %19 = fdiv float %16, %18
  %20 = load i32, i32* @spectrum_palette_size, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sitofp i32 %21 to float
  %23 = fmul float %19, %22
  %24 = call i32 @ceil(float %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** @spectrum_palette, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.distsamples*, %struct.distsamples** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.distsamples, %struct.distsamples* %31, i64 %33
  %35 = getelementptr inbounds %struct.distsamples, %struct.distsamples* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %36)
  %38 = load %struct.distsamples*, %struct.distsamples** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.distsamples, %struct.distsamples* %38, i64 %40
  %42 = getelementptr inbounds %struct.distsamples, %struct.distsamples* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.distsamples*, %struct.distsamples** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.distsamples, %struct.distsamples* %43, i64 %45
  %47 = getelementptr inbounds %struct.distsamples, %struct.distsamples* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %9
  br label %55

51:                                               ; preds = %9
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %9

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @stdout, align 4
  %58 = call i32 @fflush(i32 %57)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ceil(float) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
