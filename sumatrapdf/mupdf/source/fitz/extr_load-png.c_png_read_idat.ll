; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_read_idat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_read_idat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32* }

@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"zlib error: %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ran out of output before input\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"inflate did not consume buffer (%d remaining)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.info*, i8*, i32, %struct.TYPE_4__*)* @png_read_idat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_read_idat(i32* %0, %struct.info* %1, i8* %2, i32 %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.info* %1, %struct.info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %10, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i32* %13, i32** %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %21 = call i32 @inflate(%struct.TYPE_4__* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @Z_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @Z_STREAM_END, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %30, i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %29, %25, %5
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %49 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %47, i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %51, i32 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %50, %36
  ret void
}

declare dso_local i32 @inflate(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
