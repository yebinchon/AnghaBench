; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_shell.c_CommandShell.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_shell.c_CommandShell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@gBackToTopJmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Caught signal %d, back at top.\0A\00", align 1
@gGotSig = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"\0ARemote host was not responding, closing down the session.\00", align 1
@gConn = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"\0AInterrupted.\0A\00", align 1
@gCancelCtrl = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Closing down the current FTP session: \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@gMayBackToTopJmp = common dso_local global i32 0, align 4
@gEventNumber = common dso_local global i32 0, align 4
@gDoneApplication = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i64 0, align 8
@BackToTop = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s - NcFTP\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"> %s\0A\00", align 1
@gRunningCommand = common dso_local global i32 0, align 4
@kBeepAfterCmdTime = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\07\00", align 1
@MB_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CommandShell() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = load i32, i32* @gBackToTopJmp, align 4
  %10 = call i32 @setjmp(i32 %9) #3
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %0
  %14 = load i64, i64* @gGotSig, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @Trace(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i64, i64* @gGotSig, align 8
  %18 = load i64, i64* @SIGALRM, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @FTPShutdownHost(%struct.TYPE_7__* @gConn)
  br label %33

23:                                               ; preds = %13
  %24 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* @gCancelCtrl, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  store i64 0, i64* @gCancelCtrl, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @FTPShutdownHost(%struct.TYPE_7__* @gConn)
  %30 = call i32 @sleep(i32 1)
  %31 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %23
  br label %33

33:                                               ; preds = %32, %20
  br label %34

34:                                               ; preds = %33, %0
  store i32 1, i32* @gMayBackToTopJmp, align 4
  %35 = load i32, i32* @gEventNumber, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @gEventNumber, align 4
  br label %37

37:                                               ; preds = %115, %34
  %38 = load i64, i64* @gDoneApplication, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %118

40:                                               ; preds = %37
  %41 = load i64, i64* @SIGINT, align 8
  %42 = load i32, i32* @BackToTop, align 4
  %43 = call i32 @NcSignal(i64 %41, i32 %42)
  %44 = load i64, i64* @SIGPIPE, align 8
  %45 = load i32, i32* @BackToTop, align 4
  %46 = call i32 @NcSignal(i64 %44, i32 %45)
  %47 = load i64, i64* @SIGALRM, align 8
  %48 = load i32, i32* @BackToTop, align 4
  %49 = call i32 @NcSignal(i64 %47, i32 %48)
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %51 = call i32 @MakePrompt(i8* %50, i32 64)
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gConn, i32 0, i32 0), align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = call i32 (i8*, ...) @SetXtermTitle(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %59

56:                                               ; preds = %40
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gConn, i32 0, i32 1), align 8
  %58 = call i32 (i8*, ...) @SetXtermTitle(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %54
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %61 = call i8* @Readline(i8* %60)
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %118

66:                                               ; preds = %59
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @Trace(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @AddHistory(i8* %69)
  store i32 0, i32* %1, align 4
  br label %71

71:                                               ; preds = %112, %95, %66
  %72 = call i32 @memset(%struct.TYPE_6__* %3, i32 0, i32 16)
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @MakeArgv(i8* %76, i32* %77, i32 %79, i32 0, i32 %81, i32 4, i32 %83, i32 0)
  store i32 %84, i32* %2, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  br label %115

88:                                               ; preds = %71
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %1, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %1, align 4
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %71

96:                                               ; preds = %88
  store i32 1, i32* @gRunningCommand, align 4
  %97 = call i32 @time(i64* %7)
  %98 = call i64 @DoCommand(%struct.TYPE_6__* %3)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 @time(i64* %8)
  store i32 0, i32* @gRunningCommand, align 4
  br label %115

102:                                              ; preds = %96
  %103 = call i32 @time(i64* %8)
  store i32 0, i32* @gRunningCommand, align 4
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %7, align 8
  %106 = sub nsw i64 %104, %105
  %107 = load i64, i64* @kBeepAfterCmdTime, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* @stderr, align 4
  %111 = call i32 @fprintf(i32 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %102
  %113 = load i32, i32* @gEventNumber, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @gEventNumber, align 4
  br label %71

115:                                              ; preds = %100, %87
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @free(i8* %116)
  br label %37

118:                                              ; preds = %64, %37
  %119 = call i32 (...) @CloseHost()
  store i32 0, i32* @gMayBackToTopJmp, align 4
  ret void
}

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #1

declare dso_local i32 @Trace(i32, i8*, i8*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @FTPShutdownHost(%struct.TYPE_7__*) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @NcSignal(i64, i32) #2

declare dso_local i32 @MakePrompt(i8*, i32) #2

declare dso_local i32 @SetXtermTitle(i8*, ...) #2

declare dso_local i8* @Readline(i8*) #2

declare dso_local i32 @AddHistory(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @MakeArgv(i8*, i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @time(i64*) #2

declare dso_local i64 @DoCommand(%struct.TYPE_6__*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @CloseHost(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
