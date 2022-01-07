; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp-packet.c_dhcp_message_init.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp-packet.c_dhcp_message_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, i64, i64 }

@BOOTREQUEST = common dso_local global i64 0, align 8
@BOOTREPLY = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ARPHRD_INFINIBAND = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@DHCP_MAGIC_COOKIE = common dso_local global i32 0, align 4
@SD_DHCP_OPTION_MESSAGE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp_message_init(%struct.TYPE_4__* %0, i64 %1, i32 %2, i64 %3, i64 %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  store i64 0, i64* %16, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @BOOTREQUEST, align 8
  %20 = load i32, i32* @BOOTREPLY, align 4
  %21 = call i32 @IN_SET(i64 %18, i64 %19, i32 %20)
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @ARPHRD_ETHER, align 8
  %25 = load i32, i32* @ARPHRD_INFINIBAND, align 4
  %26 = call i32 @IN_SET(i64 %23, i64 %24, i32 %25)
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @ARPHRD_ETHER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %7
  %38 = load i32, i32* @ETHER_ADDR_LEN, align 4
  br label %40

39:                                               ; preds = %7
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i8* @htobe32(i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @DHCP_MAGIC_COOKIE, align 4
  %49 = call i8* @htobe32(i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* @SD_DHCP_OPTION_MESSAGE_TYPE, align 4
  %55 = call i32 @dhcp_option_append(%struct.TYPE_4__* %52, i64 %53, i64* %16, i32 0, i32 %54, i32 1, i64* %12)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %40
  %59 = load i32, i32* %17, align 4
  store i32 %59, i32* %8, align 4
  br label %63

60:                                               ; preds = %40
  %61 = load i64, i64* %16, align 8
  %62 = load i64*, i64** %15, align 8
  store i64 %61, i64* %62, align 8
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %58
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IN_SET(i64, i64, i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @dhcp_option_append(%struct.TYPE_4__*, i64, i64*, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
