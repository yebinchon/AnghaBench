; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_receiver.c_run_receiver.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_receiver.c_run_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receiver = type { i32 }

@DEVICE_MSG_SERIALIZED_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Receiver stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @run_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_receiver(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.receiver*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.receiver*
  store %struct.receiver* %10, %struct.receiver** %3, align 8
  %11 = load i32, i32* @DEVICE_MSG_SERIALIZED_MAX_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %57, %1
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @DEVICE_MSG_SERIALIZED_MAX_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @SDL_assert(i32 %20)
  %22 = load %struct.receiver*, %struct.receiver** %3, align 8
  %23 = getelementptr inbounds %struct.receiver, %struct.receiver* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DEVICE_MSG_SERIALIZED_MAX_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @net_recv(i32 %24, i8* %14, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %15
  %34 = call i32 @LOGD(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %58

35:                                               ; preds = %15
  %36 = load %struct.receiver*, %struct.receiver** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @process_msgs(%struct.receiver* %36, i8* %14, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %58

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %14, i64 %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i32 @memmove(i8* %14, i8* %48, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %45, %42
  br label %15

58:                                               ; preds = %41, %33
  %59 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %59)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SDL_assert(i32) #2

declare dso_local i32 @net_recv(i32, i8*, i32) #2

declare dso_local i32 @LOGD(i8*) #2

declare dso_local i32 @process_msgs(%struct.receiver*, i8*, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
