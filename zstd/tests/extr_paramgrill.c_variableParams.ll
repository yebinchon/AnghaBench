; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_variableParams.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_variableParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@NUM_PARAMS = common dso_local global i64 0, align 8
@PARAM_UNSET = common dso_local global i64 0, align 8
@fadt_ind = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, i32)* @variableParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @variableParams(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64* %0, i64** %9, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %38, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @NUM_PARAMS, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PARAM_UNSET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @fadt_ind, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %38

30:                                               ; preds = %26, %22
  %31 = load i64, i64* %7, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 %31, i64* %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %30, %14
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %10

41:                                               ; preds = %10
  %42 = load i64, i64* %8, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
