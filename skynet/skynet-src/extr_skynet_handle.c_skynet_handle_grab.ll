; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c_skynet_handle_grab.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c_skynet_handle_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_storage = type { i32, i32, %struct.skynet_context** }
%struct.skynet_context = type { i32 }

@H = common dso_local global %struct.handle_storage* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.skynet_context* @skynet_handle_grab(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.handle_storage*, align 8
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skynet_context*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load %struct.handle_storage*, %struct.handle_storage** @H, align 8
  store %struct.handle_storage* %7, %struct.handle_storage** %3, align 8
  store %struct.skynet_context* null, %struct.skynet_context** %4, align 8
  %8 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %9 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %8, i32 0, i32 1
  %10 = call i32 @rwlock_rlock(i32* %9)
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %13 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %11, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %18 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %17, i32 0, i32 2
  %19 = load %struct.skynet_context**, %struct.skynet_context*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.skynet_context*, %struct.skynet_context** %19, i64 %21
  %23 = load %struct.skynet_context*, %struct.skynet_context** %22, align 8
  store %struct.skynet_context* %23, %struct.skynet_context** %6, align 8
  %24 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %25 = icmp ne %struct.skynet_context* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %28 = call i32 @skynet_context_handle(%struct.skynet_context* %27)
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  store %struct.skynet_context* %32, %struct.skynet_context** %4, align 8
  %33 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %34 = call i32 @skynet_context_grab(%struct.skynet_context* %33)
  br label %35

35:                                               ; preds = %31, %26, %1
  %36 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %37 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %36, i32 0, i32 1
  %38 = call i32 @rwlock_runlock(i32* %37)
  %39 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  ret %struct.skynet_context* %39
}

declare dso_local i32 @rwlock_rlock(i32*) #1

declare dso_local i32 @skynet_context_handle(%struct.skynet_context*) #1

declare dso_local i32 @skynet_context_grab(%struct.skynet_context*) #1

declare dso_local i32 @rwlock_runlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
