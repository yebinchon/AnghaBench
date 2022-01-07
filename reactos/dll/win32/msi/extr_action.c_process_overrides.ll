; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_process_overrides.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_process_overrides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@process_overrides.szAddLocal = internal constant [9 x i8] c"ADDLOCAL\00", align 1
@process_overrides.szAddSource = internal constant [10 x i8] c"ADDSOURCE\00", align 1
@process_overrides.szAdvertise = internal constant [10 x i8] c"ADVERTISE\00", align 1
@FALSE = common dso_local global i32 0, align 4
@INSTALLSTATE_LOCAL = common dso_local global i32 0, align 4
@szRemove = common dso_local global i8* null, align 8
@INSTALLSTATE_ABSENT = common dso_local global i32 0, align 4
@INSTALLSTATE_SOURCE = common dso_local global i32 0, align 4
@szReinstall = common dso_local global i8* null, align 8
@INSTALLSTATE_UNKNOWN = common dso_local global i32 0, align 4
@INSTALLSTATE_ADVERTISED = common dso_local global i32 0, align 4
@szPreselected = common dso_local global i32 0, align 4
@szOne = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @process_overrides to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_overrides(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @INSTALLSTATE_LOCAL, align 4
  %10 = call i32 @process_state_property(%struct.TYPE_4__* %7, i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @process_overrides.szAddLocal, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8*, i8** @szRemove, align 8
  %16 = load i32, i32* @INSTALLSTATE_ABSENT, align 4
  %17 = call i32 @process_state_property(%struct.TYPE_4__* %13, i32 %14, i8* %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @INSTALLSTATE_SOURCE, align 4
  %23 = call i32 @process_state_property(%struct.TYPE_4__* %20, i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @process_overrides.szAddSource, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i8*, i8** @szReinstall, align 8
  %29 = load i32, i32* @INSTALLSTATE_UNKNOWN, align 4
  %30 = call i32 @process_state_property(%struct.TYPE_4__* %26, i32 %27, i8* %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @INSTALLSTATE_ADVERTISED, align 4
  %36 = call i32 @process_state_property(%struct.TYPE_4__* %33, i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @process_overrides.szAdvertise, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @szPreselected, align 4
  %46 = load i32, i32* @szOne, align 4
  %47 = call i32 @msi_set_property(i32 %44, i32 %45, i32 %46, i32 -1)
  br label %48

48:                                               ; preds = %41, %2
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @process_state_property(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @msi_set_property(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
