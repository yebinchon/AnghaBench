; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_addReplyReplicationBacklog.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_addReplyReplicationBacklog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@LL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[PSYNC] Replica request offset: %lld\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"[PSYNC] Backlog history len is zero\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"[PSYNC] Backlog size: %lld\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"[PSYNC] First byte: %lld\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"[PSYNC] History len: %lld\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"[PSYNC] Current index: %lld\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"[PSYNC] Skipping: %lld\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"[PSYNC] Index of first byte: %lld\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"[PSYNC] Reply total length: %lld\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"[PSYNC] addReply() length: %lld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @addReplyReplicationBacklog(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @LL_DEBUG, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 (i32, i8*, ...) @serverLog(i32 %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @LL_DEBUG, align 4
  %17 = call i32 (i32, i8*, ...) @serverLog(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %92

18:                                               ; preds = %2
  %19 = load i32, i32* @LL_DEBUG, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %21 = call i32 (i32, i8*, ...) @serverLog(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @LL_DEBUG, align 4
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %24 = call i32 (i32, i8*, ...) @serverLog(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @LL_DEBUG, align 4
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %27 = call i32 (i32, i8*, ...) @serverLog(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @LL_DEBUG, align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %30 = call i32 (i32, i8*, ...) @serverLog(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %33 = sub nsw i64 %31, %32
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* @LL_DEBUG, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 (i32, i8*, ...) @serverLog(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %40 = sub nsw i64 %38, %39
  %41 = add nsw i64 %37, %40
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %43 = srem i64 %41, %42
  store i64 %43, i64* %6, align 8
  %44 = load i32, i32* @LL_DEBUG, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 (i32, i8*, ...) @serverLog(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %45)
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %51 = srem i64 %49, %50
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %8, align 8
  %55 = load i32, i32* @LL_DEBUG, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 (i32, i8*, ...) @serverLog(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %73, %18
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %58
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %63 = load i64, i64* %6, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load i64, i64* %8, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %69 = load i64, i64* %6, align 8
  %70 = sub nsw i64 %68, %69
  br label %73

71:                                               ; preds = %61
  %72 = load i64, i64* %8, align 8
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi i64 [ %70, %67 ], [ %72, %71 ]
  store i64 %74, i64* %9, align 8
  %75 = load i32, i32* @LL_DEBUG, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i32 (i32, i8*, ...) @serverLog(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %80 = load i64, i64* %6, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @sdsnewlen(i64 %81, i64 %82)
  %84 = call i32 @addReplySds(i32* %78, i32 %83)
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %8, align 8
  %87 = sub nsw i64 %86, %85
  store i64 %87, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %58

88:                                               ; preds = %58
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %90 = load i64, i64* %7, align 8
  %91 = sub nsw i64 %89, %90
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %88, %15
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @addReplySds(i32*, i32) #1

declare dso_local i32 @sdsnewlen(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
