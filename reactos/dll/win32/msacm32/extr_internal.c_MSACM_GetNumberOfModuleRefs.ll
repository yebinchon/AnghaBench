; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_GetNumberOfModuleRefs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_GetNumberOfModuleRefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@MSACM_pFirstACMLocalDriver = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.TYPE_6__**)* @MSACM_GetNumberOfModuleRefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MSACM_GetNumberOfModuleRefs(i64 %0, i64 %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %11 = icmp ne %struct.TYPE_6__** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MSACM_pFirstACMLocalDriver, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %7, align 8
  br label %16

16:                                               ; preds = %56, %14
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %9, align 8
  br label %35

35:                                               ; preds = %48, %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %40 = icmp ne %struct.TYPE_6__** %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %47, align 8
  br label %48

48:                                               ; preds = %45, %41, %38
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %9, align 8
  br label %35

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %25, %19
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %7, align 8
  br label %16

60:                                               ; preds = %16
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
