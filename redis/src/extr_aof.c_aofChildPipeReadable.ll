; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_aofChildPipeReadable.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_aofChildPipeReadable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"AOF rewrite child asks to stop sending diffs.\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Can't send ACK to AOF child: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AE_READABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aofChildPipeReadable(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = ptrtoint i32* %10 to i32
  %12 = call i32 @UNUSED(i32 %11)
  %13 = load i8*, i8** %7, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = call i32 @UNUSED(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @UNUSED(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @read(i32 %18, i8* %9, i32 1)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %37

21:                                               ; preds = %4
  %22 = load i8, i8* %9, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 33
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, i32* @LL_NOTICE, align 4
  %27 = call i32 (i32, i8*, ...) @serverLog(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 4
  %29 = call i32 @write(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @LL_WARNING, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 (i32, i8*, ...) @serverLog(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %25
  br label %37

37:                                               ; preds = %36, %21, %4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %40 = load i32, i32* @AE_READABLE, align 4
  %41 = call i32 @aeDeleteFileEvent(i32 %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @aeDeleteFileEvent(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
