; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_handle_exit.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_handle_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.skynet_context = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"KILL self\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"KILL :%0x\00", align 1
@G_NODE = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PTYPE_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skynet_context*, i64)* @handle_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_exit(%struct.skynet_context* %0, i64 %1) #0 {
  %3 = alloca %struct.skynet_context*, align 8
  %4 = alloca i64, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %9 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %12 = call i32 (%struct.skynet_context*, i8*, ...) @skynet_error(%struct.skynet_context* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 (%struct.skynet_context*, i8*, ...) @skynet_error(%struct.skynet_context* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %13, %7
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G_NODE, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G_NODE, i32 0, i32 0), align 8
  %24 = load i32, i32* @PTYPE_CLIENT, align 4
  %25 = call i32 @skynet_send(%struct.skynet_context* %21, i64 %22, i64 %23, i32 %24, i32 0, i32* null, i32 0)
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @skynet_handle_retire(i64 %27)
  ret void
}

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, ...) #1

declare dso_local i32 @skynet_send(%struct.skynet_context*, i64, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @skynet_handle_retire(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
