; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_stream_extractor_AttachParsed.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_stream_extractor_AttachParsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stream_extractor_AttachParsed(i32** %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @mrl_FragmentSplit(i32* %8, i8** %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = call i64 @vlc_array_count(i32* %8)
  store i64 %20, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %33, %19
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i64, i64* %10, align 8
  %27 = call i8* @vlc_array_item_at_index(i32* %8, i64 %26)
  store i8* %27, i8** %11, align 8
  %28 = load i32**, i32*** %5, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @vlc_stream_extractor_Attach(i32** %28, i8* %29, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %36

33:                                               ; preds = %25
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %10, align 8
  br label %21

36:                                               ; preds = %32, %21
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %45, %36
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i64, i64* %12, align 8
  %43 = call i8* @vlc_array_item_at_index(i32* %8, i64 %42)
  %44 = call i32 @free(i8* %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %12, align 8
  br label %37

48:                                               ; preds = %37
  %49 = call i32 @vlc_array_clear(i32* %8)
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @VLC_SUCCESS, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @VLC_EGENERIC, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @mrl_FragmentSplit(i32*, i8**, i8*) #1

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local i8* @vlc_array_item_at_index(i32*, i64) #1

declare dso_local i64 @vlc_stream_extractor_Attach(i32**, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_array_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
