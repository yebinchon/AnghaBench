; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/asf/extr_libasf.c_ASF_ReadObject_language_list.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/asf/extr_libasf.c_ASF_ReadObject_language_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64* }

@INT32_MAX = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@ASF_OBJECT_COMMON_SIZE = common dso_local global i64 0, align 8
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @ASF_ReadObject_language_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ASF_ReadObject_language_list(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INT32_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %3, align 4
  br label %82

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @vlc_stream_Peek(i32* %21, i32** %7, i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %29, i32* %3, align 4
  br label %82

30:                                               ; preds = %20
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* @ASF_OBJECT_COMMON_SIZE, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %8, align 8
  %34 = call i64 (...) @ASF_READ2()
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %30
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64* @calloc(i64 %44, i32 8)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i64* %45, i64** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %53, i32* %3, align 4
  br label %82

54:                                               ; preds = %41
  store i64 0, i64* %9, align 8
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = call i32 @ASF_HAVE(i32 1)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %76

65:                                               ; preds = %61
  %66 = call i32 (...) @ASF_READ1()
  %67 = call i64 @ASF_READS(i32 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %67, i64* %72, align 8
  br label %73

73:                                               ; preds = %65
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %55

76:                                               ; preds = %64, %55
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %30
  %81 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %52, %28, %18
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @vlc_stream_Peek(i32*, i32**, i64) #1

declare dso_local i64 @ASF_READ2(...) #1

declare dso_local i64* @calloc(i64, i32) #1

declare dso_local i32 @ASF_HAVE(i32) #1

declare dso_local i64 @ASF_READS(i32) #1

declare dso_local i32 @ASF_READ1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
