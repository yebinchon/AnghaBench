; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion.c_ip_unpack.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion.c_ip_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@SIZE_IP6 = common dso_local global i32 0, align 4
@TOX_AF_INET = common dso_local global i64 0, align 8
@TOX_TCP_INET = common dso_local global i64 0, align 8
@SIZE_IP4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64*, i32, i1)* @ip_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_unpack(%struct.TYPE_8__* %0, i64* %1, i32 %2, i1 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  %10 = zext i1 %3 to i8
  store i8 %10, i8* %9, align 1
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @SIZE_IP6, align 4
  %13 = add nsw i32 1, %12
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %60

16:                                               ; preds = %4
  %17 = load i64*, i64** %7, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TOX_AF_INET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %16
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TOX_TCP_INET, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27, %16
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64*, i64** %7, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i32, i32* @SIZE_IP4, align 4
  %41 = call i32 @memcpy(i32 %37, i64* %39, i32 %40)
  br label %51

42:                                               ; preds = %27
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i32, i32* @SIZE_IP6, align 4
  %50 = call i32 @memcpy(i32 %46, i64* %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %33
  %52 = load i8, i8* %9, align 1
  %53 = trunc i8 %52 to i1
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = call i32 @to_host_family(%struct.TYPE_8__* %55)
  store i32 %56, i32* %5, align 4
  br label %60

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = call i32 @to_host_family(%struct.TYPE_8__* %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %54, %15
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @to_host_family(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
