; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_send_dhtpk_announce.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_send_dhtpk_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32* }

@DHTPK_DATA_MAX_LENGTH = common dso_local global i32 0, align 4
@ONION_DATA_DHTPK = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@MAX_SENT_NODES = common dso_local global i32 0, align 4
@DHTPK_DATA_MIN_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i32)* @send_dhtpk_announce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_dhtpk_announce(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %118

24:                                               ; preds = %3
  %25 = load i32, i32* @DHTPK_DATA_MAX_LENGTH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = load i32, i32* @ONION_DATA_DHTPK, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %29, i32* %30, align 16
  %31 = call i32 (...) @unix_time()
  store i32 %31, i32* %10, align 4
  %32 = call i32 @host_to_net(i32* %10, i32 4)
  %33 = getelementptr inbounds i32, i32* %28, i64 1
  %34 = call i32 @memcpy(i32* %33, i32* %10, i32 4)
  %35 = getelementptr inbounds i32, i32* %28, i64 1
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %43 = call i32 @memcpy(i32* %36, i32* %41, i32 %42)
  %44 = load i32, i32* @MAX_SENT_NODES, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %11, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MAX_SENT_NODES, align 4
  %51 = sdiv i32 %50, 2
  %52 = call i64 @copy_connected_tcp_relays(i32 %49, i32* %46, i32 %51)
  store i64 %52, i64* %12, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds i32, i32* %46, i64 %56
  %58 = load i32, i32* @MAX_SENT_NODES, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %12, align 8
  %61 = sub nsw i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = call i64 @closelist_nodes(%struct.TYPE_7__* %55, i32* %57, i32 %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %67 = load i64, i64* %13, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %24
  %70 = load i32, i32* @DHTPK_DATA_MIN_LENGTH, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %28, i64 %71
  %73 = load i32, i32* @DHTPK_DATA_MAX_LENGTH, align 4
  %74 = load i32, i32* @DHTPK_DATA_MIN_LENGTH, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @pack_nodes(i32* %72, i32 %75, i32* %46, i64 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %116

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %24
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* @DHTPK_DATA_MIN_LENGTH, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 @send_onion_data(%struct.TYPE_6__* %86, i64 %87, i32* %28, i32 %90)
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %85, %82
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i32, i32* @DHTPK_DATA_MIN_LENGTH, align 4
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %98, %99
  %101 = call i32 @send_dht_dhtpk(%struct.TYPE_6__* %96, i64 %97, i32* %28, i32 %100)
  store i32 %101, i32* %17, align 4
  br label %102

102:                                              ; preds = %95, %92
  %103 = load i32, i32* %16, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %17, align 4
  store i32 %106, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %116

107:                                              ; preds = %102
  %108 = load i32, i32* %17, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %116

112:                                              ; preds = %107
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %113, %114
  store i32 %115, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %116

116:                                              ; preds = %112, %110, %105, %80
  %117 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %117)
  br label %118

118:                                              ; preds = %116, %23
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @unix_time(...) #2

declare dso_local i32 @host_to_net(i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @copy_connected_tcp_relays(i32, i32*, i32) #2

declare dso_local i64 @closelist_nodes(%struct.TYPE_7__*, i32*, i32) #2

declare dso_local i32 @pack_nodes(i32*, i32, i32*, i64) #2

declare dso_local i32 @send_onion_data(%struct.TYPE_6__*, i64, i32*, i32) #2

declare dso_local i32 @send_dht_dhtpk(%struct.TYPE_6__*, i64, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
