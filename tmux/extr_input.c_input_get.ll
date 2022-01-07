; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_get.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i64, %struct.input_param* }
%struct.input_param = type { i64, i32 }

@INPUT_MISSING = common dso_local global i64 0, align 8
@INPUT_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_ctx*, i64, i32, i32)* @input_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_get(%struct.input_ctx* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.input_param*, align 8
  %11 = alloca i32, align 4
  store %struct.input_ctx* %0, %struct.input_ctx** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.input_ctx*, %struct.input_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %5, align 4
  br label %50

19:                                               ; preds = %4
  %20 = load %struct.input_ctx*, %struct.input_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %20, i32 0, i32 1
  %22 = load %struct.input_param*, %struct.input_param** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.input_param, %struct.input_param* %22, i64 %23
  store %struct.input_param* %24, %struct.input_param** %10, align 8
  %25 = load %struct.input_param*, %struct.input_param** %10, align 8
  %26 = getelementptr inbounds %struct.input_param, %struct.input_param* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @INPUT_MISSING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %5, align 4
  br label %50

32:                                               ; preds = %19
  %33 = load %struct.input_param*, %struct.input_param** %10, align 8
  %34 = getelementptr inbounds %struct.input_param, %struct.input_param* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @INPUT_STRING, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %50

39:                                               ; preds = %32
  %40 = load %struct.input_param*, %struct.input_param** %10, align 8
  %41 = getelementptr inbounds %struct.input_param, %struct.input_param* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %5, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %46, %38, %30, %17
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
