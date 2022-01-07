; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_array.c_array_compressed_data_recv.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_array.c_array_compressed_data_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }

@BINARY_ENCODING = common dso_local global i32 0, align 4
@TEXT_ENCODING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @array_compressed_data_recv(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32* @array_compressor_alloc(i32 %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32* @create_datum_deserializer(i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @pq_getmsgbyte(i32 %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @simple8brle_serialized_recv(i32 %25)
  %27 = call i32 @simple8brle_decompression_iterator_init_forward(%struct.TYPE_6__* %6, i32 %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @pq_getmsgbyte(i32 %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @pq_getmsgint32(i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %37, %28
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %83, %40
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %86

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = call { i64, i32 } @simple8brle_decompression_iterator_try_next_forward(%struct.TYPE_6__* %6)
  %50 = bitcast %struct.TYPE_7__* %13 to { i64, i32 }*
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %50, i32 0, i32 0
  %52 = extractvalue { i64, i32 } %49, 0
  store i64 %52, i64* %51, align 8
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %50, i32 0, i32 1
  %54 = extractvalue { i64, i32 } %49, 1
  store i32 %54, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @Assert(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %48
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @array_compressor_append_null(i32* %65)
  br label %83

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @BINARY_ENCODING, align 4
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @TEXT_ENCODING, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @binary_string_to_datum(i32* %69, i32 %77, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @array_compressor_append(i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %64
  %84 = load i64, i64* %11, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %11, align 8
  br label %41

86:                                               ; preds = %41
  %87 = load i32*, i32** %5, align 8
  %88 = call i32* @array_compressor_get_serialization_info(i32* %87)
  ret i32* %88
}

declare dso_local i32* @array_compressor_alloc(i32) #1

declare dso_local i32* @create_datum_deserializer(i32) #1

declare dso_local i64 @pq_getmsgbyte(i32) #1

declare dso_local i32 @simple8brle_decompression_iterator_init_forward(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @simple8brle_serialized_recv(i32) #1

declare dso_local i64 @pq_getmsgint32(i32) #1

declare dso_local { i64, i32 } @simple8brle_decompression_iterator_try_next_forward(%struct.TYPE_6__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @array_compressor_append_null(i32*) #1

declare dso_local i32 @binary_string_to_datum(i32*, i32, i32) #1

declare dso_local i32 @array_compressor_append(i32*, i32) #1

declare dso_local i32* @array_compressor_get_serialization_info(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
