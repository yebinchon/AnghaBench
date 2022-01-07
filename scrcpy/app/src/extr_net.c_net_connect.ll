; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_net.c_net_connect.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_net.c_net_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"connect\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @net_connect(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @AF_INET, align 4
  %9 = load i32, i32* @SOCK_STREAM, align 4
  %10 = call i64 @socket(i32 %8, i32 %9, i32 0)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @INVALID_SOCKET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %16, i64* %3, align 8
  br label %39

17:                                               ; preds = %2
  %18 = load i32, i32* @AF_INET, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @htonl(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @htons(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i64, i64* %6, align 8
  %28 = bitcast %struct.TYPE_4__* %7 to i32*
  %29 = call i64 @connect(i64 %27, i32* %28, i32 12)
  %30 = load i64, i64* @SOCKET_ERROR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @net_close(i64 %34)
  %36 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %36, i64* %3, align 8
  br label %39

37:                                               ; preds = %17
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %37, %32, %14
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @connect(i64, i32*, i32) #1

declare dso_local i32 @net_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
