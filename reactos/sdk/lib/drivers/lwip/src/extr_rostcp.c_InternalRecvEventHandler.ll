; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_InternalRecvEventHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_InternalRecvEventHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32 }
%struct.TYPE_4__ = type { i64, i32*, i32, i32 }

@ERR_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@ERR_CLSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, %struct.pbuf*, i64)* @InternalRecvEventHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @InternalRecvEventHandler(i8* %0, i32 %1, %struct.pbuf* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.pbuf* %2, %struct.pbuf** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %17 = icmp ne %struct.pbuf* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %20 = call i32 @pbuf_free(%struct.pbuf* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i64, i64* @ERR_OK, align 8
  store i64 %22, i64* %5, align 8
  br label %72

23:                                               ; preds = %4
  %24 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %25 = icmp ne %struct.pbuf* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %29 = call i32 @LibTCPEnqueuePacket(%struct.TYPE_4__* %27, %struct.pbuf* %28)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %32 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @tcp_recved(i32 %30, i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @TCPRecvEventHandler(i8* %35)
  br label %70

37:                                               ; preds = %23
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @ERR_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  %42 = load i32, i32* @TRUE, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @STATUS_SUCCESS, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @tcp_arg(i32 %55, i32* null)
  br label %57

57:                                               ; preds = %52, %41
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @TCPRecvEventHandler(i8* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = load i32, i32* @ERR_CLSD, align 4
  %67 = call i32 @TCPFinEventHandler(%struct.TYPE_4__* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %57
  br label %69

69:                                               ; preds = %68, %37
  br label %70

70:                                               ; preds = %69, %26
  %71 = load i64, i64* @ERR_OK, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %70, %21
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @LibTCPEnqueuePacket(%struct.TYPE_4__*, %struct.pbuf*) #1

declare dso_local i32 @tcp_recved(i32, i32) #1

declare dso_local i32 @TCPRecvEventHandler(i8*) #1

declare dso_local i32 @tcp_arg(i32, i32*) #1

declare dso_local i32 @TCPFinEventHandler(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
