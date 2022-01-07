; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_custom.c_check_execution_scheduling_options.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_custom.c_check_execution_scheduling_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@msidbCustomActionTypeClientRepeat = common dso_local global i32 0, align 4
@SEQUENCE_UI = common dso_local global i32 0, align 4
@SEQUENCE_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Skipping action due to dbCustomActionTypeClientRepeat option.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@msidbCustomActionTypeFirstSequence = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Skipping action due to msidbCustomActionTypeFirstSequence option.\0A\00", align 1
@msidbCustomActionTypeOncePerProcess = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"Skipping action due to msidbCustomActionTypeOncePerProcess option.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @check_execution_scheduling_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_execution_scheduling_options(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @msidbCustomActionTypeClientRepeat, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @msidbCustomActionTypeClientRepeat, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SEQUENCE_UI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SEQUENCE_EXEC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20, %13
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  br label %76

30:                                               ; preds = %20
  br label %74

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @msidbCustomActionTypeFirstSequence, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SEQUENCE_UI, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SEQUENCE_EXEC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = call i32 @TRACE(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %4, align 4
  br label %76

53:                                               ; preds = %43, %36
  br label %73

54:                                               ; preds = %31
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @msidbCustomActionTypeOncePerProcess, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @msi_action_is_unique(%struct.TYPE_5__* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = call i32 @TRACE(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %4, align 4
  br label %76

67:                                               ; preds = %59
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @msi_register_unique_action(%struct.TYPE_5__* %68, i32 %69)
  br label %71

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %54
  br label %73

73:                                               ; preds = %72, %53
  br label %74

74:                                               ; preds = %73, %30
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %64, %50, %27
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @msi_action_is_unique(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @msi_register_unique_action(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
