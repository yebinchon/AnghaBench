; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_ppix_manager.c_opj_write_ppix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_ppix_manager.c_opj_write_ppix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@JPIP_PPIX = common dso_local global i32 0, align 4
@JPIP_FAIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_write_ppix(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %1, i32* %20, align 4
  store i32 %0, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 -1, i32* %18, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = call i64 @opj_calloc(i64 %23, i32 8)
  %25 = inttoptr i64 %24 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %17, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %27 = icmp eq %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %120

29:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %113, %29
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %116

33:                                               ; preds = %30
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %18, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @opj_stream_seek(i32* %37, i32 %38, i32* %39)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @opj_stream_tell(i32* %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @opj_stream_skip(i32* %44, i32 4, i32* %45)
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %48 = load i32, i32* @JPIP_PPIX, align 4
  %49 = call i32 @opj_write_bytes(i32* %47, i32 %48, i32 4)
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @opj_stream_write_data(i32* %50, i32* %51, i32 4, i32* %52)
  %54 = load i32, i32* %16, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @opj_write_manf(i32 %54, i32 %56, %struct.TYPE_7__* %57, i32* %58, i32* %59)
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %88, %41
  %62 = load i32, i32* %15, align 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @opj_write_ppixfaix(i32 %67, i32 %68, i32 %74, i32 %69, i32 %70, i32* %71, i32* %72)
  %76 = trunc i64 %75 to i32
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* @JPIP_FAIX, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store i32 %82, i32* %87, align 4
  br label %88

88:                                               ; preds = %66
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %61

91:                                               ; preds = %61
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @opj_stream_tell(i32* %92)
  %94 = load i32, i32* %18, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %19, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %18, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @opj_stream_seek(i32* %96, i32 %97, i32* %98)
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %101 = load i32, i32* %19, align 4
  %102 = call i32 @opj_write_bytes(i32* %100, i32 %101, i32 4)
  %103 = load i32*, i32** %12, align 8
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 @opj_stream_write_data(i32* %103, i32* %104, i32 4, i32* %105)
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @opj_stream_seek(i32* %107, i32 %110, i32* %111)
  br label %113

113:                                              ; preds = %91
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %16, align 4
  br label %30

116:                                              ; preds = %30
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %118 = call i32 @opj_free(%struct.TYPE_7__* %117)
  %119 = load i32, i32* %19, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %116, %28
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i64 @opj_calloc(i64, i32) #1

declare dso_local i32 @opj_stream_seek(i32*, i32, i32*) #1

declare dso_local i32 @opj_stream_tell(i32*) #1

declare dso_local i32 @opj_stream_skip(i32*, i32, i32*) #1

declare dso_local i32 @opj_write_bytes(i32*, i32, i32) #1

declare dso_local i32 @opj_stream_write_data(i32*, i32*, i32, i32*) #1

declare dso_local i32 @opj_write_manf(i32, i32, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i64 @opj_write_ppixfaix(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @opj_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
