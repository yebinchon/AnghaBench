; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/extr_c_locale_dummyc_locale_dummy.c__WLocale_ctype.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/extr_c_locale_dummyc_locale_dummy.c__WLocale_ctype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Locale_ctype = type { i32 }

@_Locale_ALPHA = common dso_local global i32 0, align 4
@_Locale_CNTRL = common dso_local global i32 0, align 4
@_Locale_DIGIT = common dso_local global i32 0, align 4
@_Locale_PRINT = common dso_local global i32 0, align 4
@_Locale_PUNCT = common dso_local global i32 0, align 4
@_Locale_SPACE = common dso_local global i32 0, align 4
@_Locale_XDIGIT = common dso_local global i32 0, align 4
@_Locale_UPPER = common dso_local global i32 0, align 4
@_Locale_LOWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_WLocale_ctype(%struct._Locale_ctype* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct._Locale_ctype*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._Locale_ctype* %0, %struct._Locale_ctype** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @_Locale_ALPHA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @iswalpha(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* @_Locale_ALPHA, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %12, %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @_Locale_CNTRL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @iswcntrl(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @_Locale_CNTRL, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %25, %20
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @_Locale_DIGIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @iswdigit(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @_Locale_DIGIT, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %38, %33
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @_Locale_PRINT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @iswprint(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @_Locale_PRINT, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %51, %46
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @_Locale_PUNCT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @iswpunct(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @_Locale_PUNCT, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %64, %59
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @_Locale_SPACE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @iswspace(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @_Locale_SPACE, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %77, %72
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @_Locale_XDIGIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @iswxdigit(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @_Locale_XDIGIT, align 4
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %94, %90, %85
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @_Locale_UPPER, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @iswupper(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* @_Locale_UPPER, align 4
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %107, %103, %98
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @_Locale_LOWER, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load i32, i32* %5, align 4
  %118 = call i64 @iswlower(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* @_Locale_LOWER, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %120, %116, %111
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i64 @iswalpha(i32) #1

declare dso_local i64 @iswcntrl(i32) #1

declare dso_local i64 @iswdigit(i32) #1

declare dso_local i64 @iswprint(i32) #1

declare dso_local i64 @iswpunct(i32) #1

declare dso_local i64 @iswspace(i32) #1

declare dso_local i64 @iswxdigit(i32) #1

declare dso_local i64 @iswupper(i32) #1

declare dso_local i64 @iswlower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
