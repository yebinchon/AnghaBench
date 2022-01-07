; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_execute_script.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_execute_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i32** }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"executing script %u\0A\00", align 1
@SCRIPT_ROLLBACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"Execution of script %i halted; action %s returned %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64)* @execute_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @execute_script(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @SCRIPT_ROLLBACK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %56, %13
  %21 = load i64, i64* %5, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @ACTION_PerformAction(%struct.TYPE_5__* %24, i32 %34, i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %23
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @debugstr_w(i32 %51)
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %41, i32 %52, i64 %53)
  br label %59

55:                                               ; preds = %23
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %5, align 8
  br label %20

59:                                               ; preds = %40, %20
  br label %105

60:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %61

61:                                               ; preds = %101, %60
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %62, %68
  br i1 %69, label %70, label %104

70:                                               ; preds = %61
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32**, i32*** %73, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %4, align 8
  %82 = call i64 @ACTION_PerformAction(%struct.TYPE_5__* %71, i32 %80, i64 %81)
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @ERROR_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %70
  %87 = load i64, i64* %4, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32**, i32*** %89, align 8
  %91 = load i64, i64* %4, align 8
  %92 = getelementptr inbounds i32*, i32** %90, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @debugstr_w(i32 %96)
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %87, i32 %97, i64 %98)
  br label %104

100:                                              ; preds = %70
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %5, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %5, align 8
  br label %61

104:                                              ; preds = %86, %61
  br label %105

105:                                              ; preds = %104, %59
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @msi_free_action_script(%struct.TYPE_5__* %106, i64 %107)
  %109 = load i64, i64* %6, align 8
  ret i64 %109
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @ACTION_PerformAction(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @ERR(i8*, i64, i32, i64) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @msi_free_action_script(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
