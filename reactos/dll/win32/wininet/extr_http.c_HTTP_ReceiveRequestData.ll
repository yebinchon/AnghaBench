; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_ReceiveRequestData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_ReceiveRequestData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"res %u read %u, closing connection\0A\00", align 1
@INET_OPENURL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @HTTP_ReceiveRequestData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HTTP_ReceiveRequestData(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %5)
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %9 = call i32 @EnterCriticalSection(i32* %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i64 @refill_read_buffer(%struct.TYPE_13__* %10, i32 %11, i64* %4)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 %20, %19
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = call i32 @LeaveCriticalSection(i32* %24)
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33, %29
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @http_release_netconn(%struct.TYPE_13__* %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %33, %22
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @send_request_complete(%struct.TYPE_13__* %52, i32 0, i64 %53)
  br label %76

55:                                               ; preds = %47, %43
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @INET_OPENURL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %55
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  br label %73

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %66
  %74 = phi i32 [ %71, %66 ], [ 1, %72 ]
  %75 = call i32 @send_request_complete(%struct.TYPE_13__* %56, i32 %74, i64 0)
  br label %76

76:                                               ; preds = %73, %51
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @refill_read_buffer(%struct.TYPE_13__*, i32, i64*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @WARN(i8*, i64, i64) #1

declare dso_local i32 @http_release_netconn(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @send_request_complete(%struct.TYPE_13__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
