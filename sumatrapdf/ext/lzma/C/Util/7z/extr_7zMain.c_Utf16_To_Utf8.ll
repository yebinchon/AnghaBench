; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/Util/7z/extr_7zMain.c_Utf16_To_Utf8.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/Util/7z/extr_7zMain.c_Utf16_To_Utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@True = common dso_local global i32 0, align 4
@kUtf8Limits = common dso_local global i64* null, align 8
@False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32*, i64)* @Utf16_To_Utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Utf16_To_Utf8(i8* %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %138, %40, %4
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i64, i64* %10, align 8
  %21 = load i64*, i64** %7, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i32, i32* @True, align 4
  store i32 %22, i32* %5, align 4
  br label %143

23:                                               ; preds = %15
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %11, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %11, align 8
  %27 = getelementptr inbounds i32, i32* %24, i64 %25
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 128
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 %36, i8* %39, align 1
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %10, align 8
  br label %15

43:                                               ; preds = %23
  %44 = load i32, i32* %13, align 4
  %45 = icmp sge i32 %44, 55296
  br i1 %45, label %46, label %77

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 57344
  br i1 %48, label %49, label %77

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = icmp sge i32 %50, 56320
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %49
  br label %139

57:                                               ; preds = %52
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %11, align 8
  %61 = getelementptr inbounds i32, i32* %58, i64 %59
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 56320
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %14, align 4
  %67 = icmp sge i32 %66, 57344
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %57
  br label %139

69:                                               ; preds = %65
  %70 = load i32, i32* %13, align 4
  %71 = sub nsw i32 %70, 55296
  %72 = shl i32 %71, 10
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %73, 56320
  %75 = or i32 %72, %74
  %76 = add nsw i32 %75, 65536
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %69, %46, %43
  store i32 1, i32* %12, align 4
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i32, i32* %12, align 4
  %80 = icmp ult i32 %79, 5
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = mul i32 %83, 5
  %85 = add i32 %84, 6
  %86 = shl i32 1, %85
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %93

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %78

93:                                               ; preds = %88, %78
  %94 = load i8*, i8** %6, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load i64*, i64** @kUtf8Limits, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sub i32 %98, 1
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %12, align 4
  %105 = mul i32 6, %104
  %106 = ashr i32 %103, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %102, %107
  %109 = trunc i64 %108 to i8
  %110 = load i8*, i8** %6, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8 %109, i8* %112, align 1
  br label %113

113:                                              ; preds = %96, %93
  %114 = load i64, i64* %10, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %10, align 8
  br label %116

116:                                              ; preds = %135, %113
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %117, -1
  store i32 %118, i32* %12, align 4
  %119 = load i8*, i8** %6, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %12, align 4
  %124 = mul i32 6, %123
  %125 = ashr i32 %122, %124
  %126 = and i32 %125, 63
  %127 = add nsw i32 128, %126
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %6, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8 %128, i8* %131, align 1
  br label %132

132:                                              ; preds = %121, %116
  %133 = load i64, i64* %10, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %10, align 8
  br label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %116, label %138

138:                                              ; preds = %135
  br label %15

139:                                              ; preds = %68, %56
  %140 = load i64, i64* %10, align 8
  %141 = load i64*, i64** %7, align 8
  store i64 %140, i64* %141, align 8
  %142 = load i32, i32* @False, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %139, %19
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
