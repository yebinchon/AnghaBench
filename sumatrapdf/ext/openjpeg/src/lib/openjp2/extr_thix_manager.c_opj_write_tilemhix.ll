; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thix_manager.c_opj_write_tilemhix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thix_manager.c_opj_write_tilemhix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }

@JPIP_MHIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_write_tilemhix(i32 %0, %struct.TYPE_7__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %18, align 8
  store i32 %0, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @opj_stream_tell(i32* %19)
  store i64 %20, i64* %17, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @opj_stream_skip(i32* %21, i32 4, i32* %22)
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %25 = load i64, i64* @JPIP_MHIX, align 8
  %26 = call i32 @opj_write_bytes(i32* %24, i64 %25, i32 4)
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @opj_stream_write_data(i32* %27, i32* %28, i32 4, i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = bitcast %struct.TYPE_7__* %13 to i8*
  %37 = bitcast %struct.TYPE_7__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 24, i1 false)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 0
  %41 = bitcast %struct.TYPE_6__* %14 to i8*
  %42 = bitcast %struct.TYPE_6__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %45, %47
  %49 = add nsw i64 %48, 1
  %50 = call i32 @opj_write_bytes(i32* %43, i64 %49, i32 8)
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @opj_stream_write_data(i32* %51, i32* %52, i32 8, i32* %53)
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %15, align 8
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %115, %5
  %63 = load i32, i32* %12, align 4
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %63, %70
  br i1 %71, label %72, label %118

72:                                               ; preds = %62
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @opj_write_bytes(i32* %73, i64 %79, i32 2)
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = call i32 @opj_write_bytes(i32* %82, i64 0, i32 2)
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @opj_stream_write_data(i32* %84, i32* %85, i32 4, i32* %86)
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = call i32 @opj_write_bytes(i32* %88, i64 %97, i32 8)
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @opj_stream_write_data(i32* %99, i32* %100, i32 8, i32* %101)
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @opj_write_bytes(i32* %103, i64 %109, i32 2)
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @opj_stream_write_data(i32* %111, i32* %112, i32 2, i32* %113)
  br label %115

115:                                              ; preds = %72
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %62

118:                                              ; preds = %62
  %119 = load i32*, i32** %9, align 8
  %120 = call i64 @opj_stream_tell(i32* %119)
  %121 = load i64, i64* %17, align 8
  %122 = sub nsw i64 %120, %121
  store i64 %122, i64* %16, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i64, i64* %17, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = call i32 @opj_stream_seek(i32* %123, i64 %124, i32* %125)
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %128 = load i64, i64* %16, align 8
  %129 = call i32 @opj_write_bytes(i32* %127, i64 %128, i32 4)
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @opj_stream_write_data(i32* %130, i32* %131, i32 4, i32* %132)
  %134 = load i32*, i32** %9, align 8
  %135 = load i64, i64* %17, align 8
  %136 = load i64, i64* %16, align 8
  %137 = add nsw i64 %135, %136
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @opj_stream_seek(i32* %134, i64 %137, i32* %138)
  %140 = load i64, i64* %16, align 8
  %141 = trunc i64 %140 to i32
  ret i32 %141
}

declare dso_local i64 @opj_stream_tell(i32*) #1

declare dso_local i32 @opj_stream_skip(i32*, i32, i32*) #1

declare dso_local i32 @opj_write_bytes(i32*, i64, i32) #1

declare dso_local i32 @opj_stream_write_data(i32*, i32*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @opj_stream_seek(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
