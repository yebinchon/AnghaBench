; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_array.c_array_compressed_data_send.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_array.c_array_compressed_data_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@BINARY_ENCODING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @array_compressed_data_send(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32* @create_datum_serializer(i32 %19)
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = call i64 @datum_serializer_binary_string_encoding(i32* %21)
  store i64 %22, i64* %15, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call { %struct.TYPE_6__*, i32* } @array_compressed_data_from_bytes(i8* %23, i32 %24, i32 %25, i32 %26)
  %28 = bitcast %struct.TYPE_8__* %16 to { %struct.TYPE_6__*, i32* }*
  %29 = getelementptr inbounds { %struct.TYPE_6__*, i32* }, { %struct.TYPE_6__*, i32* }* %28, i32 0, i32 0
  %30 = extractvalue { %struct.TYPE_6__*, i32* } %27, 0
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds { %struct.TYPE_6__*, i32* }, { %struct.TYPE_6__*, i32* }* %28, i32 0, i32 1
  %32 = extractvalue { %struct.TYPE_6__*, i32* } %27, 1
  store i32* %32, i32** %31, align 8
  %33 = bitcast %struct.TYPE_8__* %11 to i8*
  %34 = bitcast %struct.TYPE_8__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @pq_sendbyte(i32 %35, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %5
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @simple8brle_serialized_send(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %5
  %50 = load i32, i32* %6, align 4
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* @BINARY_ENCODING, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @pq_sendbyte(i32 %50, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pq_sendint32(i32 %56, i32 %60)
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32* @array_decompression_iterator_alloc_forward(i8* %62, i32 %63, i32 %64, i32 %65)
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %12, align 8
  call void @array_decompression_iterator_try_next_forward(%struct.TYPE_7__* sret %17, i32* %67)
  %68 = bitcast %struct.TYPE_7__* %13 to i8*
  %69 = bitcast %struct.TYPE_7__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 24, i1 false)
  br label %70

70:                                               ; preds = %87, %49
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %87

80:                                               ; preds = %75
  %81 = load i32*, i32** %14, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i32, i32* %6, align 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @datum_append_to_binary_string(i32* %81, i64 %82, i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %80, %79
  %88 = load i32*, i32** %12, align 8
  call void @array_decompression_iterator_try_next_forward(%struct.TYPE_7__* sret %18, i32* %88)
  %89 = bitcast %struct.TYPE_7__* %13 to i8*
  %90 = bitcast %struct.TYPE_7__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 24, i1 false)
  br label %70

91:                                               ; preds = %70
  ret void
}

declare dso_local i32* @create_datum_serializer(i32) #1

declare dso_local i64 @datum_serializer_binary_string_encoding(i32*) #1

declare dso_local { %struct.TYPE_6__*, i32* } @array_compressed_data_from_bytes(i8*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pq_sendbyte(i32, i32) #1

declare dso_local i32 @simple8brle_serialized_send(i32, i32*) #1

declare dso_local i32 @pq_sendint32(i32, i32) #1

declare dso_local i32* @array_decompression_iterator_alloc_forward(i8*, i32, i32, i32) #1

declare dso_local void @array_decompression_iterator_try_next_forward(%struct.TYPE_7__* sret, i32*) #1

declare dso_local i32 @datum_append_to_binary_string(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
