; ModuleID = '/home/carl/AnghaBench/vlc/src/darwin/extr_thread.c_vlc_thread_fatal.c'
source_filename = "/home/carl/AnghaBench/vlc/src/darwin/extr_thread.c_vlc_thread_fatal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"LibVLC fatal error %s (%d) in thread %lu \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unknown (too big to display)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unknown (invalid error number)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c" Error message: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8*, i32)* @vlc_thread_fatal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_thread_fatal(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1000 x i8], align 16
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = call i32 (...) @vlc_savecancel()
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (...) @vlc_thread_id()
  %19 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17, i32 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @vlc_trace(i8* %20, i8* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds [1000 x i8], [1000 x i8]* %12, i64 0, i64 0
  %26 = call i32 @strerror_r(i32 %24, i8* %25, i32 1000)
  switch i32 %26, label %30 [
    i32 0, label %27
    i32 128, label %29
  ]

27:                                               ; preds = %5
  %28 = getelementptr inbounds [1000 x i8], [1000 x i8]* %12, i64 0, i64 0
  store i8* %28, i8** %13, align 8
  br label %31

29:                                               ; preds = %5
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %31

30:                                               ; preds = %5
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %31

31:                                               ; preds = %30, %29, %27
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fflush(i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @vlc_restorecancel(i32 %37)
  %39 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @vlc_thread_id(...) #1

declare dso_local i32 @vlc_trace(i8*, i8*, i32) #1

declare dso_local i32 @strerror_r(i32, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
