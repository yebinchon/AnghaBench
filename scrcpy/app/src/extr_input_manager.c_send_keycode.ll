; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_send_keycode.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_send_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }
%struct.control_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@CONTROL_MSG_TYPE_INJECT_KEYCODE = common dso_local global i32 0, align 4
@ACTION_DOWN = common dso_local global i32 0, align 4
@AKEY_EVENT_ACTION_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not request 'inject %s (DOWN)'\00", align 1
@ACTION_UP = common dso_local global i32 0, align 4
@AKEY_EVENT_ACTION_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not request 'inject %s (UP)'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*, i32, i32, i8*)* @send_keycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_keycode(%struct.controller* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.control_msg, align 8
  store %struct.controller* %0, %struct.controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @CONTROL_MSG_TYPE_INJECT_KEYCODE, align 4
  %11 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %9, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %9, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %9, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ACTION_DOWN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load i32, i32* @AKEY_EVENT_ACTION_DOWN, align 4
  %23 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %9, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.controller*, %struct.controller** %5, align 8
  %26 = call i32 @controller_push_msg(%struct.controller* %25, %struct.control_msg* %9)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @LOGW(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %48

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ACTION_UP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i32, i32* @AKEY_EVENT_ACTION_UP, align 4
  %39 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %9, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.controller*, %struct.controller** %5, align 8
  %42 = call i32 @controller_push_msg(%struct.controller* %41, %struct.control_msg* %9)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @LOGW(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %28, %47, %32
  ret void
}

declare dso_local i32 @controller_push_msg(%struct.controller*, %struct.control_msg*) #1

declare dso_local i32 @LOGW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
