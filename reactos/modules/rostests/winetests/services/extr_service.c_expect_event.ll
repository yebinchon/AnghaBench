; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/services/extr_service.c_expect_event.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/services/extr_service.c_expect_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"waiting for %s\0A\00", align 1
@event_handle = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"WaitForSingleObject failed: %u\0A\00", align 1
@event_cs = common dso_local global i32 0, align 4
@current_event = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Unexpected event: %s, expected %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @expect_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expect_event(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i32, i32* @event_handle, align 4
  %8 = call i64 @WaitForSingleObject(i32 %7, i32 30000)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @WAIT_OBJECT_0, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 (i32, i8*, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @WAIT_OBJECT_0, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %36

20:                                               ; preds = %1
  %21 = call i32 @EnterCriticalSection(i32* @event_cs)
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %23 = load i64*, i64** @current_event, align 8
  %24 = call i32 @strcpy(i8* %22, i64* %23)
  %25 = load i64*, i64** @current_event, align 8
  store i64 0, i64* %25, align 8
  %26 = call i32 @LeaveCriticalSection(i32* @event_cs)
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @strcmp(i8* %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 (i32, i8*, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @strcpy(i8*, i64*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
