; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_mevent.c_mevent_dispatch.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_mevent.c_mevent_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mevent = type { i32 }
%struct.kevent = type { i32 }

@MEVENT_MAX = common dso_local global i32 0, align 4
@mevent_tid = common dso_local global i32 0, align 4
@mevent_pipefd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@EVF_READ = common dso_local global i32 0, align 4
@mevent_pipe_read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error return from kevent change\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Error return from kevent monitor\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @mevent_dispatch() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mevent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MEVENT_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca %struct.kevent, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @MEVENT_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca %struct.kevent, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %15 = call i32 (...) @pthread_self()
  store i32 %15, i32* @mevent_tid, align 4
  %16 = call i32 (...) @mevent_set_name()
  %17 = call i32 (...) @kqueue()
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** @mevent_pipefd, align 8
  %23 = call i32 @pipe(i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %0
  %27 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @exit(i32 0) #4
  unreachable

29:                                               ; preds = %0
  %30 = load i32*, i32** @mevent_pipefd, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EVF_READ, align 4
  %34 = load i32, i32* @mevent_pipe_read, align 4
  %35 = call %struct.mevent* @mevent_add(i32 %32, i32 %33, i32 %34, i32* null)
  store %struct.mevent* %35, %struct.mevent** %4, align 8
  %36 = load %struct.mevent*, %struct.mevent** %4, align 8
  %37 = icmp ne %struct.mevent* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  br label %40

40:                                               ; preds = %66, %29
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @mevent_build(i32 %41, %struct.kevent* %11)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @kevent(i32 %46, %struct.kevent* %11, i32 %47, %struct.kevent* null, i32 0, i32* null)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %45
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MEVENT_MAX, align 4
  %57 = call i32 @kevent(i32 %55, %struct.kevent* null, i32 0, %struct.kevent* %14, i32 %56, i32* null)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @EINTR, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60, %54
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @mevent_handle(%struct.kevent* %14, i32 %67)
  br label %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_self(...) #2

declare dso_local i32 @mevent_set_name(...) #2

declare dso_local i32 @kqueue(...) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @pipe(i32*) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local %struct.mevent* @mevent_add(i32, i32, i32, i32*) #2

declare dso_local i32 @mevent_build(i32, %struct.kevent*) #2

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, i32*) #2

declare dso_local i32 @mevent_handle(%struct.kevent*, i32) #2

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
