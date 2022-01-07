; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_notify_message.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_notify_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"TestWindowClass\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to create window\0A\00", align 1
@WM_NOTIFY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"SendNotifyMessageA failed with error %u\0A\00", align 1
@WmNotifySeq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"WmNotifySeq\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"SendNotifyMessageW failed with error %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"SendMessageCallbackA failed with error %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"SendMessageCallbackW failed with error %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"PostMessageA failed with error %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"PostMessageW failed with error %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"PostThreadMessageA failed with error %u\0A\00", align 1
@PM_REMOVE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"PostThreadMessageW failed with error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_notify_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_notify_message() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %5 = load i32, i32* @CW_USEDEFAULT, align 4
  %6 = load i32, i32* @CW_USEDEFAULT, align 4
  %7 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %4, i32 %5, i32 %6, i32 300, i32 300, i32 0, i32* null, i32* null, i32 0)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 (...) @flush_events()
  %13 = call i32 (...) @flush_sequence()
  %14 = load i64, i64* %1, align 8
  %15 = load i32, i32* @WM_NOTIFY, align 4
  %16 = call i64 @SendNotifyMessageA(i64 %14, i32 %15, i32 4660, i32 -559038737)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @TRUE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @WmNotifySeq, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @ok_sequence(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* %1, align 8
  %27 = load i32, i32* @WM_NOTIFY, align 4
  %28 = call i64 @SendNotifyMessageW(i64 %26, i32 %27, i32 4660, i32 -559038737)
  store i64 %28, i64* %2, align 8
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* @TRUE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @WmNotifySeq, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @ok_sequence(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i64, i64* %1, align 8
  %39 = load i32, i32* @WM_NOTIFY, align 4
  %40 = call i64 @SendMessageCallbackA(i64 %38, i32 %39, i32 4660, i32 -559038737, i32* null, i32 0)
  store i64 %40, i64* %2, align 8
  %41 = load i64, i64* %2, align 8
  %42 = load i64, i64* @TRUE, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 (...) @GetLastError()
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @WmNotifySeq, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @ok_sequence(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load i64, i64* %1, align 8
  %51 = load i32, i32* @WM_NOTIFY, align 4
  %52 = call i64 @SendMessageCallbackW(i64 %50, i32 %51, i32 4660, i32 -559038737, i32* null, i32 0)
  store i64 %52, i64* %2, align 8
  %53 = load i64, i64* %2, align 8
  %54 = load i64, i64* @TRUE, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 (...) @GetLastError()
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @WmNotifySeq, align 4
  %60 = load i32, i32* @FALSE, align 4
  %61 = call i32 @ok_sequence(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i64, i64* %1, align 8
  %63 = load i32, i32* @WM_NOTIFY, align 4
  %64 = call i64 @PostMessageA(i64 %62, i32 %63, i32 4660, i32 -559038737)
  store i64 %64, i64* %2, align 8
  %65 = load i64, i64* %2, align 8
  %66 = load i64, i64* @TRUE, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 (...) @GetLastError()
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  %71 = call i32 (...) @flush_events()
  %72 = load i32, i32* @WmNotifySeq, align 4
  %73 = load i32, i32* @FALSE, align 4
  %74 = call i32 @ok_sequence(i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i64, i64* %1, align 8
  %76 = load i32, i32* @WM_NOTIFY, align 4
  %77 = call i64 @PostMessageW(i64 %75, i32 %76, i32 4660, i32 -559038737)
  store i64 %77, i64* %2, align 8
  %78 = load i64, i64* %2, align 8
  %79 = load i64, i64* @TRUE, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 (...) @GetLastError()
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  %84 = call i32 (...) @flush_events()
  %85 = load i32, i32* @WmNotifySeq, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i32 @ok_sequence(i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = call i32 (...) @GetCurrentThreadId()
  %89 = load i32, i32* @WM_NOTIFY, align 4
  %90 = call i64 @PostThreadMessageA(i32 %88, i32 %89, i32 4660, i32 -559038737)
  store i64 %90, i64* %2, align 8
  %91 = load i64, i64* %2, align 8
  %92 = load i64, i64* @TRUE, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 (...) @GetLastError()
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %101, %0
  %98 = load i32, i32* @PM_REMOVE, align 4
  %99 = call i64 @PeekMessageA(%struct.TYPE_4__* %3, i32 0, i32 0, i32 0, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i64, i64* %1, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = call i32 @DispatchMessageA(%struct.TYPE_4__* %3)
  br label %97

105:                                              ; preds = %97
  %106 = load i32, i32* @WmNotifySeq, align 4
  %107 = load i32, i32* @FALSE, align 4
  %108 = call i32 @ok_sequence(i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = call i32 (...) @GetCurrentThreadId()
  %110 = load i32, i32* @WM_NOTIFY, align 4
  %111 = call i64 @PostThreadMessageW(i32 %109, i32 %110, i32 4660, i32 -559038737)
  store i64 %111, i64* %2, align 8
  %112 = load i64, i64* %2, align 8
  %113 = load i64, i64* @TRUE, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 (...) @GetLastError()
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %122, %105
  %119 = load i32, i32* @PM_REMOVE, align 4
  %120 = call i64 @PeekMessageA(%struct.TYPE_4__* %3, i32 0, i32 0, i32 0, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i64, i64* %1, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %123, i64* %124, align 8
  %125 = call i32 @DispatchMessageA(%struct.TYPE_4__* %3)
  br label %118

126:                                              ; preds = %118
  %127 = load i32, i32* @WmNotifySeq, align 4
  %128 = load i32, i32* @FALSE, align 4
  %129 = call i32 @ok_sequence(i32 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i64, i64* %1, align 8
  %131 = call i32 @DestroyWindow(i64 %130)
  ret void
}

declare dso_local i64 @CreateWindowExA(i32, i8*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @flush_events(...) #1

declare dso_local i32 @flush_sequence(...) #1

declare dso_local i64 @SendNotifyMessageA(i64, i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok_sequence(i32, i8*, i32) #1

declare dso_local i64 @SendNotifyMessageW(i64, i32, i32, i32) #1

declare dso_local i64 @SendMessageCallbackA(i64, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @SendMessageCallbackW(i64, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @PostMessageA(i64, i32, i32, i32) #1

declare dso_local i64 @PostMessageW(i64, i32, i32, i32) #1

declare dso_local i64 @PostThreadMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i64 @PeekMessageA(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @DispatchMessageA(%struct.TYPE_4__*) #1

declare dso_local i64 @PostThreadMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @DestroyWindow(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
