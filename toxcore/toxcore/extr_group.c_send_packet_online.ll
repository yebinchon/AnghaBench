; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_send_packet_online.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_send_packet_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ONLINE_PACKET_DATA_SIZE = common dso_local global i32 0, align 4
@PACKET_ID_ONLINE_PACKET = common dso_local global i32 0, align 4
@GROUP_IDENTIFIER_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32*)* @send_packet_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_packet_online(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @ONLINE_PACKET_DATA_SIZE, align 4
  %12 = add nsw i32 1, %11
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @htons(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @PACKET_ID_ONLINE_PACKET, align 4
  %19 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %18, i32* %19, align 16
  %20 = getelementptr inbounds i32, i32* %15, i64 1
  %21 = call i32 @memcpy(i32* %20, i32* %7, i32 4)
  %22 = getelementptr inbounds i32, i32* %15, i64 1
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @GROUP_IDENTIFIER_LENGTH, align 4
  %26 = call i32 @memcpy(i32* %23, i32* %24, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @friend_connection_crypt_connection_id(%struct.TYPE_4__* %30, i32 %31)
  %33 = mul nuw i64 4, %13
  %34 = trunc i64 %33 to i32
  %35 = call i32 @write_cryptpacket(i32 %29, i32 %32, i32* %15, i32 %34, i32 0)
  %36 = icmp ne i32 %35, -1
  %37 = zext i1 %36 to i32
  %38 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %38)
  ret i32 %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @write_cryptpacket(i32, i32, i32*, i32, i32) #2

declare dso_local i32 @friend_connection_crypt_connection_id(%struct.TYPE_4__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
