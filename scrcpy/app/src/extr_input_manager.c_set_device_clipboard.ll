; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_set_device_clipboard.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_set_device_clipboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }
%struct.control_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [33 x i8] c"Could not get clipboard text: %s\00", align 1
@CONTROL_MSG_TYPE_SET_CLIPBOARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not request 'set device clipboard'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*)* @set_device_clipboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_device_clipboard(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.control_msg, align 8
  store %struct.controller* %0, %struct.controller** %2, align 8
  %5 = call i8* (...) @SDL_GetClipboardText()
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = call i32 (...) @SDL_GetError()
  %10 = call i32 (i8*, ...) @LOGW(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %31

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @SDL_free(i8* %16)
  br label %31

18:                                               ; preds = %11
  %19 = load i32, i32* @CONTROL_MSG_TYPE_SET_CLIPBOARD, align 4
  %20 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %4, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.controller*, %struct.controller** %2, align 8
  %25 = call i32 @controller_push_msg(%struct.controller* %24, %struct.control_msg* %4)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @SDL_free(i8* %28)
  %30 = call i32 (i8*, ...) @LOGW(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %8, %15, %27, %18
  ret void
}

declare dso_local i8* @SDL_GetClipboardText(...) #1

declare dso_local i32 @LOGW(i8*, ...) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @SDL_free(i8*) #1

declare dso_local i32 @controller_push_msg(%struct.controller*, %struct.control_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
