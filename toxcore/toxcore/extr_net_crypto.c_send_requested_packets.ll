; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_send_requested_packets.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_send_requested_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @send_requested_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_requested_packets(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %94

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.TYPE_10__* @get_crypto_connection(i32* %20, i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %8, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %94

26:                                               ; preds = %19
  %27 = call i64 (...) @current_time_monotonic()
  store i64 %27, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = call i64 @num_packets_array(%struct.TYPE_11__* %29)
  store i64 %30, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %88, %26
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %91

35:                                               ; preds = %31
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  store i64 %41, i64* %14, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @get_data_pointer(%struct.TYPE_11__* %43, %struct.TYPE_9__** %13, i64 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %94

49:                                               ; preds = %35
  %50 = load i32, i32* %15, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %88

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %88

60:                                               ; preds = %54
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @send_data_packet_helper(i32* %61, i32 %62, i32 %66, i64 %67, i32 %70, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %60
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %11, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %11, align 8
  br label %82

82:                                               ; preds = %76, %60
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %91

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %59, %52
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %10, align 8
  br label %31

91:                                               ; preds = %86, %31
  %92 = load i64, i64* %11, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %48, %25, %18
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_10__* @get_crypto_connection(i32*, i32) #1

declare dso_local i64 @current_time_monotonic(...) #1

declare dso_local i64 @num_packets_array(%struct.TYPE_11__*) #1

declare dso_local i32 @get_data_pointer(%struct.TYPE_11__*, %struct.TYPE_9__**, i64) #1

declare dso_local i64 @send_data_packet_helper(i32*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
