; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_ntservice.c_NTServiceUninstall.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_ntservice.c_NTServiceUninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@SC_MANAGER_ALL_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"could not connect to Services Control Manager database\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"could not open service\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"could not delete service \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"service deleted successfuly\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @NTServiceUninstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NTServiceUninstall(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %4, align 8
  %10 = load i32, i32* @SC_MANAGER_ALL_ACCESS, align 4
  %11 = call i32* @OpenSCManager(i32* null, i32* null, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Err(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DELETE, align 4
  %24 = call i32* @OpenServiceA(i32* %19, i32 %22, i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Err(%struct.TYPE_6__* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @CloseServiceHandle(i32* %30)
  %32 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %32, i32* %2, align 4
  br label %52

33:                                               ; preds = %18
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @DeleteService(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Err(%struct.TYPE_6__* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %46

43:                                               ; preds = %33
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = call i32 @msg_Dbg(%struct.TYPE_6__* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @CloseServiceHandle(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @CloseServiceHandle(i32* %49)
  %51 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %27, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32* @OpenServiceA(i32*, i32, i32) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

declare dso_local i32 @DeleteService(i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
