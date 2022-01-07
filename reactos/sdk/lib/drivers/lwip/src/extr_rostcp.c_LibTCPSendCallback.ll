; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPSendCallback.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPSendCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwip_callback_msg = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@ERR_CLSD = common dso_local global i8* null, align 8
@TCP_WRITE_FLAG_COPY = common dso_local global i32 0, align 4
@ERR_INPROGRESS = common dso_local global i8* null, align 8
@TCP_WRITE_FLAG_MORE = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@ERR_MEM = common dso_local global i64 0, align 8
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @LibTCPSendCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LibTCPSendCallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lwip_callback_msg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.lwip_callback_msg*
  store %struct.lwip_callback_msg* %8, %struct.lwip_callback_msg** %3, align 8
  %9 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %10 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %17 = call i32 @ASSERT(%struct.lwip_callback_msg* %16)
  %18 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %19 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %1
  %27 = load i8*, i8** @ERR_CLSD, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %30 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i64 %28, i64* %32, align 8
  br label %130

33:                                               ; preds = %1
  %34 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %35 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i8*, i8** @ERR_CLSD, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %46 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i64 %44, i64* %48, align 8
  br label %130

49:                                               ; preds = %33
  %50 = load i32, i32* @TCP_WRITE_FLAG_COPY, align 4
  store i32 %50, i32* %6, align 4
  %51 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %52 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @tcp_sndbuf(i64 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load i8*, i8** @ERR_INPROGRESS, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %63 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  br label %130

66:                                               ; preds = %49
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @tcp_sndbuf(i64 %67)
  %69 = load i64, i64* %5, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @tcp_sndbuf(i64 %72)
  store i64 %73, i64* %5, align 8
  %74 = load i32, i32* @TCP_WRITE_FLAG_MORE, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %71, %66
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %81 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i64 @tcp_write(i64 %79, i32 %84, i64 %85, i32 %86)
  %88 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %89 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i64 %87, i64* %91, align 8
  %92 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %93 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ERR_OK, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %78
  %100 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %101 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @tcp_output(i64 %106)
  %108 = load i64, i64* %5, align 8
  %109 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %110 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  store i64 %108, i64* %112, align 8
  br label %129

113:                                              ; preds = %78
  %114 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %115 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ERR_MEM, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %113
  %122 = load i8*, i8** @ERR_INPROGRESS, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %125 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i64 %123, i64* %127, align 8
  br label %128

128:                                              ; preds = %121, %113
  br label %129

129:                                              ; preds = %128, %99
  br label %130

130:                                              ; preds = %129, %59, %42, %26
  %131 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %132 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %131, i32 0, i32 0
  %133 = load i32, i32* @IO_NO_INCREMENT, align 4
  %134 = load i32, i32* @FALSE, align 4
  %135 = call i32 @KeSetEvent(i32* %132, i32 %133, i32 %134)
  ret void
}

declare dso_local i32 @ASSERT(%struct.lwip_callback_msg*) #1

declare dso_local i64 @tcp_sndbuf(i64) #1

declare dso_local i64 @tcp_write(i64, i32, i64, i32) #1

declare dso_local i32 @tcp_output(i64) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
