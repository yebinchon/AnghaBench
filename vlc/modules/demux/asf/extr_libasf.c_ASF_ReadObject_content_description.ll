; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/asf/extr_libasf.c_ASF_ReadObject_content_description.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/asf/extr_libasf.c_ASF_ReadObject_content_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i8*, i8*, i8*, i8*, i8* }

@INT32_MAX = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@ASF_OBJECT_COMMON_SIZE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @ASF_ReadObject_content_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ASF_ReadObject_content_description(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INT32_MAX, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %3, align 4
  br label %84

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @vlc_stream_Peek(i32* %25, i32** %7, i64 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 34
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %3, align 4
  br label %84

34:                                               ; preds = %24
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @ASF_OBJECT_COMMON_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %8, align 8
  %39 = call i64 (...) @ASF_READ2()
  store i64 %39, i64* %9, align 8
  %40 = call i64 (...) @ASF_READ2()
  store i64 %40, i64* %10, align 8
  %41 = call i64 (...) @ASF_READ2()
  store i64 %41, i64* %11, align 8
  %42 = call i64 (...) @ASF_READ2()
  store i64 %42, i64* %12, align 8
  %43 = call i64 (...) @ASF_READ2()
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* %13, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @ASF_HAVE(i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %34
  %56 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %56, i32* %3, align 4
  br label %84

57:                                               ; preds = %34
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i8* @get_wstring(i32* %58, i64 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i8* @get_wstring(i32* %63, i64 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i8* @get_wstring(i32* %68, i64 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i8* @get_wstring(i32* %73, i64 %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i8* @get_wstring(i32* %78, i64 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %57, %55, %32, %22
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @vlc_stream_Peek(i32*, i32**, i64) #1

declare dso_local i64 @ASF_READ2(...) #1

declare dso_local i32 @ASF_HAVE(i64) #1

declare dso_local i8* @get_wstring(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
