; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ITERATE_LaunchConditions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ITERATE_LaunchConditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ITERATE_LaunchConditions.title = internal constant [15 x i8] c"Install Failed\00", align 1
@MSICONDITION_FALSE = common dso_local global i64 0, align 8
@INSTALLUILEVEL_MASK = common dso_local global i32 0, align 4
@INSTALLUILEVEL_NONE = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@ERROR_INSTALL_FAILURE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_6__*)* @ITERATE_LaunchConditions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ITERATE_LaunchConditions(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @MSI_RecordGetString(i32* %12, i32 1)
  store i32* %13, i32** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @MSI_EvaluateConditionW(%struct.TYPE_6__* %14, i32* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @MSICONDITION_FALSE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @INSTALLUILEVEL_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @INSTALLUILEVEL_NONE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* @MSI_RecordGetString(i32* %29, i32 2)
  store i32* %30, i32** %8, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @deformat_string(%struct.TYPE_6__* %31, i32* %32, i32* %10)
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @MB_OK, align 4
  %36 = call i32 @MessageBoxW(i32* null, i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ITERATE_LaunchConditions.title, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @msi_free(i32 %37)
  br label %39

39:                                               ; preds = %28, %20
  %40 = load i64, i64* @ERROR_INSTALL_FAILURE, align 8
  store i64 %40, i64* %3, align 8
  br label %43

41:                                               ; preds = %2
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i32* @MSI_RecordGetString(i32*, i32) #1

declare dso_local i64 @MSI_EvaluateConditionW(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @deformat_string(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @MessageBoxW(i32*, i32, i8*, i32) #1

declare dso_local i32 @msi_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
