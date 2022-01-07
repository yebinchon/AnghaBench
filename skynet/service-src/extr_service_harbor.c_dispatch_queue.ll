; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_dispatch_queue.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_dispatch_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.harbor = type { i32, %struct.slave* }
%struct.slave = type { i32, %struct.harbor_msg_queue* }
%struct.harbor_msg_queue = type { i32 }
%struct.harbor_msg = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.harbor*, i32)* @dispatch_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_queue(%struct.harbor* %0, i32 %1) #0 {
  %3 = alloca %struct.harbor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.slave*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.harbor_msg_queue*, align 8
  %8 = alloca %struct.harbor_msg*, align 8
  store %struct.harbor* %0, %struct.harbor** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.harbor*, %struct.harbor** %3, align 8
  %10 = getelementptr inbounds %struct.harbor, %struct.harbor* %9, i32 0, i32 1
  %11 = load %struct.slave*, %struct.slave** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.slave, %struct.slave* %11, i64 %13
  store %struct.slave* %14, %struct.slave** %5, align 8
  %15 = load %struct.slave*, %struct.slave** %5, align 8
  %16 = getelementptr inbounds %struct.slave, %struct.slave* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.slave*, %struct.slave** %5, align 8
  %23 = getelementptr inbounds %struct.slave, %struct.slave* %22, i32 0, i32 1
  %24 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %23, align 8
  store %struct.harbor_msg_queue* %24, %struct.harbor_msg_queue** %7, align 8
  %25 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %7, align 8
  %26 = icmp eq %struct.harbor_msg_queue* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %56

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %33, %28
  %30 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %7, align 8
  %31 = call %struct.harbor_msg* @pop_queue(%struct.harbor_msg_queue* %30)
  store %struct.harbor_msg* %31, %struct.harbor_msg** %8, align 8
  %32 = icmp ne %struct.harbor_msg* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.harbor*, %struct.harbor** %3, align 8
  %35 = getelementptr inbounds %struct.harbor, %struct.harbor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.harbor_msg*, %struct.harbor_msg** %8, align 8
  %39 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.harbor_msg*, %struct.harbor_msg** %8, align 8
  %42 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.harbor_msg*, %struct.harbor_msg** %8, align 8
  %45 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %44, i32 0, i32 1
  %46 = call i32 @send_remote(i32 %36, i32 %37, i32 %40, i32 %43, i32* %45)
  %47 = load %struct.harbor_msg*, %struct.harbor_msg** %8, align 8
  %48 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @skynet_free(i32 %49)
  br label %29

51:                                               ; preds = %29
  %52 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %7, align 8
  %53 = call i32 @release_queue(%struct.harbor_msg_queue* %52)
  %54 = load %struct.slave*, %struct.slave** %5, align 8
  %55 = getelementptr inbounds %struct.slave, %struct.slave* %54, i32 0, i32 1
  store %struct.harbor_msg_queue* null, %struct.harbor_msg_queue** %55, align 8
  br label %56

56:                                               ; preds = %51, %27
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.harbor_msg* @pop_queue(%struct.harbor_msg_queue*) #1

declare dso_local i32 @send_remote(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @skynet_free(i32) #1

declare dso_local i32 @release_queue(%struct.harbor_msg_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
