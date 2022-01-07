; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_cidx_manager.c_opj_write_manf.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_cidx_manager.c_opj_write_manf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@JPIP_MANF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opj_write_manf(i32 %0, i32 %1, %struct.TYPE_3__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i64 @opj_stream_tell(i32* %15)
  store i64 %16, i64* %14, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @opj_stream_skip(i32* %17, i32 4, i32* %18)
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %21 = load i64, i64* @JPIP_MANF, align 8
  %22 = call i32 @opj_write_bytes(i32* %20, i64 %21, i32 4)
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @opj_stream_write_data(i32* %23, i32* %24, i32 4, i32* %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %59, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @opj_write_bytes(i32* %35, i64 %41, i32 4)
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @opj_stream_write_data(i32* %43, i32* %44, i32 4, i32* %45)
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @opj_write_bytes(i32* %47, i64 %53, i32 4)
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @opj_stream_write_data(i32* %55, i32* %56, i32 4, i32* %57)
  br label %59

59:                                               ; preds = %34
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %30

62:                                               ; preds = %30
  br label %63

63:                                               ; preds = %62, %5
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @opj_stream_tell(i32* %64)
  %66 = load i64, i64* %14, align 8
  %67 = sub nsw i64 %65, %66
  store i64 %67, i64* %13, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @opj_stream_seek(i32* %68, i64 %69, i32* %70)
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @opj_write_bytes(i32* %72, i64 %73, i32 4)
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @opj_stream_write_data(i32* %75, i32* %76, i32 4, i32* %77)
  %79 = load i32*, i32** %9, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %13, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @opj_stream_seek(i32* %79, i64 %82, i32* %83)
  ret void
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
