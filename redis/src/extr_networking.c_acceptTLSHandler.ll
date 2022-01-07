; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_acceptTLSHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_acceptTLSHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_ACCEPTS_PER_CALL = common dso_local global i32 0, align 4
@NET_IP_STR_LEN = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ANET_ERR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Accepting client connection: %s\00", align 1
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Accepted %s:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acceptTLSHandler(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @MAX_ACCEPTS_PER_CALL, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @NET_IP_STR_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @UNUSED(i8* %20)
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @UNUSED(i8* %24)
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @UNUSED(i8* %26)
  br label %28

28:                                               ; preds = %51, %4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %11, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %34 = load i32, i32* %6, align 4
  %35 = trunc i64 %17 to i32
  %36 = call i32 @anetTcpAccept(i32 %33, i32 %34, i8* %19, i32 %35, i32* %9)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @ANET_ERR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @EWOULDBLOCK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @LL_WARNING, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %44, %40
  store i32 1, i32* %14, align 4
  br label %60

51:                                               ; preds = %32
  %52 = load i32, i32* @LL_VERBOSE, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %57 = call i32 @connCreateAcceptedTLS(i32 %55, i32 %56)
  %58 = call i32 @acceptCommonHandler(i32 %57, i32 0, i8* %19)
  br label %28

59:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %59, %50
  %61 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %14, align 4
  switch i32 %62, label %64 [
    i32 0, label %63
    i32 1, label %63
  ]

63:                                               ; preds = %60, %60
  ret void

64:                                               ; preds = %60
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UNUSED(i8*) #2

declare dso_local i32 @anetTcpAccept(i32, i32, i8*, i32, i32*) #2

declare dso_local i32 @serverLog(i32, i8*, i8*, ...) #2

declare dso_local i32 @acceptCommonHandler(i32, i32, i8*) #2

declare dso_local i32 @connCreateAcceptedTLS(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
