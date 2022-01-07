; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_execute.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i8*, i32 (i32*, i64)* }
%struct.TYPE_6__ = type { i32, i32 }

@ztest_ds = common dso_local global i32* null, align 8
@ztest_opts = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"%6.2f sec in %s\0A\00", align 1
@NANOSEC = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*, i64)* @ztest_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ztest_execute(i32 %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32*, i32** @ztest_ds, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ztest_opts, i32 0, i32 0), align 8
  %14 = urem i64 %12, %13
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  store i32* %15, i32** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.TYPE_6__* @ZTEST_GET_SHARED_CALLSTATE(i32 %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %8, align 8
  %18 = call i32 (...) @gethrtime()
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %32, %3
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32 (i32*, i64)*, i32 (i32*, i64)** %27, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 %28(i32* %29, i64 %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %19

35:                                               ; preds = %19
  %36 = call i32 (...) @gethrtime()
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = call i32 @atomic_add_64(i32* %40, i32 1)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @atomic_add_64(i32* %43, i32 %44)
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ztest_opts, i32 0, i32 1), align 8
  %47 = icmp sge i32 %46, 4
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = sitofp i32 %49 to double
  %51 = load double, double* @NANOSEC, align 8
  %52 = fdiv double %50, %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), double %52, i8* %55)
  br label %57

57:                                               ; preds = %48, %35
  ret void
}

declare dso_local %struct.TYPE_6__* @ZTEST_GET_SHARED_CALLSTATE(i32) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @atomic_add_64(i32*, i32) #1

declare dso_local i32 @printf(i8*, double, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
