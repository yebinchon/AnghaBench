; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPShutdownCallback.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPShutdownCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwip_callback_msg = type { i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i64, i64 }
%struct.TYPE_10__ = type { i32*, i8*, i8*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@ERR_CLSD = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@STATUS_FILE_CLOSED = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @LibTCPShutdownCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LibTCPShutdownCallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lwip_callback_msg*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.lwip_callback_msg*
  store %struct.lwip_callback_msg* %6, %struct.lwip_callback_msg** %3, align 8
  %7 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %8 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %15 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load i8*, i8** @ERR_CLSD, align 8
  %24 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %25 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i8* %23, i8** %27, align 8
  br label %140

28:                                               ; preds = %1
  %29 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %30 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** @TRUE, align 8
  %38 = load i8*, i8** @FALSE, align 8
  %39 = call i8* @tcp_shutdown(i32* %36, i8* %37, i8* %38)
  %40 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %41 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  br label %44

44:                                               ; preds = %35, %28
  %45 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %46 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load i32*, i32** %4, align 8
  %53 = load i8*, i8** @FALSE, align 8
  %54 = load i8*, i8** @TRUE, align 8
  %55 = call i8* @tcp_shutdown(i32* %52, i8* %53, i8* %54)
  %56 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %57 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 8
  br label %60

60:                                               ; preds = %51, %44
  %61 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %62 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %139, label %67

67:                                               ; preds = %60
  %68 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %69 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %67
  %75 = load i8*, i8** @TRUE, align 8
  %76 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %77 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  store i8* %75, i8** %81, align 8
  %82 = load i32, i32* @STATUS_FILE_CLOSED, align 4
  %83 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %84 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  store i32 %82, i32* %88, align 8
  br label %89

89:                                               ; preds = %74, %67
  %90 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %91 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load i8*, i8** @TRUE, align 8
  %98 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %99 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i8* %97, i8** %103, align 8
  br label %104

104:                                              ; preds = %96, %89
  %105 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %106 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %138

113:                                              ; preds = %104
  %114 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %115 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %138

122:                                              ; preds = %113
  %123 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %124 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i32* null, i32** %128, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @tcp_arg(i32* %129, i32* null)
  %131 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %132 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = load i8*, i8** @ERR_CLSD, align 8
  %137 = call i32 @TCPFinEventHandler(%struct.TYPE_10__* %135, i8* %136)
  br label %138

138:                                              ; preds = %122, %113, %104
  br label %139

139:                                              ; preds = %138, %60
  br label %140

140:                                              ; preds = %139, %22
  %141 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %142 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %141, i32 0, i32 0
  %143 = load i32, i32* @IO_NO_INCREMENT, align 4
  %144 = load i8*, i8** @FALSE, align 8
  %145 = call i32 @KeSetEvent(i32* %142, i32 %143, i8* %144)
  ret void
}

declare dso_local i8* @tcp_shutdown(i32*, i8*, i8*) #1

declare dso_local i32 @tcp_arg(i32*, i32*) #1

declare dso_local i32 @TCPFinEventHandler(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
