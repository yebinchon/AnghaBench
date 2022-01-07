; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_reconnect_tcp_relay_connection.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_reconnect_tcp_relay_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@TCP_CONN_SLEEPING = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@TCP_CONNECTIONS_STATUS_NONE = common dso_local global i32 0, align 4
@TCP_CONN_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @reconnect_tcp_relay_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconnect_tcp_relay_connection(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_10__* @get_tcp_connection(%struct.TYPE_11__* %13, i32 %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %115

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TCP_CONN_SLEEPING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %115

26:                                               ; preds = %19
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %8, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %9, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %42 = call i32 @memcpy(i32* %35, i32 %40, i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = call i32 @kill_TCP_connection(%struct.TYPE_12__* %45)
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = call %struct.TYPE_12__* @new_TCP_connection(i32 %47, i32* %35, i32 %50, i32 %53, i32* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 6
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = icmp ne %struct.TYPE_12__* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %26
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @kill_tcp_relay_connection(%struct.TYPE_11__* %64, i32 %65)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %113

67:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32* @get_connection(%struct.TYPE_11__* %75, i32 %76)
  store i32* %77, i32** %12, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @TCP_CONNECTIONS_STATUS_NONE, align 4
  %84 = call i32 @set_tcp_connection_status(i32* %81, i32 %82, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %80, %74
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %68

89:                                               ; preds = %68
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 5
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %94, %89
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 4
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = load i64, i64* @TCP_CONN_VALID, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %113

113:                                              ; preds = %101, %63
  %114 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %114)
  br label %115

115:                                              ; preds = %113, %25, %18
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_10__* @get_tcp_connection(%struct.TYPE_11__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @kill_TCP_connection(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @new_TCP_connection(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @kill_tcp_relay_connection(%struct.TYPE_11__*, i32) #1

declare dso_local i32* @get_connection(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @set_tcp_connection_status(i32*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
