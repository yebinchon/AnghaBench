; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_pipe_create_suitpath.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_pipe_create_suitpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.tm = type { i32 }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"get now time failed\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"parse suitpath with time now failed\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"unlink [%s] success\00", align 1
@ngx_errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"unlink [%s] failed\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"symlink [%s] success\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"symlink [%s] failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_6__*)* @ngx_pipe_create_suitpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_pipe_create_suitpath(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %9 = call i32 (...) @ngx_time()
  store i32 %9, i32* %8, align 4
  %10 = call %struct.tm* @localtime(i32* %8)
  store %struct.tm* %10, %struct.tm** %6, align 8
  %11 = load %struct.tm*, %struct.tm** %6, align 8
  %12 = icmp eq %struct.tm* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @NGX_LOG_EMERG, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %14, i32 %17, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %85

19:                                               ; preds = %2
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tm*, %struct.tm** %6, align 8
  %25 = call i64 @strftime(i8* %20, i32 256, i32 %23, %struct.tm* %24)
  %26 = icmp sge i64 0, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32, i32* @NGX_LOG_EMERG, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %28, i32 %31, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %85

33:                                               ; preds = %19
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = call i32 @ngx_pipe_create_subdirs(i8* %34, %struct.TYPE_7__* %35)
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %38 = call i32 @unlink(i8* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 0, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load i32, i32* @NGX_LOG_INFO, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %47 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %42, i32 %45, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %56

48:                                               ; preds = %33
  %49 = load i32, i32* @NGX_LOG_EMERG, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ngx_errno, align 4
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %55 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %49, i32 %52, i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %48, %41
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %61 = call i32 @symlink(i32 %59, i8* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 0, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load i32, i32* @NGX_LOG_INFO, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %70 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %65, i32 %68, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  br label %79

71:                                               ; preds = %56
  %72 = load i32, i32* @NGX_LOG_EMERG, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ngx_errno, align 4
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %78 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %72, i32 %75, i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %71, %64
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %27, %13
  ret void
}

declare dso_local i32 @ngx_time(...) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @strftime(i8*, i32, i32, %struct.tm*) #1

declare dso_local i32 @ngx_pipe_create_subdirs(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @symlink(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
