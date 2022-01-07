; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_Indic_process_next_syllable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_Indic_process_next_syllable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lex_Vowel = common dso_local global i64 0, align 8
@lex_Ra = common dso_local global i64 0, align 8
@lex_Halant = common dso_local global i64 0, align 8
@lex_NBSP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32, i64 (i32)*)* @Indic_process_next_syllable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Indic_process_next_syllable(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i64 (i32)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64 (i32)*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 (i32)* %5, i64 (i32)** %13, align 8
  %14 = load i64 (i32)*, i64 (i32)** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %12, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 %14(i32 %19)
  %21 = load i64, i64* @lex_Vowel, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %6
  %24 = load i32, i32* %12, align 4
  %25 = load i32*, i32** %11, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %12, align 4
  %30 = add i32 %29, 1
  %31 = load i64 (i32)*, i64 (i32)** %13, align 8
  %32 = call i32 @parse_vowel_syllable(i32* %26, i32 %27, i32 %28, i32 %30, i64 (i32)* %31)
  store i32 %32, i32* %7, align 4
  br label %168

33:                                               ; preds = %6
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %12, align 4
  %36 = add i32 %35, 3
  %37 = icmp ugt i32 %34, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %33
  %39 = load i64 (i32)*, i64 (i32)** %13, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 %39(i32 %44)
  %46 = load i64, i64* @lex_Ra, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %38
  %49 = load i64 (i32)*, i64 (i32)** %13, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = add i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 %49(i32 %55)
  %57 = load i64, i64* @lex_Halant, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %48
  %60 = load i64 (i32)*, i64 (i32)** %13, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, 2
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i64 %60(i32 %66)
  %68 = load i64, i64* @lex_Vowel, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %59
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %71, 2
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add i32 %77, 3
  %79 = load i64 (i32)*, i64 (i32)** %13, align 8
  %80 = call i32 @parse_vowel_syllable(i32* %74, i32 %75, i32 %76, i32 %78, i64 (i32)* %79)
  store i32 %80, i32* %7, align 4
  br label %168

81:                                               ; preds = %59, %48, %38, %33
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %81
  %86 = load i64 (i32)*, i64 (i32)** %13, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %12, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i64 %86(i32 %91)
  %93 = load i64, i64* @lex_NBSP, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %85
  %96 = load i32, i32* %12, align 4
  %97 = load i32*, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add i32 %101, 1
  %103 = load i64 (i32)*, i64 (i32)** %13, align 8
  %104 = call i32 @parse_vowel_syllable(i32* %98, i32 %99, i32 %100, i32 %102, i64 (i32)* %103)
  store i32 %104, i32* %7, align 4
  br label %168

105:                                              ; preds = %85, %81
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %157

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %12, align 4
  %112 = add i32 %111, 3
  %113 = icmp ugt i32 %110, %112
  br i1 %113, label %114, label %157

114:                                              ; preds = %109
  %115 = load i64 (i32)*, i64 (i32)** %13, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %12, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i64 %115(i32 %120)
  %122 = load i64, i64* @lex_Ra, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %157

124:                                              ; preds = %114
  %125 = load i64 (i32)*, i64 (i32)** %13, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %12, align 4
  %128 = add i32 %127, 1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i64 %125(i32 %131)
  %133 = load i64, i64* @lex_Halant, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %157

135:                                              ; preds = %124
  %136 = load i64 (i32)*, i64 (i32)** %13, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %12, align 4
  %139 = add i32 %138, 2
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i64 %136(i32 %142)
  %144 = load i64, i64* @lex_NBSP, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %135
  %147 = load i32, i32* %12, align 4
  %148 = add i32 %147, 2
  %149 = load i32*, i32** %11, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %12, align 4
  %154 = add i32 %153, 3
  %155 = load i64 (i32)*, i64 (i32)** %13, align 8
  %156 = call i32 @parse_vowel_syllable(i32* %150, i32 %151, i32 %152, i32 %154, i64 (i32)* %155)
  store i32 %156, i32* %7, align 4
  br label %168

157:                                              ; preds = %135, %124, %114, %109, %105
  br label %158

158:                                              ; preds = %157
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load i64 (i32)*, i64 (i32)** %13, align 8
  %167 = call i32 @parse_consonant_syllable(i32* %161, i32 %162, i32 %163, i32* %164, i32 %165, i64 (i32)* %166)
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %160, %146, %95, %70, %23
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local i32 @parse_vowel_syllable(i32*, i32, i32, i32, i64 (i32)*) #1

declare dso_local i32 @parse_consonant_syllable(i32*, i32, i32, i32*, i32, i64 (i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
