; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterAcceptHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterAcceptHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32* }

@MAX_CLUSTER_ACCEPTS_PER_CALL = common dso_local global i32 0, align 4
@NET_IP_STR_LEN = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ANET_ERR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error accepting cluster node: %s\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Accepting cluster node connection from %s:%d\00", align 1
@clusterConnAcceptHandler = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Error accepting cluster node connection: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterAcceptHandler(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
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
  %15 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @MAX_CLUSTER_ACCEPTS_PER_CALL, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @NET_IP_STR_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @UNUSED(i8* %21)
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @UNUSED(i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @UNUSED(i8* %27)
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* %14, align 4
  br label %93

35:                                               ; preds = %31, %4
  br label %36

36:                                               ; preds = %91, %35
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %11, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %92

40:                                               ; preds = %36
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %42 = load i32, i32* %6, align 4
  %43 = trunc i64 %18 to i32
  %44 = call i32 @anetTcpAccept(i32 %41, i32 %42, i8* %20, i32 %43, i32* %9)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ANET_ERR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @EWOULDBLOCK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @LL_VERBOSE, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %52, %48
  store i32 1, i32* %14, align 4
  br label %93

59:                                               ; preds = %40
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = call i32* @connCreateAcceptedTLS(i32 %63, i32 1)
  br label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = call i32* @connCreateAcceptedSocket(i32 %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i32* [ %64, %62 ], [ %67, %65 ]
  store i32* %69, i32** %15, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @connNonBlock(i32* %70)
  %72 = load i32*, i32** %15, align 8
  %73 = call i32 @connEnableTcpNoDelay(i32* %72)
  %74 = load i32, i32* @LL_VERBOSE, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %74, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %75)
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* @clusterConnAcceptHandler, align 4
  %79 = call i64 @connAccept(i32* %77, i32 %78)
  %80 = load i64, i64* @C_ERR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %68
  %83 = load i32, i32* @LL_VERBOSE, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @connGetLastError(i32* %84)
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @connClose(i32* %89)
  store i32 1, i32* %14, align 4
  br label %93

91:                                               ; preds = %68
  br label %36

92:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  br label %93

93:                                               ; preds = %92, %82, %58, %34
  %94 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %14, align 4
  switch i32 %95, label %97 [
    i32 0, label %96
    i32 1, label %96
  ]

96:                                               ; preds = %93, %93
  ret void

97:                                               ; preds = %93
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UNUSED(i8*) #2

declare dso_local i32 @anetTcpAccept(i32, i32, i8*, i32, i32*) #2

declare dso_local i32 @serverLog(i32, i8*, i8*, ...) #2

declare dso_local i32* @connCreateAcceptedTLS(i32, i32) #2

declare dso_local i32* @connCreateAcceptedSocket(i32) #2

declare dso_local i32 @connNonBlock(i32*) #2

declare dso_local i32 @connEnableTcpNoDelay(i32*) #2

declare dso_local i64 @connAccept(i32*, i32) #2

declare dso_local i32 @connGetLastError(i32*) #2

declare dso_local i32 @connClose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
