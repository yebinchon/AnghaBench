; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion.c_ip_pack.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion.c_ip_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TOX_AF_INET = common dso_local global i64 0, align 8
@TOX_TCP_INET = common dso_local global i64 0, align 8
@SIZE_IP6 = common dso_local global i32 0, align 4
@SIZE_IP4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64)* @ip_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_pack(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i64*, align 8
  %6 = bitcast %struct.TYPE_8__* %4 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %2, i64* %8, align 8
  store i64* %0, i64** %5, align 8
  %9 = call i32 @to_net_family(%struct.TYPE_8__* %4)
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 %11, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TOX_AF_INET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TOX_TCP_INET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %18, %3
  %24 = load i64*, i64** %5, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i32, i32* @SIZE_IP6, align 4
  %27 = call i32 @memset(i64* %25, i32 0, i32 %26)
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SIZE_IP4, align 4
  %34 = call i32 @memcpy(i64* %29, i32 %32, i32 %33)
  br label %43

35:                                               ; preds = %18
  %36 = load i64*, i64** %5, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SIZE_IP6, align 4
  %42 = call i32 @memcpy(i64* %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %23
  ret void
}

declare dso_local i32 @to_net_family(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
