; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_hglobalstream.c_handle_read.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_hglobalstream.c_handle_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_wrapper = type { i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"read from invalid hglobal %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.handle_wrapper*, i64*, i8*, i64)* @handle_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @handle_read(%struct.handle_wrapper* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.handle_wrapper*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.handle_wrapper* %0, %struct.handle_wrapper** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.handle_wrapper*, %struct.handle_wrapper** %5, align 8
  %11 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %10, i32 0, i32 1
  %12 = call i32 @EnterCriticalSection(i32* %11)
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.handle_wrapper*, %struct.handle_wrapper** %5, align 8
  %16 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load %struct.handle_wrapper*, %struct.handle_wrapper** %5, align 8
  %21 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %22, %24
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @min(i64 %25, i64 %26)
  store i64 %27, i64* %8, align 8
  br label %29

28:                                               ; preds = %4
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %28, %19
  %30 = load %struct.handle_wrapper*, %struct.handle_wrapper** %5, align 8
  %31 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @GlobalLock(i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @memcpy(i8* %37, i8* %41, i64 %42)
  %44 = load i64, i64* %8, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %44
  store i64 %47, i64* %45, align 8
  %48 = load %struct.handle_wrapper*, %struct.handle_wrapper** %5, align 8
  %49 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @GlobalUnlock(i32 %50)
  br label %57

52:                                               ; preds = %29
  %53 = load %struct.handle_wrapper*, %struct.handle_wrapper** %5, align 8
  %54 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %52, %36
  %58 = load %struct.handle_wrapper*, %struct.handle_wrapper** %5, align 8
  %59 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %58, i32 0, i32 1
  %60 = call i32 @LeaveCriticalSection(i32* %59)
  %61 = load i64, i64* %8, align 8
  ret i64 %61
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
