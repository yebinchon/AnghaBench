; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_handle_friend_invite_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_handle_friend_invite_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 (%struct.TYPE_16__*, i32, i32, i32*, i32, i32)* }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@INVITE_PACKET_SIZE = common dso_local global i32 0, align 4
@INVITE_RESPONSE_PACKET_SIZE = common dso_local global i32 0, align 4
@GROUP_IDENTIFIER_LENGTH = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@GROUPCHAT_CLOSE_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32, i32*, i32)* @handle_friend_invite_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_friend_invite_packet(%struct.TYPE_16__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %171

29:                                               ; preds = %4
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32* %31, i32** %10, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %170 [
    i32 129, label %37
    i32 128, label %72
  ]

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @INVITE_PACKET_SIZE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %171

42:                                               ; preds = %37
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = call i32 @get_group_num(%struct.TYPE_18__* %43, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %71

50:                                               ; preds = %42
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = load i32 (%struct.TYPE_16__*, i32, i32, i32*, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32*, i32, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.TYPE_16__*, i32, i32, i32*, i32, i32)* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i32 (%struct.TYPE_16__*, i32, i32, i32*, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32*, i32, i32)** %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 %58(%struct.TYPE_16__* %59, i32 %60, i32 %63, i32* %64, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %55, %50
  br label %171

71:                                               ; preds = %42
  br label %171

72:                                               ; preds = %29
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @INVITE_RESPONSE_PACKET_SIZE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %171

77:                                               ; preds = %72
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = call i32 @memcpy(i32* %14, i32* %80, i32 4)
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @ntohs(i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call %struct.TYPE_17__* @get_group_c(%struct.TYPE_18__* %84, i32 %85)
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %15, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %88 = icmp ne %struct.TYPE_17__* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %77
  br label %171

90:                                               ; preds = %77
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = getelementptr inbounds i32, i32* %92, i64 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @GROUP_IDENTIFIER_LENGTH, align 4
  %98 = call i32 @sodium_memcmp(i32* %93, i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %171

101:                                              ; preds = %90
  %102 = call i32 (...) @rand()
  store i32 %102, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %103

103:                                              ; preds = %115, %101
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @get_peer_index(%struct.TYPE_17__* %104, i32 %105)
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = call i32 (...) @rand()
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %17, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp ugt i32 %112, 32
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %171

115:                                              ; preds = %108
  br label %103

116:                                              ; preds = %103
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = call i32 @memcpy(i32* %13, i32* %118, i32 4)
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @ntohs(i32 %120)
  store i32 %121, i32* %13, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @getfriendcon_id(%struct.TYPE_16__* %122, i32 %123)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %126 = zext i32 %125 to i64
  %127 = call i8* @llvm.stacksave()
  store i8* %127, i8** %19, align 8
  %128 = alloca i32, i64 %126, align 16
  store i64 %126, i64* %20, align 8
  %129 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %130 = zext i32 %129 to i64
  %131 = alloca i32, i64 %130, align 16
  store i64 %130, i64* %21, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @get_friendcon_public_keys(i32* %128, i32* %131, i32 %134, i32 %135)
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @addpeer(%struct.TYPE_18__* %137, i32 %138, i32* %128, i32* %131, i32 %139)
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @add_conn_to_groupchat(%struct.TYPE_18__* %141, i32 %142, i32 %143, i32 0, i32 1)
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %22, align 4
  %146 = icmp ne i32 %145, -1
  br i1 %146, label %147, label %164

147:                                              ; preds = %116
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = load i32, i32* %22, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  store i32 %148, i32* %155, align 4
  %156 = load i32, i32* @GROUPCHAT_CLOSE_ONLINE, align 4
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = load i32, i32* %22, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  store i32 %156, i32* %163, align 4
  br label %164

164:                                              ; preds = %147, %116
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @group_new_peer_send(%struct.TYPE_18__* %165, i32 %166, i32 %167, i32* %128, i32* %131)
  %169 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %169)
  br label %171

170:                                              ; preds = %29
  br label %171

171:                                              ; preds = %28, %41, %70, %76, %89, %100, %114, %170, %164, %71
  ret void
}

declare dso_local i32 @get_group_num(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_17__* @get_group_c(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sodium_memcmp(i32*, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @get_peer_index(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @getfriendcon_id(%struct.TYPE_16__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_friendcon_public_keys(i32*, i32*, i32, i32) #1

declare dso_local i32 @addpeer(%struct.TYPE_18__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @add_conn_to_groupchat(%struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local i32 @group_new_peer_send(%struct.TYPE_18__*, i32, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
