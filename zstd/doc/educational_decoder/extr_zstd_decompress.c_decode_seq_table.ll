; ModuleID = '/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_decode_seq_table.c'
source_filename = "/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_decode_seq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@SEQ_LITERAL_LENGTH_DEFAULT_DIST = common dso_local global i32* null, align 8
@SEQ_OFFSET_DEFAULT_DIST = common dso_local global i32* null, align 8
@SEQ_MATCH_LENGTH_DEFAULT_DIST = common dso_local global i32* null, align 8
@__const.decode_seq_table.default_distribution_lengths = private unnamed_addr constant [3 x i64] [i64 36, i64 29, i64 53], align 16
@__const.decode_seq_table.default_distribution_accuracies = private unnamed_addr constant [3 x i64] [i64 6, i64 5, i64 6], align 16
@__const.decode_seq_table.max_accuracies = private unnamed_addr constant [3 x i64] [i64 9, i64 8, i64 9], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i64, i32)* @decode_seq_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_seq_table(%struct.TYPE_7__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32*], align 16
  %10 = alloca [3 x i64], align 16
  %11 = alloca [3 x i64], align 16
  %12 = alloca [3 x i64], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %18 = load i32*, i32** @SEQ_LITERAL_LENGTH_DEFAULT_DIST, align 8
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 1
  %20 = load i32*, i32** @SEQ_OFFSET_DEFAULT_DIST, align 8
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 1
  %22 = load i32*, i32** @SEQ_MATCH_LENGTH_DEFAULT_DIST, align 8
  store i32* %22, i32** %21, align 8
  %23 = bitcast [3 x i64]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([3 x i64]* @__const.decode_seq_table.default_distribution_lengths to i8*), i64 24, i1 false)
  %24 = bitcast [3 x i64]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([3 x i64]* @__const.decode_seq_table.default_distribution_accuracies to i8*), i64 24, i1 false)
  %25 = bitcast [3 x i64]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([3 x i64]* @__const.decode_seq_table.max_accuracies to i8*), i64 24, i1 false)
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 129
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = call i32 @FSE_free_dtable(%struct.TYPE_7__* %29)
  br label %31

31:                                               ; preds = %28, %4
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %71 [
    i32 130, label %33
    i32 128, label %48
    i32 131, label %56
    i32 129, label %63
  ]

33:                                               ; preds = %31
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 %34
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %13, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %15, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %15, align 8
  %47 = call i32 @FSE_init_dtable(%struct.TYPE_7__* %43, i32* %44, i64 %45, i64 %46)
  br label %73

48:                                               ; preds = %31
  %49 = load i32*, i32** %6, align 8
  %50 = call i32* @IO_get_read_ptr(i32* %49, i32 1)
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @FSE_init_dtable_rle(%struct.TYPE_7__* %53, i32 %54)
  br label %73

56:                                               ; preds = %31
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @FSE_decode_header(%struct.TYPE_7__* %57, i32* %58, i64 %61)
  br label %73

63:                                               ; preds = %31
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = call i32 (...) @CORRUPTION()
  br label %70

70:                                               ; preds = %68, %63
  br label %73

71:                                               ; preds = %31
  %72 = call i32 (...) @IMPOSSIBLE()
  br label %73

73:                                               ; preds = %71, %70, %56, %48, %33
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FSE_free_dtable(%struct.TYPE_7__*) #2

declare dso_local i32 @FSE_init_dtable(%struct.TYPE_7__*, i32*, i64, i64) #2

declare dso_local i32* @IO_get_read_ptr(i32*, i32) #2

declare dso_local i32 @FSE_init_dtable_rle(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @FSE_decode_header(%struct.TYPE_7__*, i32*, i64) #2

declare dso_local i32 @CORRUPTION(...) #2

declare dso_local i32 @IMPOSSIBLE(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
