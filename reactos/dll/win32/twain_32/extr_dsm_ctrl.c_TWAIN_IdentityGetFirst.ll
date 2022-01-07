; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/twain_32/extr_dsm_ctrl.c_TWAIN_IdentityGetFirst.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/twain_32/extr_dsm_ctrl.c_TWAIN_IdentityGetFirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"DG_CONTROL/DAT_IDENTITY/MSG_GETFIRST\0A\00", align 1
@nrdevices = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no entries found.\0A\00", align 1
@TWCC_NODS = common dso_local global i32 0, align 4
@DSM_twCC = common dso_local global i32 0, align 4
@TWRC_FAILURE = common dso_local global i32 0, align 4
@DSM_currentDevice = common dso_local global i64 0, align 8
@devices = common dso_local global %struct.TYPE_2__* null, align 8
@TWRC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TWAIN_IdentityGetFirst(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 (...) @twain_autodetect()
  %12 = load i32, i32* @nrdevices, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @TWCC_NODS, align 4
  store i32 %16, i32* @DSM_twCC, align 4
  %17 = load i32, i32* @TWRC_FAILURE, align 4
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  store i64 0, i64* @DSM_currentDevice, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devices, align 8
  %20 = load i64, i64* @DSM_currentDevice, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @DSM_currentDevice, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @TWRC_SUCCESS, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %18, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @twain_autodetect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
