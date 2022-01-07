; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_create_io_inherit_block.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_create_io_inherit_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64 }

@MSVCRT_MAX_FILES = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@WX_OPEN = common dso_local global i32 0, align 4
@WX_DONTINHERIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_io_inherit_block(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %11 = load i32, i32* @MSVCRT_MAX_FILES, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %25, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.TYPE_6__* @get_ioinfo_nolock(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %7, align 4
  br label %13

28:                                               ; preds = %23, %13
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 9, %32
  %34 = add i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @calloc(i32 1, i32 %38)
  %40 = load i32**, i32*** %5, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32**, i32*** %5, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %28
  %45 = load i32*, i32** %4, align 8
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %3, align 4
  br label %102

47:                                               ; preds = %28
  %48 = load i32**, i32*** %5, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = bitcast i8* %55 to i64*
  store i64* %56, i64** %9, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32**, i32*** %5, align 8
  %59 = load i32*, i32** %58, align 8
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %97, %47
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = call %struct.TYPE_5__* @get_ioinfo(i32 %65)
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %10, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @WX_OPEN, align 4
  %71 = load i32, i32* @WX_DONTINHERIT, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = load i32, i32* @WX_OPEN, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %64
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %8, align 8
  store i8 %80, i8* %81, align 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %9, align 8
  store i64 %84, i64* %85, align 8
  br label %90

86:                                               ; preds = %64
  %87 = load i8*, i8** %8, align 8
  store i8 0, i8* %87, align 1
  %88 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %89 = load i64*, i64** %9, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %76
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %92 = call i32 @release_ioinfo(%struct.TYPE_5__* %91)
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %8, align 8
  %95 = load i64*, i64** %9, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %9, align 8
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %60

100:                                              ; preds = %60
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %44
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_6__* @get_ioinfo_nolock(i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_5__* @get_ioinfo(i32) #1

declare dso_local i32 @release_ioinfo(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
