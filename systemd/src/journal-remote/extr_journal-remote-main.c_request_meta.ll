; ModuleID = '/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-remote-main.c_request_meta.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-remote-main.c_request_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@journal_remote_server_global = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to get writer for source %s: %m\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Added RemoteSource as connection metadata %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i8*)* @request_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_meta(i8** %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @assert(i8** %11)
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load i32, i32* @journal_remote_server_global, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @journal_remote_get_writer(i32 %18, i8* %19, i32** %9)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @log_warning_errno(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %4, align 4
  br label %44

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32* @source_new(i32 %28, i32 1, i8* %29, i32* %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @writer_unref(i32* %35)
  %37 = call i32 (...) @log_oom()
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %27
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @log_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load i8**, i8*** %5, align 8
  store i8* %42, i8** %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %34, %23, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @journal_remote_get_writer(i32, i8*, i32**) #1

declare dso_local i32 @log_warning_errno(i32, i8*, i8*) #1

declare dso_local i32* @source_new(i32, i32, i8*, i32*) #1

declare dso_local i32 @writer_unref(i32*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @log_debug(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
