; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thix_manager.c_opj_write_thix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thix_manager.c_opj_write_thix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }

@JPIP_THIX = common dso_local global i64 0, align 8
@JPIP_MHIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_write_thix(i32 %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = bitcast %struct.TYPE_8__* %6 to i64*
  store i64 %1, i64* %16, align 4
  store i32 %0, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %18, %20
  %22 = sext i32 %21 to i64
  %23 = call i64 @opj_calloc(i64 %22, i32 16)
  %24 = inttoptr i64 %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %13, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %123

28:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %115, %28
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %118

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @opj_stream_seek(i32* %36, i64 %37, i32* %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32*, i32** %8, align 8
  %42 = call i64 @opj_stream_tell(i32* %41)
  store i64 %42, i64* %15, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @opj_stream_skip(i32* %43, i32 4, i32* %44)
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %47 = load i64, i64* @JPIP_THIX, align 8
  %48 = call i32 @opj_write_bytes(i32* %46, i64 %47, i32 4)
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @opj_stream_write_data(i32* %49, i32* %50, i32 4, i32* %51)
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %55, %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @opj_write_manf(i32 %53, i32 %58, %struct.TYPE_7__* %59, i32* %60, i32* %61)
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %90, %40
  %64 = load i32, i32* %12, align 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %66, %68
  %70 = icmp slt i32 %64, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %63
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = bitcast %struct.TYPE_8__* %6 to i64*
  %77 = load i64, i64* %76, align 4
  %78 = call i64 @opj_write_tilemhix(i32 %72, i64 %77, i32 %73, i32* %74, i32* %75)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i64 %78, i64* %83, align 8
  %84 = load i32, i32* @JPIP_MHIX, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 8
  br label %90

90:                                               ; preds = %71
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %63

93:                                               ; preds = %63
  %94 = load i32*, i32** %8, align 8
  %95 = call i64 @opj_stream_tell(i32* %94)
  %96 = load i64, i64* %15, align 8
  %97 = sub nsw i64 %95, %96
  store i64 %97, i64* %14, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @opj_stream_seek(i32* %98, i64 %99, i32* %100)
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @opj_write_bytes(i32* %102, i64 %103, i32 4)
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @opj_stream_write_data(i32* %105, i32* %106, i32 4, i32* %107)
  %109 = load i32*, i32** %8, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* %14, align 8
  %112 = add nsw i64 %110, %111
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @opj_stream_seek(i32* %109, i64 %112, i32* %113)
  br label %115

115:                                              ; preds = %93
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %29

118:                                              ; preds = %29
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %120 = call i32 @opj_free(%struct.TYPE_7__* %119)
  %121 = load i64, i64* %14, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %118, %27
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i64 @opj_calloc(i64, i32) #1

declare dso_local i32 @opj_stream_seek(i32*, i64, i32*) #1

declare dso_local i64 @opj_stream_tell(i32*) #1

declare dso_local i32 @opj_stream_skip(i32*, i32, i32*) #1

declare dso_local i32 @opj_write_bytes(i32*, i64, i32) #1

declare dso_local i32 @opj_stream_write_data(i32*, i32*, i32, i32*) #1

declare dso_local i32 @opj_write_manf(i32, i32, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i64 @opj_write_tilemhix(i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @opj_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
