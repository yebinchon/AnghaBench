; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Close.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"(%04X, %08X, %p);\0A\00", align 1
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@MCI_WAIT = common dso_local global i32 0, align 4
@MCI_NOTIFY = common dso_local global i32 0, align 4
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_8__*)* @MCICDA_Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCICDA_Close(i32 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_7__* @MCICDA_GetOpenDrv(i32 %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, %struct.TYPE_8__* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MCI_WAIT, align 4
  %22 = call i32 @MCICDA_Stop(i32 %20, i32 %21, i32* null)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @CloseHandle(i32 %31)
  br label %33

33:                                               ; preds = %28, %19
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @MCI_NOTIFY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %47 = call i32 @MCICDA_Notify(i32 %44, %struct.TYPE_7__* %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %38, %33
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_7__* @MCICDA_GetOpenDrv(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @MCICDA_Stop(i32, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @MCICDA_Notify(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
