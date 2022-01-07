; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_mrl_helpers.h_mrl_FragmentSplit.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_mrl_helpers.h_mrl_FragmentSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"!/\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"!?\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8*)* @mrl_FragmentSplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrl_FragmentSplit(i32* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @vlc_array_init(i32* %12)
  br label %14

14:                                               ; preds = %45, %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @strncmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strcspn(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %9, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i8* @strndup(i8* %23, i32 %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %18
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @vlc_uri_decode(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %18
  br label %78

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @vlc_array_append(i32* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @free(i8* %43)
  br label %78

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %7, align 8
  br label %14

50:                                               ; preds = %14
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 33
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %78

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 63
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @vlc_array_count(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  br label %72

72:                                               ; preds = %69, %65, %60
  %73 = load i8*, i8** %7, align 8
  store i8* %73, i8** %8, align 8
  br label %74

74:                                               ; preds = %72, %50
  %75 = load i8*, i8** %8, align 8
  %76 = load i8**, i8*** %6, align 8
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %77, i32* %4, align 4
  br label %96

78:                                               ; preds = %59, %42, %36
  store i64 0, i64* %11, align 8
  br label %79

79:                                               ; preds = %89, %78
  %80 = load i64, i64* %11, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i64 @vlc_array_count(i32* %81)
  %83 = icmp ult i64 %80, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i32*, i32** %5, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i8* @vlc_array_item_at_index(i32* %85, i64 %86)
  %88 = call i32 @free(i8* %87)
  br label %89

89:                                               ; preds = %84
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %11, align 8
  br label %79

92:                                               ; preds = %79
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @vlc_array_clear(i32* %93)
  %95 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %74
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @vlc_array_init(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_uri_decode(i8*) #1

declare dso_local i64 @vlc_array_append(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local i8* @vlc_array_item_at_index(i32*, i64) #1

declare dso_local i32 @vlc_array_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
