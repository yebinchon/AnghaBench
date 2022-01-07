; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_checkChildrenDone.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_checkChildrenDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@WNOHANG = common dso_local global i32 0, align 4
@SERVER_CHILD_NOERROR_RETVAL = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"wait3() returned an error: %s. rdb_child_pid = %d, aof_child_pid = %d, module_child_pid = %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Warning, detected child with unmatched pid: %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkChildrenDone() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %106

11:                                               ; preds = %7, %0
  %12 = load i32, i32* @WNOHANG, align 4
  %13 = call i32 @wait3(i32* %1, i32 %12, i32* null)
  store i32 %13, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %106

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @WEXITSTATUS(i32 %16)
  store i32 %17, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i64 @WIFSIGNALED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @WTERMSIG(i32 %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SERVER_CHILD_NOERROR_RETVAL, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @SIGUSR1, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* @LL_WARNING, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %41 = call i32 (i32, i8*, i64, ...) @serverLog(i32 %34, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %38, i32 %39, i32 %40)
  br label %103

42:                                               ; preds = %30
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @backgroundSaveDoneHandler(i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (...) @receiveChildInfo()
  br label %57

57:                                               ; preds = %55, %52, %46
  br label %102

58:                                               ; preds = %42
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @backgroundRewriteDoneHandler(i32 %63, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %3, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 (...) @receiveChildInfo()
  br label %73

73:                                               ; preds = %71, %68, %62
  br label %101

74:                                               ; preds = %58
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @ModuleForkDoneHandler(i32 %79, i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (...) @receiveChildInfo()
  br label %89

89:                                               ; preds = %87, %84, %78
  br label %100

90:                                               ; preds = %74
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @ldbRemoveChild(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @LL_WARNING, align 4
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = call i32 (i32, i8*, i64, ...) @serverLog(i32 %95, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %97)
  br label %99

99:                                               ; preds = %94, %90
  br label %100

100:                                              ; preds = %99, %89
  br label %101

101:                                              ; preds = %100, %73
  br label %102

102:                                              ; preds = %101, %57
  br label %103

103:                                              ; preds = %102, %33
  %104 = call i32 (...) @updateDictResizePolicy()
  %105 = call i32 (...) @closeChildInfoPipe()
  br label %106

106:                                              ; preds = %10, %103, %11
  ret void
}

declare dso_local i32 @wait3(i32*, i32, i32*) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @serverLog(i32, i8*, i64, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @backgroundSaveDoneHandler(i32, i32) #1

declare dso_local i32 @receiveChildInfo(...) #1

declare dso_local i32 @backgroundRewriteDoneHandler(i32, i32) #1

declare dso_local i32 @ModuleForkDoneHandler(i32, i32) #1

declare dso_local i32 @ldbRemoveChild(i32) #1

declare dso_local i32 @updateDictResizePolicy(...) #1

declare dso_local i32 @closeChildInfoPipe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
