; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/lpctst/extr_lpcclt.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/lpctst/extr_lpcclt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@TEST_PORT_NAME_U = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: Lpc test client\0A\00", align 1
@MyName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: Connecting to port \22%s\22...\0A\00", align 1
@TEST_PORT_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: NtConnectPort() failed with status = 0x%08X.\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"%s: Connected to \22%s\22 with anonymous port 0x%x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"%s: Sending to port 0x%x message \22%s\22...\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"%s: NtRequestPort(0x%x) failed with status = 0x%8X.\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%s: Sending datagram to port 0x%x succeeded.\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s: Disconnecting...\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @TEST_PORT_NAME_U, align 4
  %14 = call i32 @ROS_STRING_INITIALIZER(i32 %13)
  store i32 %14, i32* %6, align 4
  store i64 0, i64* %11, align 8
  %15 = load i8*, i8** @MyName, align 8
  %16 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** @MyName, align 8
  %18 = load i8*, i8** @TEST_PORT_NAME, align 8
  %19 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %18)
  store i64 0, i64* %11, align 8
  %20 = call i32 @ZeroMemory(%struct.TYPE_6__* %12, i32 24)
  %21 = call i32 @NtConnectPort(i32* %8, i32* %6, %struct.TYPE_6__* %12, i32 0, i32 0, i32 0, i32* null, i64* %11)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @NT_SUCCESS(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load i8*, i8** @MyName, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %26, i32 %27)
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %29, i32* %3, align 4
  br label %79

30:                                               ; preds = %2
  %31 = load i8*, i8** @MyName, align 8
  %32 = load i8*, i8** @TEST_PORT_NAME, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %31, i8* %32, i32 %33)
  %35 = call i32 @ZeroMemory(%struct.TYPE_6__* %9, i32 24)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (...) @GetCommandLineA()
  %39 = call i32 @strcpy(i64 %37, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @strlen(i64 %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 4, %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i8*, i8** @MyName, align 8
  %52 = load i32, i32* %8, align 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %51, i32 %52, i8* %55)
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %59 = call i32 @NtRequestPort(i32 %57, %struct.TYPE_7__* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @NT_SUCCESS(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %30
  %64 = load i8*, i8** @MyName, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8* %64, i32 %65, i32 %66)
  %68 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %68, i32* %3, align 4
  br label %79

69:                                               ; preds = %30
  %70 = load i8*, i8** @MyName, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %70, i32 %71)
  %73 = call i32 @Sleep(i32 2000)
  %74 = load i8*, i8** @MyName, align 8
  %75 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @NtClose(i32 %76)
  %78 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %69, %63, %25
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @ROS_STRING_INITIALIZER(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @NtConnectPort(i32*, i32*, %struct.TYPE_6__*, i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @strcpy(i64, i32) #1

declare dso_local i32 @GetCommandLineA(...) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @NtRequestPort(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
