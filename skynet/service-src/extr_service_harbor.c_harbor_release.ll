; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_harbor_release.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_harbor_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.harbor = type { i32, %struct.slave* }
%struct.slave = type { i64, i64 }

@REMOTE_MAX = common dso_local global i32 0, align 4
@STATUS_DOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @harbor_release(%struct.harbor* %0) #0 {
  %2 = alloca %struct.harbor*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.slave*, align 8
  store %struct.harbor* %0, %struct.harbor** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @REMOTE_MAX, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = load %struct.harbor*, %struct.harbor** %2, align 8
  %11 = getelementptr inbounds %struct.harbor, %struct.harbor* %10, i32 0, i32 1
  %12 = load %struct.slave*, %struct.slave** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.slave, %struct.slave* %12, i64 %14
  store %struct.slave* %15, %struct.slave** %4, align 8
  %16 = load %struct.slave*, %struct.slave** %4, align 8
  %17 = getelementptr inbounds %struct.slave, %struct.slave* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %9
  %21 = load %struct.slave*, %struct.slave** %4, align 8
  %22 = getelementptr inbounds %struct.slave, %struct.slave* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STATUS_DOWN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.harbor*, %struct.harbor** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @close_harbor(%struct.harbor* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %20, %9
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %5

34:                                               ; preds = %5
  %35 = load %struct.harbor*, %struct.harbor** %2, align 8
  %36 = getelementptr inbounds %struct.harbor, %struct.harbor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hash_delete(i32 %37)
  %39 = load %struct.harbor*, %struct.harbor** %2, align 8
  %40 = call i32 @skynet_free(%struct.harbor* %39)
  ret void
}

declare dso_local i32 @close_harbor(%struct.harbor*, i32) #1

declare dso_local i32 @hash_delete(i32) #1

declare dso_local i32 @skynet_free(%struct.harbor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
