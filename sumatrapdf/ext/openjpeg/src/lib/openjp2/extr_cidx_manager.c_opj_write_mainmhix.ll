; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_cidx_manager.c_opj_write_mainmhix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_cidx_manager.c_opj_write_mainmhix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i32, i64 }

@JPIP_MHIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_write_mainmhix(i32 %0, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [8 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32* %3, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @opj_stream_tell(i32* %12)
  store i64 %13, i64* %11, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @opj_stream_skip(i32* %14, i32 4, i32* %15)
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %18 = load i64, i64* @JPIP_MHIX, align 8
  %19 = call i32 @opj_write_bytes(i32* %17, i64 %18, i32 4)
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @opj_stream_write_data(i32* %20, i32* %21, i32 4, i32* %22)
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %26, %28
  %30 = add nsw i64 %29, 1
  %31 = call i32 @opj_write_bytes(i32* %24, i64 %30, i32 8)
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @opj_stream_write_data(i32* %32, i32* %33, i32 8, i32* %34)
  store i64 1, i64* %9, align 8
  br label %36

36:                                               ; preds = %84, %4
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %36
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @opj_write_bytes(i32* %42, i64 %48, i32 2)
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = call i32 @opj_write_bytes(i32* %51, i64 0, i32 2)
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @opj_stream_write_data(i32* %53, i32* %54, i32 4, i32* %55)
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = call i32 @opj_write_bytes(i32* %57, i64 %66, i32 8)
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @opj_stream_write_data(i32* %68, i32* %69, i32 8, i32* %70)
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @opj_write_bytes(i32* %72, i64 %78, i32 2)
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @opj_stream_write_data(i32* %80, i32* %81, i32 2, i32* %82)
  br label %84

84:                                               ; preds = %41
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %9, align 8
  br label %36

87:                                               ; preds = %36
  %88 = load i32*, i32** %6, align 8
  %89 = call i64 @opj_stream_tell(i32* %88)
  %90 = load i64, i64* %11, align 8
  %91 = sub i64 %89, %90
  store i64 %91, i64* %10, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @opj_stream_seek(i32* %92, i64 %93, i32* %94)
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @opj_write_bytes(i32* %96, i64 %97, i32 4)
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @opj_stream_write_data(i32* %99, i32* %100, i32 4, i32* %101)
  %103 = load i32*, i32** %6, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %104, %105
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @opj_stream_seek(i32* %103, i64 %106, i32* %107)
  %109 = load i64, i64* %10, align 8
  %110 = trunc i64 %109 to i32
  ret i32 %110
}

declare dso_local i64 @opj_stream_tell(i32*) #1

declare dso_local i32 @opj_stream_skip(i32*, i32, i32*) #1

declare dso_local i32 @opj_write_bytes(i32*, i64, i32) #1

declare dso_local i32 @opj_stream_write_data(i32*, i32*, i32, i32*) #1

declare dso_local i32 @opj_stream_seek(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
