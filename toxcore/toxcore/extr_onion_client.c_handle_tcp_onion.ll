; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_handle_tcp_onion.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_handle_tcp_onion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@TCP_FAMILY = common dso_local global i32 0, align 4
@NET_PACKET_ANNOUNCE_RESPONSE = common dso_local global i64 0, align 8
@NET_PACKET_ONION_DATA_RESPONSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32)* @handle_tcp_onion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_tcp_onion(i8* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %44

12:                                               ; preds = %3
  %13 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i32, i32* @TCP_FAMILY, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i64*, i64** %6, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NET_PACKET_ANNOUNCE_RESPONSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load i8*, i8** %5, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = bitcast %struct.TYPE_6__* %8 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = call i32 @handle_announce_response(i8* %23, i64 %27, i64* %24, i32 %25)
  store i32 %28, i32* %4, align 4
  br label %44

29:                                               ; preds = %12
  %30 = load i64*, i64** %6, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NET_PACKET_ONION_DATA_RESPONSE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = bitcast %struct.TYPE_6__* %8 to i64*
  %40 = load i64, i64* %39, align 4
  %41 = call i32 @handle_data_response(i8* %36, i64 %40, i64* %37, i32 %38)
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %35, %22, %11
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @handle_announce_response(i8*, i64, i64*, i32) #2

declare dso_local i32 @handle_data_response(i8*, i64, i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
