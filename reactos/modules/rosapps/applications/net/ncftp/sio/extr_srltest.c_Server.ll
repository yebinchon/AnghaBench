; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/sio/extr_srltest.c_Server.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/sio/extr_srltest.c_Server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }

@kReUseAddrYes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Server setup failed\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"server[%d]: started.\0A\00", align 1
@WNOHANG = common dso_local global i32 0, align 4
@kTimeoutErr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"server[%d]: idle\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"server[%d]: accept error: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"server[%d]: fork error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Server(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @kReUseAddrYes, align 4
  %9 = call i32 @SNewStreamServer(i32 %7, i32 3, i32 %8, i32 3)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %1
  %16 = call i64 (...) @getpid()
  %17 = trunc i64 %16 to i32
  %18 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %69, %15
  br label %20

20:                                               ; preds = %24, %19
  %21 = load i32, i32* @WNOHANG, align 4
  %22 = call i64 @waitpid(i32 -1, i32* null, i32 %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %20

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @SAccept(i32 %26, %struct.sockaddr_in* %5, i32 5)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @kTimeoutErr, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = call i64 (...) @getpid()
  %36 = trunc i64 %35 to i32
  %37 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %45

38:                                               ; preds = %30
  %39 = load i32, i32* @stderr, align 4
  %40 = call i64 (...) @getpid()
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @errno, align 4
  %43 = call i8* @strerror(i32 %42)
  %44 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %41, i8* %43)
  br label %45

45:                                               ; preds = %38, %34
  br label %69

46:                                               ; preds = %25
  %47 = call i32 (...) @fork()
  store i32 %47, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* @stderr, align 4
  %51 = call i64 (...) @getpid()
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @errno, align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %52, i8* %54)
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @ServeOneClient(i32 %61, %struct.sockaddr_in* %5)
  %63 = call i32 @exit(i32 0) #3
  unreachable

64:                                               ; preds = %57
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @close(i32 %65)
  br label %67

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %45
  br label %19
}

declare dso_local i32 @SNewStreamServer(i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @SAccept(i32, %struct.sockaddr_in*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @ServeOneClient(i32, %struct.sockaddr_in*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
