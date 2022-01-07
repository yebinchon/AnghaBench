; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_acceptUnixHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_acceptUnixHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_ACCEPTS_PER_CALL = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ANET_ERR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Accepting client connection: %s\00", align 1
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Accepted connection to %s\00", align 1
@CLIENT_UNIX_SOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acceptUnixHandler(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @MAX_ACCEPTS_PER_CALL, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @UNUSED(i8* %12)
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @UNUSED(i8* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @UNUSED(i8* %18)
  br label %20

20:                                               ; preds = %40, %4
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @anetUnixAccept(i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @ANET_ERR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EWOULDBLOCK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @LL_WARNING, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %38 = call i32 @serverLog(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  br label %48

40:                                               ; preds = %24
  %41 = load i32, i32* @LL_VERBOSE, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %43 = call i32 @serverLog(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @connCreateAcceptedSocket(i32 %44)
  %46 = load i32, i32* @CLIENT_UNIX_SOCKET, align 4
  %47 = call i32 @acceptCommonHandler(i32 %45, i32 %46, i32* null)
  br label %20

48:                                               ; preds = %39, %20
  ret void
}

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i32 @anetUnixAccept(i32, i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @acceptCommonHandler(i32, i32, i32*) #1

declare dso_local i32 @connCreateAcceptedSocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
