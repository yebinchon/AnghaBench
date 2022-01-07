; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/nptest/extr_npserver.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/nptest/extr_npserver.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"\\\\.\\pipe\\mynamedpipe\00", align 1
@PIPE_ACCESS_DUPLEX = common dso_local global i32 0, align 4
@PIPE_TYPE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_READMODE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_WAIT = common dso_local global i32 0, align 4
@PIPE_UNLIMITED_INSTANCES = common dso_local global i32 0, align 4
@BUFSIZE = common dso_local global i32 0, align 4
@PIPE_TIMEOUT = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"CreateNamedPipe() failed\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ERROR_PIPE_CONNECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Pipe connected!\0A\00", align 1
@InstanceThread = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i32 @TEXT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @PIPE_ACCESS_DUPLEX, align 4
  %14 = load i32, i32* @PIPE_TYPE_MESSAGE, align 4
  %15 = load i32, i32* @PIPE_READMODE_MESSAGE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PIPE_WAIT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PIPE_UNLIMITED_INSTANCES, align 4
  %20 = load i32, i32* @BUFSIZE, align 4
  %21 = load i32, i32* @BUFSIZE, align 4
  %22 = load i32, i32* @PIPE_TIMEOUT, align 4
  %23 = call i64 @CreateNamedPipe(i32 %12, i32 %13, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32* null)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %52

29:                                               ; preds = %2
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @ConnectNamedPipe(i64 %30, i32* null)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @TRUE, align 4
  br label %40

35:                                               ; preds = %29
  %36 = call i64 (...) @GetLastError()
  %37 = load i64, i64* @ERROR_PIPE_CONNECTED, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @DisconnectNamedPipe(i64 %46)
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @CloseHandle(i64 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %27
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i64 @CreateNamedPipe(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @ConnectNamedPipe(i64, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @DisconnectNamedPipe(i64) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
