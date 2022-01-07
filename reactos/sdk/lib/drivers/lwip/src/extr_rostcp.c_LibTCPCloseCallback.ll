; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPCloseCallback.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPCloseCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwip_callback_msg = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@ERR_OK = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ERR_CLSD = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @LibTCPCloseCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LibTCPCloseCallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lwip_callback_msg*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.lwip_callback_msg*
  store %struct.lwip_callback_msg* %6, %struct.lwip_callback_msg** %3, align 8
  %7 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %8 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %15 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = call i32 @LibTCPEmptyQueue(%struct.TYPE_11__* %18)
  %20 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %21 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i8*, i8** @ERR_OK, align 8
  %30 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %31 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i8* %29, i8** %33, align 8
  br label %117

34:                                               ; preds = %1
  %35 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %36 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load i64, i64* @TRUE, align 8
  %43 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %44 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i64 %42, i64* %48, align 8
  br label %49

49:                                               ; preds = %41, %34
  %50 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %51 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %49
  %59 = load i8*, i8** @ERR_OK, align 8
  %60 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %61 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i8* %59, i8** %63, align 8
  br label %117

64:                                               ; preds = %49
  %65 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %66 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @tcp_arg(i32* %71, i32* null)
  %73 = load i32*, i32** %4, align 8
  %74 = call i8* @tcp_close(i32* %73)
  %75 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %76 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i8* %74, i8** %78, align 8
  %79 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %80 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %64
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %88 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i32* %86, i32** %92, align 8
  %93 = load i64, i64* @FALSE, align 8
  %94 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %95 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i64 %93, i64* %99, align 8
  br label %116

100:                                              ; preds = %64
  %101 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %102 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %109 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i32, i32* @ERR_CLSD, align 4
  %114 = call i32 @TCPFinEventHandler(%struct.TYPE_11__* %112, i32 %113)
  br label %115

115:                                              ; preds = %107, %100
  br label %116

116:                                              ; preds = %115, %85
  br label %117

117:                                              ; preds = %116, %58, %28
  %118 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %119 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %118, i32 0, i32 0
  %120 = load i32, i32* @IO_NO_INCREMENT, align 4
  %121 = load i64, i64* @FALSE, align 8
  %122 = call i32 @KeSetEvent(i32* %119, i32 %120, i64 %121)
  ret void
}

declare dso_local i32 @LibTCPEmptyQueue(%struct.TYPE_11__*) #1

declare dso_local i32 @tcp_arg(i32*, i32*) #1

declare dso_local i8* @tcp_close(i32*) #1

declare dso_local i32 @TCPFinEventHandler(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
