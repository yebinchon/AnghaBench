; ModuleID = '/home/carl/AnghaBench/scrcpy/app/tests/extr_test_device_msg_deserialize.c_test_deserialize_clipboard.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/tests/extr_test_device_msg_deserialize.c_test_deserialize_clipboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_msg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DEVICE_MSG_TYPE_CLIPBOARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_deserialize_clipboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_deserialize_clipboard() #0 {
  %1 = alloca [6 x i8], align 1
  %2 = alloca %struct.device_msg, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  %5 = load i32, i32* @DEVICE_MSG_TYPE_CLIPBOARD, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %4, align 1
  %7 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 3, i8* %8, align 1
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 65, i8* %9, align 1
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 66, i8* %10, align 1
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 67, i8* %11, align 1
  %12 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  %13 = call i32 @device_msg_deserialize(i8* %12, i32 6, %struct.device_msg* %2)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 6
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = getelementptr inbounds %struct.device_msg, %struct.device_msg* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DEVICE_MSG_TYPE_CLIPBOARD, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = getelementptr inbounds %struct.device_msg, %struct.device_msg* %2, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @assert(i32 %26)
  %28 = getelementptr inbounds %struct.device_msg, %struct.device_msg* %2, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = call i32 @device_msg_destroy(%struct.device_msg* %2)
  ret void
}

declare dso_local i32 @device_msg_deserialize(i8*, i32, %struct.device_msg*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @device_msg_destroy(%struct.device_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
