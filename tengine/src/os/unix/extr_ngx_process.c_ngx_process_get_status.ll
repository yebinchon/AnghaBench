; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process.c_ngx_process_get_status.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process.c_ngx_process_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i64 }

@WNOHANG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i64 0, align 8
@NGX_EINTR = common dso_local global i64 0, align 8
@NGX_ECHILD = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"waitpid() failed\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"unknown process\00", align 1
@ngx_last_process = common dso_local global i64 0, align 8
@ngx_processes = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"%s %P exited on signal %d\00", align 1
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s %P exited with code %d\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"%s %P exited with fatal code %d and cannot be respawned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ngx_process_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_process_get_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %129, %21, %0
  %8 = load i32, i32* @WNOHANG, align 4
  %9 = call i32 @waitpid(i32 -1, i32* %1, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %132

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load i64, i64* @ngx_errno, align 8
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @NGX_EINTR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %7

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @NGX_ECHILD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %132

30:                                               ; preds = %26, %22
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @NGX_ECHILD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* @NGX_LOG_INFO, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ngx_cycle, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %4, align 8
  %40 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %35, i32 %38, i64 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %132

41:                                               ; preds = %30
  %42 = load i32, i32* @NGX_LOG_ALERT, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ngx_cycle, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %4, align 8
  %47 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %42, i32 %45, i64 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %132

48:                                               ; preds = %13
  store i32 1, i32* %6, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i64 0, i64* %5, align 8
  br label %49

49:                                               ; preds = %77, %48
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @ngx_last_process, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %49
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ngx_processes, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %53
  %62 = load i32, i32* %1, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ngx_processes, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ngx_processes, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ngx_processes, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %2, align 8
  br label %80

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %49

80:                                               ; preds = %61, %49
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @WTERMSIG(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i32, i32* @NGX_LOG_ALERT, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ngx_cycle, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @WTERMSIG(i32 %91)
  %93 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %85, i32 %88, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %89, i32 %90, i32 %92)
  br label %104

94:                                               ; preds = %80
  %95 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ngx_cycle, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %2, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %1, align 4
  %102 = call i32 @WEXITSTATUS(i32 %101)
  %103 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %95, i32 %98, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %99, i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %94, %84
  %105 = load i32, i32* %1, align 4
  %106 = call i32 @WEXITSTATUS(i32 %105)
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ngx_processes, align 8
  %110 = load i64, i64* %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %108
  %116 = load i32, i32* @NGX_LOG_ALERT, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ngx_cycle, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %2, align 8
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %1, align 4
  %123 = call i32 @WEXITSTATUS(i32 %122)
  %124 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %116, i32 %119, i64 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* %120, i32 %121, i32 %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ngx_processes, align 8
  %126 = load i64, i64* %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 4
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %115, %108, %104
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @ngx_unlock_mutexes(i32 %130)
  br label %7

132:                                              ; preds = %41, %34, %29, %12
  ret void
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*, ...) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @ngx_unlock_mutexes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
