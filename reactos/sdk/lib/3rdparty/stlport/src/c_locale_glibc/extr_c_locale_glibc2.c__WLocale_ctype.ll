; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__WLocale_ctype.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__WLocale_ctype.c"
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
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load %struct._Locale_ctype*, %struct._Locale_ctype** %4, align 8
  %15 = ptrtoint %struct._Locale_ctype* %14 to i32
  %16 = call i64 @iswalpha_l(i32 %13, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @_Locale_ALPHA, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %12, %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @_Locale_CNTRL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load %struct._Locale_ctype*, %struct._Locale_ctype** %4, align 8
  %30 = ptrtoint %struct._Locale_ctype* %29 to i32
  %31 = call i64 @iswcntrl_l(i32 %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @_Locale_CNTRL, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %27, %22
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @_Locale_DIGIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load %struct._Locale_ctype*, %struct._Locale_ctype** %4, align 8
  %45 = ptrtoint %struct._Locale_ctype* %44 to i32
  %46 = call i64 @iswdigit_l(i32 %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @_Locale_DIGIT, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %42, %37
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @_Locale_PRINT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load %struct._Locale_ctype*, %struct._Locale_ctype** %4, align 8
  %60 = ptrtoint %struct._Locale_ctype* %59 to i32
  %61 = call i64 @iswprint_l(i32 %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @_Locale_PRINT, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %57, %52
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @_Locale_PUNCT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = load %struct._Locale_ctype*, %struct._Locale_ctype** %4, align 8
  %75 = ptrtoint %struct._Locale_ctype* %74 to i32
  %76 = call i64 @iswpunct_l(i32 %73, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @_Locale_PUNCT, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %72, %67
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @_Locale_SPACE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load i32, i32* %5, align 4
  %89 = load %struct._Locale_ctype*, %struct._Locale_ctype** %4, align 8
  %90 = ptrtoint %struct._Locale_ctype* %89 to i32
  %91 = call i64 @iswspace_l(i32 %88, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* @_Locale_SPACE, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %93, %87, %82
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @_Locale_XDIGIT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load i32, i32* %5, align 4
  %104 = load %struct._Locale_ctype*, %struct._Locale_ctype** %4, align 8
  %105 = ptrtoint %struct._Locale_ctype* %104 to i32
  %106 = call i64 @iswxdigit_l(i32 %103, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @_Locale_XDIGIT, align 4
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %108, %102, %97
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @_Locale_UPPER, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load i32, i32* %5, align 4
  %119 = load %struct._Locale_ctype*, %struct._Locale_ctype** %4, align 8
  %120 = ptrtoint %struct._Locale_ctype* %119 to i32
  %121 = call i64 @iswupper_l(i32 %118, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* @_Locale_UPPER, align 4
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %123, %117, %112
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @_Locale_LOWER, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load i32, i32* %5, align 4
  %134 = load %struct._Locale_ctype*, %struct._Locale_ctype** %4, align 8
  %135 = ptrtoint %struct._Locale_ctype* %134 to i32
  %136 = call i64 @iswlower_l(i32 %133, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load i32, i32* @_Locale_LOWER, align 4
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %138, %132, %127
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i64 @iswalpha_l(i32, i32) #1

declare dso_local i64 @iswcntrl_l(i32, i32) #1

declare dso_local i64 @iswdigit_l(i32, i32) #1

declare dso_local i64 @iswprint_l(i32, i32) #1

declare dso_local i64 @iswpunct_l(i32, i32) #1

declare dso_local i64 @iswspace_l(i32, i32) #1

declare dso_local i64 @iswxdigit_l(i32, i32) #1

declare dso_local i64 @iswupper_l(i32, i32) #1

declare dso_local i64 @iswlower_l(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
