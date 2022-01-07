; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_wlocale_win32.c__WLocale_strxfrm.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_wlocale_win32.c__WLocale_strxfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INT_MAX = common dso_local global i64 0, align 8
@LCMAP_SORTKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_WLocale_strxfrm(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* @INT_MAX, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %5
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @_STLP_WCSNCPY(i8* %21, i64 %22, i8* %23, i64 %24)
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i64, i64* %11, align 8
  store i64 %27, i64* %6, align 8
  br label %82

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @INT_MAX, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @INT_MAX, align 8
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LCMAP_SORTKEY, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @LCMapStringW(i32 %38, i32 %39, i8* %40, i32 %42, i8* %43, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %34
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %68, %52
  %56 = load i32, i32* %13, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 %63, i8* %67, align 1
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %13, align 4
  br label %55

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %49, %34
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 %76, 1
  br label %79

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i32 [ %77, %75 ], [ 0, %78 ]
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %6, align 8
  br label %82

82:                                               ; preds = %79, %26
  %83 = load i64, i64* %6, align 8
  ret i64 %83
}

declare dso_local i32 @_STLP_WCSNCPY(i8*, i64, i8*, i64) #1

declare dso_local i32 @LCMapStringW(i32, i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
