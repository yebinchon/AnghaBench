; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_main.c_InitConnectionInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_main.c_InitConnectionInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32* }

@gLib = common dso_local global i32 0, align 4
@gConn = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@kDefaultFTPBufSize = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ncftp: init connection info error %d (%s).\0A\00", align 1
@gDebug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@gTransferTypeInitialized = common dso_local global i64 0, align 8
@kTypeBinary = common dso_local global i32 0, align 4
@gTransferType = common dso_local global i32 0, align 4
@gConnTimeout = common dso_local global i32 0, align 4
@gXferTimeout = common dso_local global i32 0, align 4
@gCtrlTimeout = common dso_local global i32 0, align 4
@gDataPortMode = common dso_local global i32 0, align 4
@gUnprocessedJobs = common dso_local global i64 0, align 8
@gPrevRemoteCWD = common dso_local global i8* null, align 8
@gSOBufsize = common dso_local global i32 0, align 4
@gRedialDelay = common dso_local global i32 0, align 4
@gAutoAscii = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitConnectionInfo() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @kDefaultFTPBufSize, align 4
  %3 = call i32 @FTPInitConnectionInfo(i32* @gLib, %struct.TYPE_3__* @gConn, i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i8* @FTPStrError(i32 %9)
  %11 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %10)
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %0
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 14), align 8
  %14 = load i32, i32* @stderr, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 13), align 4
  %15 = load i32, i32* @gDebug, align 4
  %16 = call i32 @SetDebug(i32 %15)
  %17 = call i32 (...) @UseTrace()
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 12), align 8
  %19 = call i32 @STRNCPY(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 0), align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 1
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 11), align 8
  store i64 0, i64* @gTransferTypeInitialized, align 8
  %22 = load i32, i32* @kTypeBinary, align 4
  store i32 %22, i32* @gTransferType, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 1), align 8
  %23 = load i32, i32* @gConnTimeout, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 10), align 4
  %24 = load i32, i32* @gXferTimeout, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 9), align 8
  %25 = load i32, i32* @gCtrlTimeout, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 8), align 4
  %26 = load i32, i32* @gDataPortMode, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 7), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 2), align 4
  store i64 0, i64* @gUnprocessedJobs, align 8
  %27 = load i8*, i8** @gPrevRemoteCWD, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  %29 = load i32, i32* @gSOBufsize, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 5), align 8
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 6), align 4
  %30 = load i32, i32* @gRedialDelay, align 4
  %31 = icmp sge i32 %30, 10
  br i1 %31, label %32, label %34

32:                                               ; preds = %13
  %33 = load i32, i32* @gRedialDelay, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 3), align 8
  br label %34

34:                                               ; preds = %32, %13
  %35 = load i8*, i8** @gAutoAscii, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** @gAutoAscii, align 8
  %42 = call i64 @ISTREQ(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** @gAutoAscii, align 8
  %46 = call i64 @ISTREQ(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** @gAutoAscii, align 8
  %50 = call i64 @ISTREQ(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44, %40, %34
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 4), align 8
  br label %55

53:                                               ; preds = %48
  %54 = load i8*, i8** @gAutoAscii, align 8
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gConn, i32 0, i32 4), align 8
  br label %55

55:                                               ; preds = %53, %52
  ret void
}

declare dso_local i32 @FTPInitConnectionInfo(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i8* @FTPStrError(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @SetDebug(i32) #1

declare dso_local i32 @UseTrace(...) #1

declare dso_local i32 @STRNCPY(i32, i8*) #1

declare dso_local i64 @ISTREQ(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
