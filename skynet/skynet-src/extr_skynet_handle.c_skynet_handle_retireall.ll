; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c_skynet_handle_retireall.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c_skynet_handle_retireall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_storage = type { i32, i32, %struct.skynet_context** }
%struct.skynet_context = type { i32 }

@H = common dso_local global %struct.handle_storage* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skynet_handle_retireall() #0 {
  %1 = alloca %struct.handle_storage*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i64, align 8
  %6 = load %struct.handle_storage*, %struct.handle_storage** @H, align 8
  store %struct.handle_storage* %6, %struct.handle_storage** %1, align 8
  br label %7

7:                                                ; preds = %52, %0
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %45, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.handle_storage*, %struct.handle_storage** %1, align 8
  %11 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load %struct.handle_storage*, %struct.handle_storage** %1, align 8
  %16 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %15, i32 0, i32 1
  %17 = call i32 @rwlock_rlock(i32* %16)
  %18 = load %struct.handle_storage*, %struct.handle_storage** %1, align 8
  %19 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %18, i32 0, i32 2
  %20 = load %struct.skynet_context**, %struct.skynet_context*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.skynet_context*, %struct.skynet_context** %20, i64 %22
  %24 = load %struct.skynet_context*, %struct.skynet_context** %23, align 8
  store %struct.skynet_context* %24, %struct.skynet_context** %4, align 8
  store i64 0, i64* %5, align 8
  %25 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %26 = icmp ne %struct.skynet_context* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %29 = call i64 @skynet_context_handle(%struct.skynet_context* %28)
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %27, %14
  %31 = load %struct.handle_storage*, %struct.handle_storage** %1, align 8
  %32 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %31, i32 0, i32 1
  %33 = call i32 @rwlock_runlock(i32* %32)
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @skynet_handle_retire(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %8

48:                                               ; preds = %8
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  ret void

52:                                               ; preds = %48
  br label %7
}

declare dso_local i32 @rwlock_rlock(i32*) #1

declare dso_local i64 @skynet_context_handle(%struct.skynet_context*) #1

declare dso_local i32 @rwlock_runlock(i32*) #1

declare dso_local i64 @skynet_handle_retire(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
