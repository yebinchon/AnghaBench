; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_specific.c_system_End.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_specific.c_system_End.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tidIPCFirst = common dso_local global i64 0, align 8
@VLC_IPC_PIPE = common dso_local global i32 0, align 4
@OPEN_ACTION_OPEN_IF_EXISTS = common dso_local global i32 0, align 4
@OPEN_ACCESS_READWRITE = common dso_local global i32 0, align 4
@OPEN_SHARE_DENYREADWRITE = common dso_local global i32 0, align 4
@OPEN_FLAGS_FAIL_ON_ERROR = common dso_local global i32 0, align 4
@ERROR_PIPE_BUSY = common dso_local global i64 0, align 8
@IPC_CMD_QUIT = common dso_local global i64 0, align 8
@tidIPCHelper = common dso_local global i32 0, align 4
@DCWW_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @system_End() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i64, i64* @tidIPCFirst, align 8
  %8 = call i64 (...) @_gettid()
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %33, %10
  %12 = load i32, i32* @VLC_IPC_PIPE, align 4
  %13 = load i32, i32* @OPEN_ACTION_OPEN_IF_EXISTS, align 4
  %14 = load i32, i32* @OPEN_ACCESS_READWRITE, align 4
  %15 = load i32, i32* @OPEN_SHARE_DENYREADWRITE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OPEN_FLAGS_FAIL_ON_ERROR, align 4
  %18 = or i32 %16, %17
  %19 = call i64 @DosOpen(i32 %12, i32* %1, i64* %2, i32 0, i32 0, i32 %13, i32 %18, i32* null)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @ERROR_PIPE_BUSY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load i32, i32* @VLC_IPC_PIPE, align 4
  %25 = call i32 @DosWaitNPipe(i32 %24, i32 -1)
  br label %32

26:                                               ; preds = %11
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @DosSleep(i32 1)
  br label %31

31:                                               ; preds = %29, %26
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %11, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @IPC_CMD_QUIT, align 8
  store i64 %37, i64* %5, align 8
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @DosWrite(i32 %38, i64* %5, i32 8, i64* %3)
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @DosClose(i32 %40)
  %42 = load i32, i32* @tidIPCHelper, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @DCWW_WAIT, align 4
  %44 = call i32 @DosWaitThread(i32* %6, i32 %43)
  br label %45

45:                                               ; preds = %36, %0
  ret void
}

declare dso_local i64 @_gettid(...) #1

declare dso_local i64 @DosOpen(i32, i32*, i64*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DosWaitNPipe(i32, i32) #1

declare dso_local i32 @DosSleep(i32) #1

declare dso_local i32 @DosWrite(i32, i64*, i32, i64*) #1

declare dso_local i32 @DosClose(i32) #1

declare dso_local i32 @DosWaitThread(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
