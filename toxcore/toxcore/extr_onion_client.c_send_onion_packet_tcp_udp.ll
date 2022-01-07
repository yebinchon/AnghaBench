; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_send_onion_packet_tcp_udp.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_send_onion_packet_tcp_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@ONION_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@TCP_FAMILY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32*, i32)* @send_onion_packet_tcp_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_onion_packet_tcp_udp(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %26, %5
  %35 = load i32, i32* @ONION_MAX_PACKET_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %12, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %13, align 8
  %39 = mul nuw i64 4, %36
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @create_onion_packet(i32* %38, i32 %40, %struct.TYPE_12__* %41, i32 %42, i32* %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %66

49:                                               ; preds = %34
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %14, align 4
  %56 = bitcast %struct.TYPE_14__* %54 to { i64, i32 }*
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %56, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sendpacket(i32 %52, i64 %58, i32 %60, i32* %38, i32 %55)
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %66

65:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %66

66:                                               ; preds = %65, %64, %48
  %67 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %67)
  br label %106

68:                                               ; preds = %26
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TCP_FAMILY, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %68
  %77 = load i32, i32* @ONION_MAX_PACKET_SIZE, align 4
  %78 = zext i32 %77 to i64
  %79 = call i8* @llvm.stacksave()
  store i8* %79, i8** %16, align 8
  %80 = alloca i32, i64 %78, align 16
  store i64 %78, i64* %17, align 8
  %81 = mul nuw i64 4, %78
  %82 = trunc i64 %81 to i32
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @create_onion_packet_tcp(i32* %80, i32 %82, %struct.TYPE_12__* %83, i32 %84, i32* %85, i32 %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %103

91:                                               ; preds = %76
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @send_tcp_onion_request(i32 %94, i32 %100, i32* %80, i32 %101)
  store i32 %102, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %103

103:                                              ; preds = %91, %90
  %104 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %104)
  br label %106

105:                                              ; preds = %68
  store i32 -1, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %103, %66
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_onion_packet(i32*, i32, %struct.TYPE_12__*, i32, i32*, i32) #2

declare dso_local i32 @sendpacket(i32, i64, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @create_onion_packet_tcp(i32*, i32, %struct.TYPE_12__*, i32, i32*, i32) #2

declare dso_local i32 @send_tcp_onion_request(i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
