; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c_dispatch_message.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c_dispatch_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gate = type { i32, %struct.skynet_context*, i32 }
%struct.skynet_context = type { i32 }
%struct.connection = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Recv socket message > 16M\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gate*, %struct.connection*, i32, i8*, i32)* @dispatch_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_message(%struct.gate* %0, %struct.connection* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.gate*, align 8
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.skynet_context*, align 8
  store %struct.gate* %0, %struct.gate** %6, align 8
  store %struct.connection* %1, %struct.connection** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.connection*, %struct.connection** %7, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 0
  %15 = load %struct.gate*, %struct.gate** %6, align 8
  %16 = getelementptr inbounds %struct.gate, %struct.gate* %15, i32 0, i32 0
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @databuffer_push(i32* %14, i32* %16, i8* %17, i32 %18)
  br label %20

20:                                               ; preds = %62, %5
  %21 = load %struct.connection*, %struct.connection** %7, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 0
  %23 = load %struct.gate*, %struct.gate** %6, align 8
  %24 = getelementptr inbounds %struct.gate, %struct.gate* %23, i32 0, i32 0
  %25 = load %struct.gate*, %struct.gate** %6, align 8
  %26 = getelementptr inbounds %struct.gate, %struct.gate* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @databuffer_readheader(i32* %22, i32* %24, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %63

32:                                               ; preds = %20
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = icmp sge i32 %36, 16777216
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load %struct.gate*, %struct.gate** %6, align 8
  %40 = getelementptr inbounds %struct.gate, %struct.gate* %39, i32 0, i32 1
  %41 = load %struct.skynet_context*, %struct.skynet_context** %40, align 8
  store %struct.skynet_context* %41, %struct.skynet_context** %12, align 8
  %42 = load %struct.connection*, %struct.connection** %7, align 8
  %43 = getelementptr inbounds %struct.connection, %struct.connection* %42, i32 0, i32 0
  %44 = load %struct.gate*, %struct.gate** %6, align 8
  %45 = getelementptr inbounds %struct.gate, %struct.gate* %44, i32 0, i32 0
  %46 = call i32 @databuffer_clear(i32* %43, i32* %45)
  %47 = load %struct.skynet_context*, %struct.skynet_context** %12, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @skynet_socket_close(%struct.skynet_context* %47, i32 %48)
  %50 = load %struct.skynet_context*, %struct.skynet_context** %12, align 8
  %51 = call i32 @skynet_error(%struct.skynet_context* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %63

52:                                               ; preds = %35
  %53 = load %struct.gate*, %struct.gate** %6, align 8
  %54 = load %struct.connection*, %struct.connection** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @_forward(%struct.gate* %53, %struct.connection* %54, i32 %55)
  %57 = load %struct.connection*, %struct.connection** %7, align 8
  %58 = getelementptr inbounds %struct.connection, %struct.connection* %57, i32 0, i32 0
  %59 = call i32 @databuffer_reset(i32* %58)
  br label %60

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %32
  br label %62

62:                                               ; preds = %61
  br label %20

63:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @databuffer_push(i32*, i32*, i8*, i32) #1

declare dso_local i32 @databuffer_readheader(i32*, i32*, i32) #1

declare dso_local i32 @databuffer_clear(i32*, i32*) #1

declare dso_local i32 @skynet_socket_close(%struct.skynet_context*, i32) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*) #1

declare dso_local i32 @_forward(%struct.gate*, %struct.connection*, i32) #1

declare dso_local i32 @databuffer_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
