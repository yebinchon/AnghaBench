; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_handle_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 (i32, i32, i64*, i32)* }
%struct.TYPE_12__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 (i32, i32, i64*, i32)* }
%struct.TYPE_10__ = type { i32, i32 }

@PACKET_ID_FRIEND_REQUESTS = common dso_local global i64 0, align 8
@PACKET_ID_ALIVE = common dso_local global i64 0, align 8
@PACKET_ID_SHARE_RELAYS = common dso_local global i64 0, align 8
@MAX_SHARED_RELAYS = common dso_local global i32 0, align 4
@MAX_FRIEND_CONNECTION_CALLBACKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i32)* @handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_packet(i8* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %166

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %10, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.TYPE_12__* @get_conn(%struct.TYPE_11__* %24, i32 %25)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %11, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %166

30:                                               ; preds = %21
  %31 = load i64*, i64** %8, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PACKET_ID_FRIEND_REQUESTS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32 (i32, i32, i64*, i32)*, i32 (i32, i32, i64*, i32)** %38, align 8
  %40 = icmp ne i32 (i32, i32, i64*, i32)* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32 (i32, i32, i64*, i32)*, i32 (i32, i32, i64*, i32)** %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i64*, i64** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 %44(i32 %47, i32 %50, i64* %51, i32 %52)
  br label %54

54:                                               ; preds = %41, %36
  store i32 0, i32* %5, align 4
  br label %166

55:                                               ; preds = %30
  %56 = load i64*, i64** %8, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PACKET_ID_ALIVE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = call i32 (...) @unix_time()
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %5, align 4
  br label %166

65:                                               ; preds = %55
  %66 = load i64*, i64** %8, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PACKET_ID_SHARE_RELAYS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %109

71:                                               ; preds = %65
  %72 = load i32, i32* @MAX_SHARED_RELAYS, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %12, align 8
  %75 = alloca %struct.TYPE_10__, i64 %73, align 16
  store i64 %73, i64* %13, align 8
  %76 = load i32, i32* @MAX_SHARED_RELAYS, align 4
  %77 = load i64*, i64** %8, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @unpack_nodes(%struct.TYPE_10__* %75, i32 %76, i32* null, i64* %78, i32 %80, i32 1)
  store i32 %81, i32* %14, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %107

84:                                               ; preds = %71
  store i32 0, i32* %16, align 4
  br label %85

85:                                               ; preds = %103, %84
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @friend_add_tcp_relay(%struct.TYPE_11__* %90, i32 %91, i32 %96, i32 %101)
  br label %103

103:                                              ; preds = %89
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %85

106:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %107

107:                                              ; preds = %106, %83
  %108 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %108)
  br label %166

109:                                              ; preds = %65
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  store i32 0, i32* %17, align 4
  br label %112

112:                                              ; preds = %162, %111
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* @MAX_FRIEND_CONNECTION_CALLBACKS, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %165

116:                                              ; preds = %112
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32 (i32, i32, i64*, i32)*, i32 (i32, i32, i64*, i32)** %123, align 8
  %125 = icmp ne i32 (i32, i32, i64*, i32)* %124, null
  br i1 %125, label %126, label %154

126:                                              ; preds = %116
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load i32 (i32, i32, i64*, i32)*, i32 (i32, i32, i64*, i32)** %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i32, i32* %17, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = load i32, i32* %17, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i64*, i64** %8, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 %134(i32 %142, i32 %150, i64* %151, i32 %152)
  br label %154

154:                                              ; preds = %126, %116
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call %struct.TYPE_12__* @get_conn(%struct.TYPE_11__* %155, i32 %156)
  store %struct.TYPE_12__* %157, %struct.TYPE_12__** %11, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %159 = icmp ne %struct.TYPE_12__* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  store i32 -1, i32* %5, align 4
  br label %166

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %17, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %17, align 4
  br label %112

165:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %165, %160, %107, %61, %54, %29, %20
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.TYPE_12__* @get_conn(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @unix_time(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @unpack_nodes(%struct.TYPE_10__*, i32, i32*, i64*, i32, i32) #1

declare dso_local i32 @friend_add_tcp_relay(%struct.TYPE_11__*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
