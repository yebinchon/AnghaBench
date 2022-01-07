; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_deflate_close.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_deflate_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deflate = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32, i64, i32* }

@Z_FINISH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"zlib compression failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @deflate_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deflate_close(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.deflate*, align 8
  %6 = alloca [32768 x i8], align 16
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.deflate*
  store %struct.deflate* %9, %struct.deflate** %5, align 8
  %10 = load %struct.deflate*, %struct.deflate** %5, align 8
  %11 = getelementptr inbounds %struct.deflate, %struct.deflate* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32* null, i32** %12, align 8
  %13 = load %struct.deflate*, %struct.deflate** %5, align 8
  %14 = getelementptr inbounds %struct.deflate, %struct.deflate* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %48, %2
  %17 = getelementptr inbounds [32768 x i8], [32768 x i8]* %6, i64 0, i64 0
  %18 = load %struct.deflate*, %struct.deflate** %5, align 8
  %19 = getelementptr inbounds %struct.deflate, %struct.deflate* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = load %struct.deflate*, %struct.deflate** %5, align 8
  %22 = getelementptr inbounds %struct.deflate, %struct.deflate* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 32768, i32* %23, align 8
  %24 = load %struct.deflate*, %struct.deflate** %5, align 8
  %25 = getelementptr inbounds %struct.deflate, %struct.deflate* %24, i32 0, i32 0
  %26 = load i32, i32* @Z_FINISH, align 4
  %27 = call i32 @deflate(%struct.TYPE_2__* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.deflate*, %struct.deflate** %5, align 8
  %29 = getelementptr inbounds %struct.deflate, %struct.deflate* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %16
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.deflate*, %struct.deflate** %5, align 8
  %36 = getelementptr inbounds %struct.deflate, %struct.deflate* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.deflate*, %struct.deflate** %5, align 8
  %39 = getelementptr inbounds %struct.deflate, %struct.deflate* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.deflate*, %struct.deflate** %5, align 8
  %43 = getelementptr inbounds %struct.deflate, %struct.deflate* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @fz_write_data(i32* %34, i32 %37, i8* %41, i32 %45)
  br label %47

47:                                               ; preds = %33, %16
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @Z_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %16, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @Z_STREAM_END, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @fz_throw(i32* %57, i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %52
  ret void
}

declare dso_local i32 @deflate(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @fz_write_data(i32*, i32, i8*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
