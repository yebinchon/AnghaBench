; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_aofCreatePipes.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_aofCreatePipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@__const.aofCreatePipes.fds = private unnamed_addr constant [6 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@ANET_OK = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AE_READABLE = common dso_local global i32 0, align 4
@aofChildPipeReadable = common dso_local global i32 0, align 4
@AE_ERR = common dso_local global i64 0, align 8
@C_OK = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Error opening /setting AOF rewrite IPC pipes: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aofCreatePipes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  %4 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([6 x i32]* @__const.aofCreatePipes.fds to i8*), i64 24, i1 false)
  %5 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %6 = call i32 @pipe(i32* %5)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %59

9:                                                ; preds = %0
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = call i32 @pipe(i32* %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %59

15:                                               ; preds = %9
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = call i32 @pipe(i32* %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %59

21:                                               ; preds = %15
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = call i64 @anetNonBlock(i32* null, i32 %23)
  %25 = load i64, i64* @ANET_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %59

28:                                               ; preds = %21
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @anetNonBlock(i32* null, i32 %30)
  %32 = load i64, i64* @ANET_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %59

35:                                               ; preds = %28
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @AE_READABLE, align 4
  %40 = load i32, i32* @aofChildPipeReadable, align 4
  %41 = call i64 @aeCreateFileEvent(i32 %36, i32 %38, i32 %39, i32 %40, i32* null)
  %42 = load i64, i64* @AE_ERR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %59

45:                                               ; preds = %35
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 4
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 5
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 4
  %57 = load i32, i32* %56, align 16
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %58 = load i32, i32* @C_OK, align 4
  store i32 %58, i32* %1, align 4
  br label %85

59:                                               ; preds = %44, %34, %27, %20, %14, %8
  %60 = load i32, i32* @LL_WARNING, align 4
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @strerror(i32 %61)
  %63 = call i32 @serverLog(i32 %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %80, %59
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %65, 6
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @close(i32 %77)
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %64

83:                                               ; preds = %64
  %84 = load i32, i32* @C_ERR, align 4
  store i32 %84, i32* %1, align 4
  br label %85

85:                                               ; preds = %83, %45
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pipe(i32*) #2

declare dso_local i64 @anetNonBlock(i32*, i32) #2

declare dso_local i64 @aeCreateFileEvent(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @serverLog(i32, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
