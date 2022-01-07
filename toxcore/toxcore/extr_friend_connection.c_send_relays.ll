; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_send_relays.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_send_relays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@MAX_SHARED_RELAYS = common dso_local global i32 0, align 4
@PACKET_ID_SHARE_RELAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @send_relays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_relays(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1024 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_12__* @get_conn(%struct.TYPE_11__* %14, i32 %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

20:                                               ; preds = %2
  %21 = load i32, i32* @MAX_SHARED_RELAYS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca %struct.TYPE_10__, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAX_SHARED_RELAYS, align 4
  %29 = call i32 @copy_connected_tcp_relays(i32 %27, %struct.TYPE_10__* %24, i32 %28)
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %48, %20
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @friend_add_tcp_relay(%struct.TYPE_11__* %35, i32 %36, i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %30

51:                                               ; preds = %30
  %52 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @pack_nodes(i32* %53, i32 4095, %struct.TYPE_10__* %24, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %79

59:                                               ; preds = %51
  %60 = load i32, i32* @PACKET_ID_SHARE_RELAYS, align 4
  %61 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  store i32 %60, i32* %61, align 16
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @write_cryptpacket(i32 %66, i32 %69, i32* %70, i32 %71, i32 0)
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %78

74:                                               ; preds = %59
  %75 = call i32 (...) @unix_time()
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %79

78:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %79

79:                                               ; preds = %78, %74, %58
  %80 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %80)
  br label %81

81:                                               ; preds = %79, %19
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_12__* @get_conn(%struct.TYPE_11__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @copy_connected_tcp_relays(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @friend_add_tcp_relay(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @pack_nodes(i32*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @write_cryptpacket(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @unix_time(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
