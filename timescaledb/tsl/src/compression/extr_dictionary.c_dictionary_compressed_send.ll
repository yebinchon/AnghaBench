; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_dictionary.c_dictionary_compressed_send.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_dictionary.c_dictionary_compressed_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@COMPRESSION_ALGORITHM_DICTIONARY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dictionary_compressed_send(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @COMPRESSION_ALGORITHM_DICTIONARY, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = bitcast %struct.TYPE_6__* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %7, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = bitcast %struct.TYPE_5__* %19 to i8*
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  store i8* %22, i8** %8, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = call i32 @VARSIZE(%struct.TYPE_5__* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @pq_sendbyte(i32 %29, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @type_append_to_binary_string(i32 %38, i32 %39)
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @simple8brle_serialized_total_size(i8* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @simple8brle_serialized_send(i32 %43, i8* %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %2
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @simple8brle_serialized_total_size(i8* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @simple8brle_serialized_send(i32 %60, i8* %61)
  %63 = load i32, i32* %9, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %57, %2
  %71 = load i32, i32* %4, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @array_compressed_data_send(i32 %71, i8* %72, i32 %73, i32 %76, i32 0)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @VARSIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @pq_sendbyte(i32, i32) #1

declare dso_local i32 @type_append_to_binary_string(i32, i32) #1

declare dso_local i32 @simple8brle_serialized_total_size(i8*) #1

declare dso_local i32 @simple8brle_serialized_send(i32, i8*) #1

declare dso_local i32 @array_compressed_data_send(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
