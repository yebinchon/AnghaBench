; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mci.c_MCI_GetCommandTable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mci.c_MCI_GetCommandTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@MAX_MCICMDTABLE = common dso_local global i64 0, align 8
@S_MciCmdTable = common dso_local global %struct.TYPE_2__* null, align 8
@MCI_DEVTYPE_FIRST = common dso_local global i64 0, align 8
@MCI_DEVTYPE_LAST = common dso_local global i64 0, align 8
@hWinMM32Instance = common dso_local global i32 0, align 4
@MCI_GetCommandTable.wszCore = internal constant [5 x i8] c"CORE\00", align 1
@MCI_NO_COMMAND_TABLE = common dso_local global i64 0, align 8
@RT_RCDATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"No command table found in resource %p[%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"=> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @MCI_GetCommandTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MCI_GetCommandTable(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @MAX_MCICMDTABLE, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_MciCmdTable, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_MciCmdTable, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %2, align 8
  br label %89

30:                                               ; preds = %20, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %9

34:                                               ; preds = %9
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @MCI_DEVTYPE_FIRST, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @MCI_DEVTYPE_LAST, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* @hWinMM32Instance, align 4
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %46 = call i64 @LoadStringW(i32 %43, i64 %44, i8* %45, i32 32)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  store i8* %49, i8** %6, align 8
  br label %50

50:                                               ; preds = %48, %42
  br label %56

51:                                               ; preds = %38, %34
  %52 = load i64, i64* %3, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @MCI_GetCommandTable.wszCore, i64 0, i64 0), i8** %6, align 8
  br label %55

55:                                               ; preds = %54, %51
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i64, i64* @MCI_NO_COMMAND_TABLE, align 8
  store i64 %57, i64* %4, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %85

60:                                               ; preds = %56
  %61 = load i32, i32* @hWinMM32Instance, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* @RT_RCDATA, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i64 @FindResourceW(i32 %61, i8* %62, i8* %64)
  store i64 %65, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i32, i32* @hWinMM32Instance, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @LoadResource(i32 %69, i64 %70)
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %68, %60
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %3, align 8
  %78 = call i64 @MCI_SetCommandTable(i64 %76, i64 %77)
  store i64 %78, i64* %4, align 8
  br label %84

79:                                               ; preds = %72
  %80 = load i32, i32* @hWinMM32Instance, align 4
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @debugstr_w(i8* %81)
  %83 = call i32 @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %82)
  br label %84

84:                                               ; preds = %79, %75
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  %88 = load i64, i64* %4, align 8
  store i64 %88, i64* %2, align 8
  br label %89

89:                                               ; preds = %85, %28
  %90 = load i64, i64* %2, align 8
  ret i64 %90
}

declare dso_local i64 @LoadStringW(i32, i64, i8*, i32) #1

declare dso_local i64 @FindResourceW(i32, i8*, i8*) #1

declare dso_local i64 @LoadResource(i32, i64) #1

declare dso_local i64 @MCI_SetCommandTable(i64, i64) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
