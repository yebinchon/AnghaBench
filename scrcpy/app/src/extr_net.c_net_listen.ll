; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_net.c_net_listen.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_net.c_net_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"setsockopt(SO_REUSEADDR)\00", align 1
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"listen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @net_listen(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @AF_INET, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = call i64 @socket(i32 %11, i32 %12, i32 0)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @INVALID_SOCKET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %19, i64* %4, align 8
  br label %62

20:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @SOL_SOCKET, align 4
  %23 = load i32, i32* @SO_REUSEADDR, align 4
  %24 = bitcast i32* %9 to i8*
  %25 = call i32 @setsockopt(i64 %21, i32 %22, i32 %23, i8* %24, i32 4)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %20
  %30 = load i32, i32* @AF_INET, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @htonl(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @htons(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i64, i64* %8, align 8
  %40 = bitcast %struct.TYPE_4__* %10 to i32*
  %41 = call i64 @bind(i64 %39, i32* %40, i32 12)
  %42 = load i64, i64* @SOCKET_ERROR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @net_close(i64 %46)
  %48 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %48, i64* %4, align 8
  br label %62

49:                                               ; preds = %29
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @listen(i64 %50, i32 %51)
  %53 = load i64, i64* @SOCKET_ERROR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @net_close(i64 %57)
  %59 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %59, i64* %4, align 8
  br label %62

60:                                               ; preds = %49
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %60, %55, %44, %17
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @setsockopt(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i64, i32*, i32) #1

declare dso_local i32 @net_close(i64) #1

declare dso_local i64 @listen(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
