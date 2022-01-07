; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_log.c_vplog.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_log.c_vplog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_threshold = common dso_local global i32 0, align 4
@print_mtx = common dso_local global i32 0, align 4
@out_fd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"DEBUG: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"MSG: \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"WARN: \00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"ERR: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vplog(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @log_threshold, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %37

12:                                               ; preds = %3
  %13 = call i32 @pthread_mutex_lock(i32* @print_mtx)
  %14 = load i32*, i32** @out_fd, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %29 [
    i32 131, label %16
    i32 129, label %19
    i32 128, label %22
    i32 130, label %25
  ]

16:                                               ; preds = %12
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @fprintf(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %29

19:                                               ; preds = %12
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @fprintf(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %29

22:                                               ; preds = %12
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @fprintf(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %29

25:                                               ; preds = %12
  %26 = load i32*, i32** @stderr, align 8
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @fprintf(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %12, %25, %22, %19, %16
  %30 = load i32*, i32** %7, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @vfprintf(i32* %30, i8* %31, i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @fprintf(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %36 = call i32 @pthread_mutex_unlock(i32* @print_mtx)
  br label %37

37:                                               ; preds = %29, %11
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @vfprintf(i32*, i8*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
