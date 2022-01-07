; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_cidx_manager.c_opj_check_EPHuse.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_cidx_manager.c_opj_check_EPHuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@OPJ_FALSE = common dso_local global i32 0, align 4
@J2K_MS_COD = common dso_local global i64 0, align 8
@OPJ_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_check_EPHuse(i32 %0, %struct.TYPE_3__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %64, %5
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @J2K_MS_COD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %21
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @opj_stream_tell(i32* %31)
  store i64 %32, i64* %14, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %35, %41
  %43 = add nsw i64 %42, 2
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @opj_stream_seek(i32* %33, i64 %43, i32* %44)
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @opj_stream_read_data(i32* %46, i32* %47, i32 1, i32* %48)
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %51 = call i32 @opj_read_bytes(i32* %50, i32* %15, i32 1)
  %52 = load i32, i32* %15, align 4
  %53 = lshr i32 %52, 2
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %30
  %57 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %56, %30
  %59 = load i32*, i32** %9, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @opj_stream_seek(i32* %59, i64 %60, i32* %61)
  br label %67

63:                                               ; preds = %21
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %17

67:                                               ; preds = %58, %17
  %68 = load i32, i32* %12, align 4
  ret i32 %68
}

declare dso_local i64 @opj_stream_tell(i32*) #1

declare dso_local i32 @opj_stream_seek(i32*, i64, i32*) #1

declare dso_local i32 @opj_stream_read_data(i32*, i32*, i32, i32*) #1

declare dso_local i32 @opj_read_bytes(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
