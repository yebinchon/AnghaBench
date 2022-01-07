; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/extr_c_locale_dummyc_locale_dummy.c__Locale_init.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/extr_c_locale_dummyc_locale_dummy.c__Locale_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_Locale_ALPHA = common dso_local global i32 0, align 4
@ctable = common dso_local global i32* null, align 8
@_Locale_CNTRL = common dso_local global i32 0, align 4
@_Locale_DIGIT = common dso_local global i32 0, align 4
@_Locale_PRINT = common dso_local global i32 0, align 4
@_Locale_PUNCT = common dso_local global i32 0, align 4
@_Locale_SPACE = common dso_local global i32 0, align 4
@_Locale_XDIGIT = common dso_local global i32 0, align 4
@_Locale_UPPER = common dso_local global i32 0, align 4
@_Locale_LOWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Locale_init() #0 {
  %1 = alloca i8, align 1
  store i8 0, i8* %1, align 1
  br label %2

2:                                                ; preds = %116, %0
  %3 = load i8, i8* %1, align 1
  %4 = call i64 @isalpha(i8 signext %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i32, i32* @_Locale_ALPHA, align 4
  %8 = load i32*, i32** @ctable, align 8
  %9 = load i8, i8* %1, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %7
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %6, %2
  %15 = load i8, i8* %1, align 1
  %16 = call i64 @iscntrl(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* @_Locale_CNTRL, align 4
  %20 = load i32*, i32** @ctable, align 8
  %21 = load i8, i8* %1, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %19
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %18, %14
  %27 = load i8, i8* %1, align 1
  %28 = call i64 @isdigit(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* @_Locale_DIGIT, align 4
  %32 = load i32*, i32** @ctable, align 8
  %33 = load i8, i8* %1, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %26
  %39 = load i8, i8* %1, align 1
  %40 = call i64 @isprint(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32, i32* @_Locale_PRINT, align 4
  %44 = load i32*, i32** @ctable, align 8
  %45 = load i8, i8* %1, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %42, %38
  %51 = load i8, i8* %1, align 1
  %52 = call i64 @ispunct(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* @_Locale_PUNCT, align 4
  %56 = load i32*, i32** @ctable, align 8
  %57 = load i8, i8* %1, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %55
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %54, %50
  %63 = load i8, i8* %1, align 1
  %64 = call i64 @isspace(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* @_Locale_SPACE, align 4
  %68 = load i32*, i32** @ctable, align 8
  %69 = load i8, i8* %1, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %66, %62
  %75 = load i8, i8* %1, align 1
  %76 = call i64 @isxdigit(i8 signext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32, i32* @_Locale_XDIGIT, align 4
  %80 = load i32*, i32** @ctable, align 8
  %81 = load i8, i8* %1, align 1
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %79
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %78, %74
  %87 = load i8, i8* %1, align 1
  %88 = call i64 @isupper(i8 signext %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32, i32* @_Locale_UPPER, align 4
  %92 = load i32*, i32** @ctable, align 8
  %93 = load i8, i8* %1, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %91
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %90, %86
  %99 = load i8, i8* %1, align 1
  %100 = call i64 @islower(i8 signext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32, i32* @_Locale_LOWER, align 4
  %104 = load i32*, i32** @ctable, align 8
  %105 = load i8, i8* %1, align 1
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %102, %98
  %111 = load i8, i8* %1, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 127
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %119

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115
  %117 = load i8, i8* %1, align 1
  %118 = add i8 %117, 1
  store i8 %118, i8* %1, align 1
  br label %2

119:                                              ; preds = %114
  %120 = load i32*, i32** @ctable, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 128
  %122 = call i32 @memset(i32* %121, i32 0, i32 512)
  ret void
}

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @iscntrl(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i64 @ispunct(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
