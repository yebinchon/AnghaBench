; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_get_duid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_get_duid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }

@_DUID_TYPE_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @link_get_duid(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @_DUID_TYPE_INVALID, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %2, align 8
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %2, align 8
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
