; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_wintrust_main.c_WINTRUST_AddTrustStepsFromFunctions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_wintrust_main.c_WINTRUST_AddTrustStepsFromFunctions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wintrust_step = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@TRUSTERROR_STEP_FINAL_WVTINIT = common dso_local global i32 0, align 4
@TRUSTERROR_STEP_FINAL_OBJPROV = common dso_local global i32 0, align 4
@TRUSTERROR_STEP_FINAL_SIGPROV = common dso_local global i32 0, align 4
@TRUSTERROR_STEP_FINAL_CERTPROV = common dso_local global i32 0, align 4
@TRUSTERROR_STEP_FINAL_POLICYPROV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wintrust_step*, %struct.TYPE_3__*)* @WINTRUST_AddTrustStepsFromFunctions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WINTRUST_AddTrustStepsFromFunctions(%struct.wintrust_step* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.wintrust_step*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store %struct.wintrust_step* %0, %struct.wintrust_step** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.wintrust_step*, %struct.wintrust_step** %3, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %14, i64 %15
  %17 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %16, i32 0, i32 1
  store i64 %13, i64* %17, align 8
  %18 = load i32, i32* @TRUSTERROR_STEP_FINAL_WVTINIT, align 4
  %19 = load %struct.wintrust_step*, %struct.wintrust_step** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %5, align 8
  %22 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %19, i64 %20
  %23 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 8
  br label %24

24:                                               ; preds = %10, %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.wintrust_step*, %struct.wintrust_step** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %33, i64 %34
  %36 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %35, i32 0, i32 1
  store i64 %32, i64* %36, align 8
  %37 = load i32, i32* @TRUSTERROR_STEP_FINAL_OBJPROV, align 4
  %38 = load %struct.wintrust_step*, %struct.wintrust_step** %3, align 8
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  %41 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %38, i64 %39
  %42 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 8
  br label %43

43:                                               ; preds = %29, %24
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.wintrust_step*, %struct.wintrust_step** %3, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %52, i64 %53
  %55 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %54, i32 0, i32 1
  store i64 %51, i64* %55, align 8
  %56 = load i32, i32* @TRUSTERROR_STEP_FINAL_SIGPROV, align 4
  %57 = load %struct.wintrust_step*, %struct.wintrust_step** %3, align 8
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %5, align 8
  %60 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %57, i64 %58
  %61 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 8
  br label %62

62:                                               ; preds = %48, %43
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.wintrust_step*, %struct.wintrust_step** %3, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %71, i64 %72
  %74 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %73, i32 0, i32 1
  store i64 %70, i64* %74, align 8
  %75 = load i32, i32* @TRUSTERROR_STEP_FINAL_CERTPROV, align 4
  %76 = load %struct.wintrust_step*, %struct.wintrust_step** %3, align 8
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %5, align 8
  %79 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %76, i64 %77
  %80 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %79, i32 0, i32 0
  store i32 %75, i32* %80, align 8
  br label %81

81:                                               ; preds = %67, %62
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.wintrust_step*, %struct.wintrust_step** %3, align 8
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %90, i64 %91
  %93 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %92, i32 0, i32 1
  store i64 %89, i64* %93, align 8
  %94 = load i32, i32* @TRUSTERROR_STEP_FINAL_POLICYPROV, align 4
  %95 = load %struct.wintrust_step*, %struct.wintrust_step** %3, align 8
  %96 = load i64, i64* %5, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %5, align 8
  %98 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %95, i64 %96
  %99 = getelementptr inbounds %struct.wintrust_step, %struct.wintrust_step* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 8
  br label %100

100:                                              ; preds = %86, %81
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
