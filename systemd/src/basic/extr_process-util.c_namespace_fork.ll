; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_process-util.c_namespace_fork.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_process-util.c_namespace_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORK_DEATHSIG = common dso_local global i32 0, align 4
@FORK_REOPEN_LOG = common dso_local global i32 0, align 4
@FORK_NEW_MOUNTNS = common dso_local global i32 0, align 4
@FORK_MOUNTNS_SLAVE = common dso_local global i32 0, align 4
@FORK_LOG = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to join namespace: %m\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@FORK_WAIT = common dso_local global i32 0, align 4
@FORK_RESET_SIGNALS = common dso_local global i32 0, align 4
@FORK_CLOSE_ALL_FDS = common dso_local global i32 0, align 4
@FORK_NULL_STDIO = common dso_local global i32 0, align 4
@WAIT_LOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @namespace_fork(i8* %0, i8* %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32* %2, i32** %15, align 8
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = load i64, i64* %16, align 8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* @FORK_DEATHSIG, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FORK_REOPEN_LOG, align 4
  %33 = load i32, i32* @FORK_NEW_MOUNTNS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FORK_MOUNTNS_SLAVE, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %31, %37
  %39 = load i32*, i32** %23, align 8
  %40 = call i32 @safe_fork_full(i8* %26, i32* %27, i64 %28, i32 %38, i32* %39)
  store i32 %40, i32* %24, align 4
  %41 = load i32, i32* %24, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %11
  %44 = load i32, i32* %24, align 4
  store i32 %44, i32* %12, align 4
  br label %124

45:                                               ; preds = %11
  %46 = load i32, i32* %24, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %123

48:                                               ; preds = %45
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %22, align 4
  %54 = call i32 @namespace_enter(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %24, align 4
  %55 = load i32, i32* %24, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %48
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* @FORK_LOG, align 4
  %60 = call i64 @FLAGS_SET(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @LOG_ERR, align 4
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @LOG_DEBUG, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load i32, i32* %24, align 4
  %69 = call i32 @log_full_errno(i32 %67, i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EXIT_FAILURE, align 4
  %71 = call i32 @_exit(i32 %70) #3
  unreachable

72:                                               ; preds = %48
  %73 = load i8*, i8** %14, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @FORK_WAIT, align 4
  %78 = load i32, i32* @FORK_RESET_SIGNALS, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @FORK_CLOSE_ALL_FDS, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @FORK_NULL_STDIO, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %76, %84
  %86 = call i32 @safe_fork_full(i8* %73, i32* %74, i64 %75, i32 %85, i32* %25)
  store i32 %86, i32* %24, align 4
  %87 = load i32, i32* %24, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %72
  %90 = load i32, i32* @EXIT_FAILURE, align 4
  %91 = call i32 @_exit(i32 %90) #3
  unreachable

92:                                               ; preds = %72
  %93 = load i32, i32* %24, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32*, i32** %23, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %25, align 4
  %100 = load i32*, i32** %23, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %95
  store i32 0, i32* %12, align 4
  br label %124

102:                                              ; preds = %92
  %103 = load i8*, i8** %14, align 8
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @FORK_LOG, align 4
  %107 = call i64 @FLAGS_SET(i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @WAIT_LOG, align 4
  br label %112

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ]
  %114 = call i32 @wait_for_terminate_and_check(i8* %103, i32 %104, i32 %113)
  store i32 %114, i32* %24, align 4
  %115 = load i32, i32* %24, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* @EXIT_FAILURE, align 4
  %119 = call i32 @_exit(i32 %118) #3
  unreachable

120:                                              ; preds = %112
  %121 = load i32, i32* %24, align 4
  %122 = call i32 @_exit(i32 %121) #3
  unreachable

123:                                              ; preds = %45
  store i32 1, i32* %12, align 4
  br label %124

124:                                              ; preds = %123, %101, %43
  %125 = load i32, i32* %12, align 4
  ret i32 %125
}

declare dso_local i32 @safe_fork_full(i8*, i32*, i64, i32, i32*) #1

declare dso_local i32 @namespace_enter(i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_full_errno(i32, i32, i8*) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @wait_for_terminate_and_check(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
