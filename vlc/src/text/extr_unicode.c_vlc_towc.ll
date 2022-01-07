; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_unicode.c_vlc_towc.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_unicode.c_vlc_towc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vlc_towc(i8* %0, i32* noalias %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 244
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i64 -1, i64* %3, align 8
  br label %146

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, 255
  %27 = trunc i32 %26 to i8
  %28 = call i32 @clz(i8 zeroext %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %57 [
    i32 0, label %30
    i32 1, label %37
    i32 2, label %38
    i32 3, label %49
    i32 4, label %53
  ]

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %3, align 8
  br label %146

37:                                               ; preds = %24
  store i64 -1, i64* %3, align 8
  br label %146

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 194
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i64 -1, i64* %3, align 8
  br label %146

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 31
  %48 = shl i32 %47, 6
  store i32 %48, i32* %8, align 4
  br label %59

49:                                               ; preds = %24
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 15
  %52 = shl i32 %51, 12
  store i32 %52, i32* %8, align 4
  br label %59

53:                                               ; preds = %24
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 7
  %56 = shl i32 %55, 18
  store i32 %56, i32* %8, align 4
  br label %59

57:                                               ; preds = %24
  %58 = call i32 (...) @vlc_assert_unreachable()
  br label %59

59:                                               ; preds = %57, %53, %49, %45
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %141 [
    i32 4, label %61
    i32 3, label %85
    i32 2, label %125
  ]

61:                                               ; preds = %59
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 192
  %67 = icmp ne i32 %66, 128
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i64 -1, i64* %3, align 8
  br label %146

72:                                               ; preds = %61
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, 63
  %75 = shl i32 %74, 12
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp sge i32 %78, 1114112
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  store i64 -1, i64* %3, align 8
  br label %146

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %59, %84
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 192
  %91 = icmp ne i32 %90, 128
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i64 -1, i64* %3, align 8
  br label %146

96:                                               ; preds = %85
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 63
  %99 = shl i32 %98, 6
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp sge i32 %102, 55296
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 57344
  br label %107

107:                                              ; preds = %104, %96
  %108 = phi i1 [ false, %96 ], [ %106, %104 ]
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i64 -1, i64* %3, align 8
  br label %146

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = mul nsw i32 5, %115
  %117 = sub nsw i32 %116, 4
  %118 = shl i32 1, %117
  %119 = icmp ult i32 %114, %118
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  store i64 -1, i64* %3, align 8
  br label %146

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %59, %124
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %6, align 8
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = and i32 %129, 192
  %131 = icmp ne i32 %130, 128
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  store i64 -1, i64* %3, align 8
  br label %146

136:                                              ; preds = %125
  %137 = load i32, i32* %7, align 4
  %138 = and i32 %137, 63
  %139 = load i32, i32* %8, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %59, %136
  %142 = load i32, i32* %8, align 4
  %143 = load i32*, i32** %5, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %3, align 8
  br label %146

146:                                              ; preds = %141, %135, %123, %112, %95, %83, %71, %44, %37, %30, %23
  %147 = load i64, i64* %3, align 8
  ret i64 %147
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clz(i8 zeroext) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
