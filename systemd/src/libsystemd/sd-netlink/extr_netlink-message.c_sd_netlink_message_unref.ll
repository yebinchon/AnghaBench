; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_netlink-message.c_sd_netlink_message_unref.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_netlink-message.c_sd_netlink_message_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @sd_netlink_message_unref(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  br label %5

5:                                                ; preds = %40, %1
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp eq i64 %12, 0
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i1 [ false, %5 ], [ %13, %8 ]
  br i1 %15, label %16, label %47

16:                                               ; preds = %14
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = call i32 @free(%struct.TYPE_7__* %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %37, %16
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ule i32 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = call i32 @free(%struct.TYPE_7__* %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %4, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %2, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = call i32 @free(%struct.TYPE_7__* %45)
  br label %5

47:                                               ; preds = %14
  ret %struct.TYPE_7__* null
}

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
