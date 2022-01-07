; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_xTTS_CountEntries.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_xTTS_CountEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT32_MAX = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"invalid index counting total samples %u %u\00", align 1
@VLC_EBADVAR = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64, i64, i64, i64*, i64)* @xTTS_CountEntries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xTTS_CountEntries(i32* %0, i64* %1, i64 %2, i64 %3, i64 %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  br label %17

17:                                               ; preds = %80, %61, %7
  %18 = load i64, i64* %13, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %81

20:                                               ; preds = %17
  %21 = load i64, i64* @UINT32_MAX, align 8
  %22 = load i64, i64* %11, align 8
  %23 = sub nsw i64 %21, %22
  %24 = load i64*, i64** %10, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load i64, i64* %11, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %31, %33
  store i64 %34, i64* %16, align 8
  br label %37

35:                                               ; preds = %20
  %36 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %36, i32* %8, align 4
  br label %83

37:                                               ; preds = %30
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @msg_Err(i32* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i32, i32* @VLC_EBADVAR, align 4
  store i32 %46, i32* %8, align 4
  br label %83

47:                                               ; preds = %37
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %12, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %81

61:                                               ; preds = %50
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = sub nsw i64 %63, %62
  store i64 %64, i64* %13, align 8
  store i64 0, i64* %12, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  br label %17

68:                                               ; preds = %47
  %69 = load i64, i64* %13, align 8
  %70 = load i64*, i64** %14, align 8
  %71 = load i64, i64* %16, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @__MIN(i64 %69, i64 %73)
  %75 = load i64, i64* %13, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* %13, align 8
  %77 = load i64*, i64** %10, align 8
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %68
  br label %17

81:                                               ; preds = %54, %17
  %82 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %41, %35
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i64, i64) #1

declare dso_local i64 @__MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
