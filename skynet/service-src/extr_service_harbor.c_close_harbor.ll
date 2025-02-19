; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_close_harbor.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_close_harbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.harbor = type { i32, %struct.slave* }
%struct.slave = type { i32*, i64, i32 }

@STATUS_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.harbor*, i32)* @close_harbor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_harbor(%struct.harbor* %0, i32 %1) #0 {
  %3 = alloca %struct.harbor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.slave*, align 8
  store %struct.harbor* %0, %struct.harbor** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.harbor*, %struct.harbor** %3, align 8
  %7 = getelementptr inbounds %struct.harbor, %struct.harbor* %6, i32 0, i32 1
  %8 = load %struct.slave*, %struct.slave** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.slave, %struct.slave* %8, i64 %10
  store %struct.slave* %11, %struct.slave** %5, align 8
  %12 = load i32, i32* @STATUS_DOWN, align 4
  %13 = load %struct.slave*, %struct.slave** %5, align 8
  %14 = getelementptr inbounds %struct.slave, %struct.slave* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.slave*, %struct.slave** %5, align 8
  %16 = getelementptr inbounds %struct.slave, %struct.slave* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.harbor*, %struct.harbor** %3, align 8
  %21 = getelementptr inbounds %struct.harbor, %struct.harbor* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.slave*, %struct.slave** %5, align 8
  %24 = getelementptr inbounds %struct.slave, %struct.slave* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @skynet_socket_close(i32 %22, i64 %25)
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.slave*, %struct.slave** %5, align 8
  %29 = getelementptr inbounds %struct.slave, %struct.slave* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.slave*, %struct.slave** %5, align 8
  %34 = getelementptr inbounds %struct.slave, %struct.slave* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @release_queue(i32* %35)
  %37 = load %struct.slave*, %struct.slave** %5, align 8
  %38 = getelementptr inbounds %struct.slave, %struct.slave* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @skynet_socket_close(i32, i64) #1

declare dso_local i32 @release_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
