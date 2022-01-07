; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_device_msg.c_device_msg_deserialize.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_device_msg.c_device_msg_deserialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_msg = type { i8, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [38 x i8] c"Could not allocate text for clipboard\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown device message type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_msg_deserialize(i8* %0, i64 %1, %struct.device_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device_msg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.device_msg* %2, %struct.device_msg** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = load %struct.device_msg*, %struct.device_msg** %7, align 8
  %18 = getelementptr inbounds %struct.device_msg, %struct.device_msg* %17, i32 0, i32 0
  store i8 %16, i8* %18, align 8
  %19 = load %struct.device_msg*, %struct.device_msg** %7, align 8
  %20 = getelementptr inbounds %struct.device_msg, %struct.device_msg* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = zext i8 %21 to i32
  switch i32 %22, label %61 [
    i32 128, label %23
  ]

23:                                               ; preds = %13
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = call i64 @buffer_read16be(i8* %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %28, 3
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %67

32:                                               ; preds = %23
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call i8* @SDL_malloc(i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = call i32 (i8*, ...) @LOGW(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %67

41:                                               ; preds = %32
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @memcpy(i8* %45, i8* %47, i64 %48)
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.device_msg*, %struct.device_msg** %7, align 8
  %56 = getelementptr inbounds %struct.device_msg, %struct.device_msg* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 3, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %13
  %62 = load %struct.device_msg*, %struct.device_msg** %7, align 8
  %63 = getelementptr inbounds %struct.device_msg, %struct.device_msg* %62, i32 0, i32 0
  %64 = load i8, i8* %63, align 8
  %65 = zext i8 %64 to i32
  %66 = call i32 (i8*, ...) @LOGW(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  store i32 -1, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %50, %39, %31, %12
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @buffer_read16be(i8*) #1

declare dso_local i8* @SDL_malloc(i32) #1

declare dso_local i32 @LOGW(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
