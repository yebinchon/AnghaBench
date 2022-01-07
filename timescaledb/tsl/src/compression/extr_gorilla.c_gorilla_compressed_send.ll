; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_gorilla.c_gorilla_compressed_send.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_gorilla.c_gorilla_compressed_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@COMPRESSION_ALGORITHM_GORILLA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gorilla_compressed_send(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = bitcast %struct.TYPE_8__* %7 to i32*
  store i32* %8, i32** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @COMPRESSION_ALGORITHM_GORILLA, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @compressed_gorilla_data_init_from_pointer(%struct.TYPE_7__* %5, i32* %16)
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @pq_sendbyte(i32 %18, i64 %22)
  %24 = load i32, i32* %4, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pq_sendint64(i32 %24, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @simple8brle_serialized_send(i32 %30, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @simple8brle_serialized_send(i32 %34, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  %40 = call i32 @bit_array_send(i32 %38, i32* %39)
  %41 = load i32, i32* %4, align 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @simple8brle_serialized_send(i32 %41, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %47 = call i32 @bit_array_send(i32 %45, i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %2
  %54 = load i32, i32* %4, align 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @simple8brle_serialized_send(i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %53, %2
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @compressed_gorilla_data_init_from_pointer(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @pq_sendbyte(i32, i64) #1

declare dso_local i32 @pq_sendint64(i32, i32) #1

declare dso_local i32 @simple8brle_serialized_send(i32, i32) #1

declare dso_local i32 @bit_array_send(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
