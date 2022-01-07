; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_kill_nonused_tcp.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_kill_nonused_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }

@TCP_CONN_CONNECTED = common dso_local global i64 0, align 8
@TCP_CONNECTION_ANNOUNCE_TIMEOUT = common dso_local global i32 0, align 4
@RECOMMENDED_FRIEND_TCP_CONNECTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @kill_nonused_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_nonused_tcp(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %107

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %70, %16
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call %struct.TYPE_7__* @get_tcp_connection(%struct.TYPE_8__* %30, i32 %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %69

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TCP_CONN_CONNECTED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TCP_CONNECTION_ANNOUNCE_TIMEOUT, align 4
  %56 = call i64 @is_timeout(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %22, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %58, %51, %46, %41
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %35
  br label %69

69:                                               ; preds = %68, %29
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %3, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %23

73:                                               ; preds = %23
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @RECOMMENDED_FRIEND_TCP_CONNECTIONS, align 4
  %76 = icmp ule i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 1, i32* %9, align 4
  br label %104

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @RECOMMENDED_FRIEND_TCP_CONNECTIONS, align 4
  %81 = sub i32 %79, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %78
  br label %88

88:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %100, %88
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = load i32, i32* %3, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %22, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @kill_tcp_relay_connection(%struct.TYPE_8__* %94, i32 %98)
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %3, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %89

103:                                              ; preds = %89
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %103, %77
  %105 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %9, align 4
  switch i32 %106, label %108 [
    i32 0, label %107
    i32 1, label %107
  ]

107:                                              ; preds = %15, %104, %104
  ret void

108:                                              ; preds = %104
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_7__* @get_tcp_connection(%struct.TYPE_8__*, i32) #2

declare dso_local i64 @is_timeout(i32, i32) #2

declare dso_local i32 @kill_tcp_relay_connection(%struct.TYPE_8__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
