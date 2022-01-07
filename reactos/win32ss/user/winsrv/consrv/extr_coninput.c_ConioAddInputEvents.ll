; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_coninput.c_ConioAddInputEvents.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_coninput.c_ConioAddInputEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32, i64, i64*, i32)* @ConioAddInputEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ConioAddInputEvents(%struct.TYPE_5__* %0, i32 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i64*, i64** %10, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i64*, i64** %10, align 8
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @PreprocessInput(%struct.TYPE_5__* %19, i32 %20, i64 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %26, i64* %6, align 8
  br label %45

27:                                               ; preds = %18
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = ptrtoint %struct.TYPE_5__* %28 to i32
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i64, i64* %9, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = call i64 @ConDrvWriteConsoleInput(i32 %29, i32* %31, i32 %32, i32 %33, i64 %34, i64* %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @STATUS_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = call i32 @PostprocessInput(%struct.TYPE_5__* %41)
  br label %43

43:                                               ; preds = %40, %27
  %44 = load i64, i64* %12, align 8
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %43, %25
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

declare dso_local i64 @PreprocessInput(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i64 @ConDrvWriteConsoleInput(i32, i32*, i32, i32, i64, i64*) #1

declare dso_local i32 @PostprocessInput(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
