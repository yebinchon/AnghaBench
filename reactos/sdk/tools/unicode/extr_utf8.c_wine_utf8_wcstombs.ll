; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_utf8.c_wine_utf8_wcstombs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_utf8.c_wine_utf8_wcstombs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WC_ERR_INVALID_CHARS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wine_utf8_wcstombs(i32 %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @get_length_wcs_utf8(i32 %18, i32* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %161

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %152, %22
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %157

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 128
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %12, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 -1, i32* %6, align 4
  br label %161

37:                                               ; preds = %32
  %38 = load i32, i32* %13, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  store i8 %39, i8* %40, align 1
  br label %152

42:                                               ; preds = %27
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 2048
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 %46, 2
  store i32 %47, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, i32* %6, align 4
  br label %161

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  %52 = and i32 %51, 63
  %53 = or i32 128, %52
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %54, i8* %56, align 1
  %57 = load i32, i32* %13, align 4
  %58 = ashr i32 %57, 6
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = or i32 192, %59
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 %61, i8* %63, align 1
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %10, align 8
  br label %152

66:                                               ; preds = %42
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @get_surrogate_value(i32* %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @WC_ERR_INVALID_CHARS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 -2, i32* %6, align 4
  br label %161

77:                                               ; preds = %71
  br label %152

78:                                               ; preds = %66
  %79 = load i32, i32* %14, align 4
  %80 = icmp ult i32 %79, 65536
  br i1 %80, label %81, label %110

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 %82, 3
  store i32 %83, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 -1, i32* %6, align 4
  br label %161

86:                                               ; preds = %81
  %87 = load i32, i32* %14, align 4
  %88 = and i32 %87, 63
  %89 = or i32 128, %88
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  store i8 %90, i8* %92, align 1
  %93 = load i32, i32* %14, align 4
  %94 = lshr i32 %93, 6
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = and i32 %95, 63
  %97 = or i32 128, %96
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8 %98, i8* %100, align 1
  %101 = load i32, i32* %14, align 4
  %102 = lshr i32 %101, 6
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = or i32 224, %103
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  store i8 %105, i8* %107, align 1
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 3
  store i8* %109, i8** %10, align 8
  br label %151

110:                                              ; preds = %78
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %111, 4
  store i32 %112, i32* %12, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 -1, i32* %6, align 4
  br label %161

115:                                              ; preds = %110
  %116 = load i32, i32* %14, align 4
  %117 = and i32 %116, 63
  %118 = or i32 128, %117
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 3
  store i8 %119, i8* %121, align 1
  %122 = load i32, i32* %14, align 4
  %123 = lshr i32 %122, 6
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = and i32 %124, 63
  %126 = or i32 128, %125
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %10, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  store i8 %127, i8* %129, align 1
  %130 = load i32, i32* %14, align 4
  %131 = lshr i32 %130, 6
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = and i32 %132, 63
  %134 = or i32 128, %133
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8 %135, i8* %137, align 1
  %138 = load i32, i32* %14, align 4
  %139 = lshr i32 %138, 6
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = or i32 240, %140
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %10, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  store i8 %142, i8* %144, align 1
  %145 = load i8*, i8** %10, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 4
  store i8* %146, i8** %10, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %8, align 8
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %115, %86
  br label %152

152:                                              ; preds = %151, %77, %50, %37
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %9, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %8, align 8
  br label %24

157:                                              ; preds = %24
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = sub nsw i32 %158, %159
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %157, %114, %85, %76, %49, %36, %17
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @get_length_wcs_utf8(i32, i32*, i32) #1

declare dso_local i32 @get_surrogate_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
