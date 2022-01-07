; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterRedirectClient.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterRedirectClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@CLUSTER_REDIR_CROSS_SLOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"-CROSSSLOT Keys in request don't hash to the same slot\0D\0A\00", align 1
@CLUSTER_REDIR_UNSTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"-TRYAGAIN Multiple keys request during rehashing of slot\0D\0A\00", align 1
@CLUSTER_REDIR_DOWN_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"-CLUSTERDOWN The cluster is down\0D\0A\00", align 1
@CLUSTER_REDIR_DOWN_UNBOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"-CLUSTERDOWN Hash slot not served\0D\0A\00", align 1
@CLUSTER_REDIR_MOVED = common dso_local global i32 0, align 4
@CLUSTER_REDIR_ASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"-%s %d %s:%d\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ASK\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"MOVED\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"getNodeByQuery() unknown error.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterRedirectClient(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CLUSTER_REDIR_CROSS_SLOT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @sdsnew(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @addReplySds(i32* %13, i32 %14)
  br label %71

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @CLUSTER_REDIR_UNSTABLE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @sdsnew(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @addReplySds(i32* %21, i32 %22)
  br label %70

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @CLUSTER_REDIR_DOWN_STATE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @sdsnew(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @addReplySds(i32* %29, i32 %30)
  br label %69

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @CLUSTER_REDIR_DOWN_UNBOUND, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @sdsnew(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @addReplySds(i32* %37, i32 %38)
  br label %68

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @CLUSTER_REDIR_MOVED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @CLUSTER_REDIR_ASK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %44, %40
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 (...) @sdsempty()
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @CLUSTER_REDIR_ASK, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sdscatprintf(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %55, i32 %56, i32 %59, i32 %62)
  %64 = call i32 @addReplySds(i32* %49, i32 %63)
  br label %67

65:                                               ; preds = %44
  %66 = call i32 @serverPanic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %48
  br label %68

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68, %28
  br label %70

70:                                               ; preds = %69, %20
  br label %71

71:                                               ; preds = %70, %12
  ret void
}

declare dso_local i32 @addReplySds(i32*, i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
