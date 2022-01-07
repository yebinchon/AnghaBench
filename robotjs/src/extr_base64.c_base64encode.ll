; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_base64.c_base64encode.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_base64.c_base64encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b64_encode_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @base64encode(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %13, 3
  %15 = and i64 %14, -4
  %16 = mul i64 %15, 4
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = add i64 %17, 1
  %19 = call i32* @malloc(i64 %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %151

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* %6, align 8
  %29 = icmp ugt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %32

32:                                               ; preds = %114, %23
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 1
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %117

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = urem i64 %38, 3
  switch i64 %39, label %113 [
    i64 0, label %40
    i64 1, label %76
    i64 2, label %99
  ]

40:                                               ; preds = %37
  %41 = load i32*, i32** @b64_encode_table, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  %53 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %53, align 4
  %54 = load i32*, i32** @b64_encode_table, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 3
  %60 = shl i32 %59, 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 240
  %67 = ashr i32 %66, 4
  %68 = or i32 %60, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %54, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = load i64, i64* %9, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %9, align 8
  %75 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %71, i32* %75, align 4
  br label %113

76:                                               ; preds = %37
  %77 = load i32*, i32** @b64_encode_table, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 15
  %83 = shl i32 %82, 2
  %84 = load i32*, i32** %5, align 8
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 192
  %90 = ashr i32 %89, 6
  %91 = or i32 %83, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %77, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %9, align 8
  %98 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %94, i32* %98, align 4
  br label %113

99:                                               ; preds = %37
  %100 = load i32*, i32** @b64_encode_table, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 63
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %100, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %9, align 8
  %112 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %37, %99, %76, %40
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %8, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %8, align 8
  br label %32

117:                                              ; preds = %32
  %118 = load i64, i64* %9, align 8
  %119 = urem i64 %118, 4
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, 3
  %124 = and i64 %123, -4
  store i64 %124, i64* %12, align 8
  br label %125

125:                                              ; preds = %130, %121
  %126 = load i32*, i32** %11, align 8
  %127 = load i64, i64* %9, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %9, align 8
  %129 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 61, i32* %129, align 4
  br label %130

130:                                              ; preds = %125
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* %12, align 8
  %133 = icmp ult i64 %131, %132
  br i1 %133, label %125, label %134

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %134, %117
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* %10, align 8
  %138 = icmp ule i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load i64*, i64** %7, align 8
  %142 = icmp ne i64* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load i64, i64* %9, align 8
  %145 = load i64*, i64** %7, align 8
  store i64 %144, i64* %145, align 8
  br label %146

146:                                              ; preds = %143, %135
  %147 = load i32*, i32** %11, align 8
  %148 = load i64, i64* %9, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32 0, i32* %149, align 4
  %150 = load i32*, i32** %11, align 8
  store i32* %150, i32** %4, align 8
  br label %151

151:                                              ; preds = %146, %22
  %152 = load i32*, i32** %4, align 8
  ret i32* %152
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
