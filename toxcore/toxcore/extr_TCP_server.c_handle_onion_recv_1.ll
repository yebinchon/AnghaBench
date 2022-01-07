; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_handle_onion_recv_1.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_handle_onion_recv_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64*, i64* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@TCP_PACKET_ONION_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*, i32*, i32)* @handle_onion_recv_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_onion_recv_1(i8* %0, i64* %1, i64* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = bitcast %struct.TYPE_12__* %7 to { i64*, i64* }*
  %18 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %17, i32 0, i32 0
  store i64* %1, i64** %18, align 8
  %19 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %17, i32 0, i32 1
  store i64* %2, i64** %19, align 8
  store i8* %0, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %72

34:                                               ; preds = %5
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 %38
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %13, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %72

51:                                               ; preds = %34
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 1, %52
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %14, align 8
  %56 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %15, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @memcpy(i32* %57, i32* %58, i32 %59)
  %61 = load i32, i32* @TCP_PACKET_ONION_RESPONSE, align 4
  %62 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %61, i32* %62, align 16
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %64 = mul nuw i64 4, %54
  %65 = trunc i64 %64 to i32
  %66 = call i32 @write_packet_TCP_secure_connection(%struct.TYPE_11__* %63, i32* %56, i32 %65, i32 0)
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %70

69:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %71)
  br label %72

72:                                               ; preds = %70, %50, %33
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @write_packet_TCP_secure_connection(%struct.TYPE_11__*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
