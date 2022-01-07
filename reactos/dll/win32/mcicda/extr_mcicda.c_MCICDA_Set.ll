; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Set.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"(%04X, %08X, %p);\0A\00", align 1
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@MCI_SET_DOOR_OPEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MCI_SET_DOOR_CLOSED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MCIERR_NULL_PARAMETER_BLOCK = common dso_local global i32 0, align 4
@MCI_SET_TIME_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MCI_FORMAT_MILLISECONDS !\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MCI_FORMAT_MSF !\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"MCI_FORMAT_TMSF !\0A\00", align 1
@MCIERR_BAD_TIME_FORMAT = common dso_local global i32 0, align 4
@MCI_SET_AUDIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"SET_AUDIO %X %x\0A\00", align 1
@MCI_NOTIFY = common dso_local global i32 0, align 4
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_7__*)* @MCICDA_Set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCICDA_Set(i32 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_6__* @MCICDA_GetOpenDrv(i32 %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, %struct.TYPE_7__* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %18, i32* %4, align 4
  br label %89

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MCI_SET_DOOR_OPEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @MCICDA_SetDoor(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MCI_SET_DOOR_CLOSED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @MCICDA_SetDoor(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = icmp eq %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @MCIERR_NULL_PARAMETER_BLOCK, align 4
  store i32 %41, i32* %4, align 4
  br label %89

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MCI_SET_TIME_FORMAT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %57 [
    i32 130, label %51
    i32 129, label %53
    i32 128, label %55
  ]

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %59

53:                                               ; preds = %47
  %54 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %59

55:                                               ; preds = %47
  %56 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @MCIERR_BAD_TIME_FORMAT, align 4
  store i32 %58, i32* %4, align 4
  br label %89

59:                                               ; preds = %55, %53, %51
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %42
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @MCI_SET_AUDIO, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @MCI_NOTIFY, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %87 = call i32 @MCICDA_Notify(i32 %84, %struct.TYPE_6__* %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %76
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %57, %40, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_6__* @MCICDA_GetOpenDrv(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @MCICDA_SetDoor(i32, i32) #1

declare dso_local i32 @MCICDA_Notify(i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
