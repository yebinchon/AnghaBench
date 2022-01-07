; ModuleID = '/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_execute_sequences.c'
source_filename = "/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_execute_sequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_7__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i32*, i64, %struct.TYPE_7__*, i64)* @execute_sequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_sequences(%struct.TYPE_8__* %0, i32* %1, i32* %2, i64 %3, %struct.TYPE_7__* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @IO_make_istream(i32* %22, i64 %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %14, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %31

31:                                               ; preds = %66, %6
  %32 = load i64, i64* %16, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %37 = load i64, i64* %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %37
  %39 = bitcast %struct.TYPE_7__* %17 to i8*
  %40 = bitcast %struct.TYPE_7__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @copy_literals(i64 %42, i32* %13, i32* %43)
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* %18, align 8
  %46 = load i64, i64* %15, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %15, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = bitcast %struct.TYPE_7__* %17 to { i64, i64 }*
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @compute_offset(i64 %51, i64 %53, i32* %48)
  store i64 %54, i64* %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %20, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = load i64, i64* %19, align 8
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @execute_match_copy(%struct.TYPE_8__* %57, i64 %58, i64 %59, i64 %60, i32* %61)
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %15, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %15, align 8
  br label %66

66:                                               ; preds = %35
  %67 = load i64, i64* %16, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %16, align 8
  br label %31

69:                                               ; preds = %31
  %70 = call i64 @IO_istream_len(i32* %13)
  store i64 %70, i64* %21, align 8
  %71 = load i64, i64* %21, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i64 @copy_literals(i64 %71, i32* %13, i32* %72)
  %74 = load i64, i64* %21, align 8
  %75 = load i64, i64* %15, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %15, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  ret void
}

declare dso_local i32 @IO_make_istream(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @copy_literals(i64, i32*, i32*) #1

declare dso_local i64 @compute_offset(i64, i64, i32*) #1

declare dso_local i32 @execute_match_copy(%struct.TYPE_8__*, i64, i64, i64, i32*) #1

declare dso_local i64 @IO_istream_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
