; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_send_data.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@NUM_CLIENT_CONNECTIONS = common dso_local global i64 0, align 8
@NUM_RESERVED_PORTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_data(%struct.TYPE_8__* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @NUM_CLIENT_CONNECTIONS, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %54

16:                                               ; preds = %4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %54

26:                                               ; preds = %16
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = call i64 @send_ping_response(%struct.TYPE_8__* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = call i64 @send_ping_request(%struct.TYPE_8__* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26
  store i32 0, i32* %5, align 4
  br label %54

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 1, %36
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %10, align 8
  %40 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %11, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @NUM_RESERVED_PORTS, align 8
  %43 = add i64 %41, %42
  %44 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 %43, i64* %44, align 16
  %45 = getelementptr inbounds i64, i64* %40, i64 1
  %46 = load i64*, i64** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @memcpy(i64* %45, i64* %46, i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = mul nuw i64 8, %38
  %51 = trunc i64 %50 to i32
  %52 = call i32 @write_packet_TCP_secure_connection(%struct.TYPE_8__* %49, i64* %40, i32 %51, i32 0)
  store i32 %52, i32* %5, align 4
  %53 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %53)
  br label %54

54:                                               ; preds = %35, %34, %25, %15
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @send_ping_response(%struct.TYPE_8__*) #1

declare dso_local i64 @send_ping_request(%struct.TYPE_8__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @write_packet_TCP_secure_connection(%struct.TYPE_8__*, i64*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
