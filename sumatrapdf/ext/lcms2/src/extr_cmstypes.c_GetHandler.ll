; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_GetHandler.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_GetHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i64, %struct.TYPE_7__*, %struct.TYPE_7__*)* @GetHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @GetHandler(i64 %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %8, align 8
  br label %10

10:                                               ; preds = %24, %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %4, align 8
  br label %49

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %8, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %8, align 8
  br label %30

30:                                               ; preds = %44, %28
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %4, align 8
  br label %49

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %8, align 8
  br label %30

48:                                               ; preds = %30
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %49

49:                                               ; preds = %48, %40, %20
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
