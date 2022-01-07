; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_mevent_test.c_acceptor.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_mevent_test.c_acceptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@acceptor.first = internal global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@TEST_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@EVF_READ = common dso_local global i32 0, align 4
@acceptor_callback = common dso_local global i32 0, align 4
@accept_mutex = common dso_local global i32 0, align 4
@accept_condvar = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"accept error\00", align 1
@acceptor.first.4 = internal global i32 1, align 4
@EVF_TIMER = common dso_local global i32 0, align 4
@timer_callback = common dso_local global i32 0, align 4
@tevp = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"incoming connection, spawning thread\0A\00", align 1
@echoer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @acceptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @acceptor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i32 16, i32* %15, align 4
  %16 = load i32, i32* @AF_INET, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @INADDR_ANY, align 4
  %19 = call i32 @htonl(i32 %18)
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @TEST_PORT, align 4
  %23 = call i32 @htons(i32 %22)
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %27 = call i64 @bind(i32 %25, %struct.sockaddr* %26, i32 16)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %14
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @listen(i32 %33, i32 1)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @EVF_READ, align 4
  %42 = load i32, i32* @acceptor_callback, align 4
  %43 = call i32 @mevent_add(i32 %40, i32 %41, i32 %42, i32* null)
  %44 = call i32 @pthread_mutex_lock(i32* @accept_mutex)
  br label %45

45:                                               ; preds = %70, %39
  %46 = call i32 @pthread_cond_wait(i32* @accept_condvar, i32* @accept_mutex)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @accept(i32 %50, i32* null, i32* null)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %70

56:                                               ; preds = %49
  %57 = load i32, i32* @acceptor.first.4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  store i32 0, i32* @acceptor.first.4, align 4
  %60 = load i32, i32* @EVF_TIMER, align 4
  %61 = load i32, i32* @timer_callback, align 4
  %62 = call i32 @mevent_add(i32 1, i32 %60, i32 %61, i32* null)
  store i32 %62, i32* @tevp, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i32, i32* @echoer, align 4
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @pthread_create(i32* %4, i32* null, i32 %65, i8* %68)
  br label %70

70:                                               ; preds = %63, %54
  br label %45

71:                                               ; preds = %45
  ret i8* null
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @mevent_add(i32, i32, i32, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
