; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_interp.c_do_mcall.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_interp.c_do_mcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"NULL obj\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VBDISP_CALLGET = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @do_mcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mcall(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = call i32 @stack_pop_disp(%struct.TYPE_12__* %24, i32** %8)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %3, align 4
  br label %71

31:                                               ; preds = %2
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = call i32 @FIXME(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @E_FAIL, align 4
  store i32 %36, i32* %3, align 4
  br label %71

37:                                               ; preds = %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @vbstack_to_dp(%struct.TYPE_12__* %38, i32 %39, i32 %40, i32* %9)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @VBDISP_CALLGET, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @disp_get_id(i32* %42, i32 %43, i32 %44, i32 %45, i32* %10)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @SUCCEEDED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %37
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @disp_call(i32 %53, i32* %54, i32 %55, i32* %9, i32* %56)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %50, %37
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @IDispatch_Release(i32* %59)
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @FAILED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %71

66:                                               ; preds = %58
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @stack_popn(%struct.TYPE_12__* %67, i32 %68)
  %70 = load i32, i32* @S_OK, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %64, %34, %29
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @stack_pop_disp(%struct.TYPE_12__*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @vbstack_to_dp(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @disp_get_id(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @disp_call(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @stack_popn(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
