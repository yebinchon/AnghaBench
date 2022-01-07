; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_LAN_discovery.c_send_LANdiscovery.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_LAN_discovery.c_send_LANdiscovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i8*, i32 }

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@NET_PACKET_LAN_DISCOVERY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_LANdiscovery(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @NET_PACKET_LAN_DISCOVERY, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %14, i32* %15, align 16
  %16 = getelementptr inbounds i32, i32* %13, i64 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @id_copy(i32* %16, i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %26 = add nsw i32 1, %25
  %27 = call i32 @send_broadcasts(%struct.TYPE_9__* %23, i32 %24, i32* %13, i32 %26)
  store i32 -1, i32* %7, align 4
  %28 = load i32, i32* %3, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AF_INET6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %2
  %38 = load i64, i64* @AF_INET6, align 8
  %39 = load i64, i64* @AF_INET6, align 8
  %40 = call i8* @broadcast_ip(i64 %38, i64 %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %43 = call i64 @ip_isset(i8** %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %50 = add nsw i32 1, %49
  %51 = bitcast %struct.TYPE_7__* %8 to { i8*, i32 }*
  %52 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %51, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @sendpacket(%struct.TYPE_9__* %48, i8* %53, i32 %55, i32* %13, i32 %50)
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %45
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AF_INET, align 8
  %68 = call i8* @broadcast_ip(i64 %66, i64 %67)
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %71 = call i64 @ip_isset(i8** %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %61
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %78 = add nsw i32 1, %77
  %79 = bitcast %struct.TYPE_7__* %8 to { i8*, i32 }*
  %80 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %79, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @sendpacket(%struct.TYPE_9__* %76, i8* %81, i32 %83, i32* %13, i32 %78)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  store i32 1, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %73
  br label %88

88:                                               ; preds = %87, %61
  %89 = load i32, i32* %7, align 4
  %90 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %90)
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @id_copy(i32*, i32) #2

declare dso_local i32 @send_broadcasts(%struct.TYPE_9__*, i32, i32*, i32) #2

declare dso_local i8* @broadcast_ip(i64, i64) #2

declare dso_local i64 @ip_isset(i8**) #2

declare dso_local i64 @sendpacket(%struct.TYPE_9__*, i8*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
