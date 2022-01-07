; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/vcdcontroltool/extr_vcdcontroltool.c_QueryDriverInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/vcdcontroltool/extr_vcdcontroltool.c_QueryDriverInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@hDriverWnd = common dso_local global i32 0, align 4
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i32] [i32 86, i32 99, i32 100, i32 114, i32 111, i32 109, i32 0], align 4
@SERVICE_QUERY_CONFIG = common dso_local global i32 0, align 4
@SERVICE_QUERY_STATUS = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i32] [i32 37, i32 115, i32 58, i32 10, i32 40, i32 37, i32 115, i32 41, i32 0], align 4
@IDC_DRIVERINFO = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@SERVICE_START_PENDING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_DRIVERINSTALL = common dso_local global i32 0, align 4
@IDC_DRIVERREMOVE = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QueryDriverInfo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = mul nsw i32 2, %11
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* @hDriverWnd, align 4
  %17 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %18 = call i32* @OpenSCManager(i32* null, i32* null, i32 %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %92

21:                                               ; preds = %1
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @SERVICE_QUERY_CONFIG, align 4
  %24 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %25 = or i32 %23, %24
  %26 = call i32* @OpenService(i32* %22, i8* bitcast ([7 x i32]* @.str to i8*), i32 %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %89

29:                                               ; preds = %21
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @QueryServiceConfig(i32* %30, %struct.TYPE_8__* null, i32 0, i32* %3)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %65, label %33

33:                                               ; preds = %29
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %33
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load i32, i32* %3, align 4
  %40 = call %struct.TYPE_8__* @HeapAlloc(i32 %38, i32 0, i32 %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %6, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @QueryServiceConfig(i32* %41, %struct.TYPE_8__* %42, i32 %43, i32* %3)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wsprintf(i32* %15, i8* bitcast ([9 x i32]* @.str.1 to i8*), i32 %49, i32 %52)
  %54 = load i32, i32* @hDriverWnd, align 4
  %55 = load i32, i32* @IDC_DRIVERINFO, align 4
  %56 = call i32 @GetDlgItem(i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @WM_SETTEXT, align 4
  %59 = ptrtoint i32* %15 to i32
  %60 = call i32 @SendMessage(i32 %57, i32 %58, i32 0, i32 %59)
  br label %61

61:                                               ; preds = %46, %37
  %62 = call i32 (...) @GetProcessHeap()
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = call i32 @HeapFree(i32 %62, i32 0, %struct.TYPE_8__* %63)
  br label %65

65:                                               ; preds = %61, %33, %29
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @QueryServiceStatus(i32* %66, %struct.TYPE_7__* %10)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SERVICE_RUNNING, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SERVICE_START_PENDING, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32 @SetServiceState(i32 %80)
  br label %85

82:                                               ; preds = %74, %69
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i32 @SetServiceState(i32 %83)
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %65
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @CloseServiceHandle(i32* %87)
  br label %89

89:                                               ; preds = %86, %21
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @CloseServiceHandle(i32* %90)
  br label %92

92:                                               ; preds = %89, %1
  %93 = load i32, i32* @hDriverWnd, align 4
  %94 = load i32, i32* @IDC_DRIVERINSTALL, align 4
  %95 = call i32 @GetDlgItem(i32 %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @FALSE, align 4
  %98 = call i32 @EnableWindow(i32 %96, i32 %97)
  %99 = load i32, i32* @hDriverWnd, align 4
  %100 = load i32, i32* @IDC_DRIVERREMOVE, align 4
  %101 = call i32 @GetDlgItem(i32 %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @EnableWindow(i32 %102, i32 %103)
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @SW_SHOW, align 4
  %107 = call i32 @ShowWindow(i32 %105, i32 %106)
  %108 = load i32, i32* @TRUE, align 4
  %109 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %109)
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #2

declare dso_local i32* @OpenService(i32*, i8*, i32) #2

declare dso_local i64 @QueryServiceConfig(i32*, %struct.TYPE_8__*, i32, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @wsprintf(i32*, i8*, i32, i32) #2

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #2

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_8__*) #2

declare dso_local i64 @QueryServiceStatus(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @SetServiceState(i32) #2

declare dso_local i32 @CloseServiceHandle(i32*) #2

declare dso_local i32 @EnableWindow(i32, i32) #2

declare dso_local i32 @ShowWindow(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
