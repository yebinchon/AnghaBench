; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_sniff.c_ConnectToSniffEmacs.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_sniff.c_ConnectToSniffEmacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@sniffemacs_pid = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@SniffEmacs = common dso_local global i32* null, align 8
@msg_sniff_disconnect = common dso_local global i32 0, align 4
@fd_to_sniff = common dso_local global i32 0, align 4
@fd_from_sniff = common dso_local global i32 0, align 4
@sniff_connected = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SniffEmacsReadThread = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@hBufferMutex = common dso_local global i32* null, align 8
@handle_from_sniff = common dso_local global i8* null, align 8
@handle_to_sniff = common dso_local global i8* null, align 8
@readthread_handle = common dso_local global i8* null, align 8
@sniffemacs_handle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ConnectToSniffEmacs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConnectToSniffEmacs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca [2 x i32], align 4
  %4 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %5 = call i64 @pipe(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %68

8:                                                ; preds = %0
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %10 = call i64 @pipe(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %68

13:                                               ; preds = %8
  %14 = call i64 (...) @fork()
  store i64 %14, i64* @sniffemacs_pid, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @close(i32 %18)
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @close(i32 %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @stdin, align 4
  %26 = call i32 @fileno(i32 %25)
  %27 = call i32 @dup2(i32 %24, i32 %26)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 @fileno(i32 %30)
  %32 = call i32 @dup2(i32 %29, i32 %31)
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @close(i32 %34)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i32*, i32** @SniffEmacs, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** @SniffEmacs, align 8
  %43 = call i32 @execvp(i32 %41, i32* %42)
  %44 = call i32 @sleep(i32 1)
  %45 = load i32, i32* @msg_sniff_disconnect, align 4
  %46 = call i32 @_(i32 %45)
  %47 = load i32, i32* @stdout, align 4
  %48 = call i32 @fputs(i32 %46, i32 %47)
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @fflush(i32 %49)
  %51 = call i32 @sleep(i32 3)
  %52 = call i32 @exit(i32 1) #3
  unreachable

53:                                               ; preds = %13
  %54 = load i64, i64* @sniffemacs_pid, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* @fd_to_sniff, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @close(i32 %63)
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* @fd_from_sniff, align 4
  store i32 1, i32* @sniff_connected, align 4
  store i32 0, i32* %1, align 4
  br label %68

67:                                               ; preds = %53
  store i32 1, i32* %1, align 4
  br label %68

68:                                               ; preds = %67, %56, %12, %7
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @execvp(i32, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @_(i32) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
