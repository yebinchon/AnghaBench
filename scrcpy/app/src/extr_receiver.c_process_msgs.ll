; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_receiver.c_process_msgs.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_receiver.c_process_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receiver = type { i32 }
%struct.device_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.receiver*, i8*, i64)* @process_msgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_msgs(%struct.receiver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.receiver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.device_msg, align 4
  %10 = alloca i32, align 4
  store %struct.receiver* %0, %struct.receiver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %47, %3
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %8, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = sub i64 %15, %16
  %18 = call i32 @device_msg_deserialize(i8* %14, i64 %17, %struct.device_msg* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %48

22:                                               ; preds = %11
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %48

28:                                               ; preds = %22
  %29 = load %struct.receiver*, %struct.receiver** %5, align 8
  %30 = call i32 @process_msg(%struct.receiver* %29, %struct.device_msg* %9)
  %31 = call i32 @device_msg_destroy(%struct.device_msg* %9)
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ule i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @SDL_assert(i32 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %28
  %45 = load i64, i64* %8, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %28
  br label %11

48:                                               ; preds = %44, %25, %21
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @device_msg_deserialize(i8*, i64, %struct.device_msg*) #1

declare dso_local i32 @process_msg(%struct.receiver*, %struct.device_msg*) #1

declare dso_local i32 @device_msg_destroy(%struct.device_msg*) #1

declare dso_local i32 @SDL_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
