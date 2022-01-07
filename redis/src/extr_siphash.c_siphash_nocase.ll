; ModuleID = '/home/carl/AnghaBench/redis/src/extr_siphash.c_siphash_nocase.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_siphash.c_siphash_nocase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIPROUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siphash_nocase(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* %7, i32** %8, align 8
  store i32 1886610805, i32* %9, align 4
  store i32 1852075885, i32* %10, align 4
  store i32 1852142177, i32* %11, align 4
  store i32 2037671283, i32* %12, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @U8TO64_LE(i32* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 8
  %23 = call i32 @U8TO64_LE(i32* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i64, i64* %5, align 8
  %28 = urem i64 %27, 4
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32* %30, i32** %16, align 8
  %31 = load i64, i64* %5, align 8
  %32 = and i64 %31, 7
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %17, align 4
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 56
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %12, align 4
  %39 = xor i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = xor i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %10, align 4
  %45 = xor i32 %44, %43
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %9, align 4
  %48 = xor i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %63, %3
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = icmp ne i32* %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @U8TO64_LE_NOCASE(i32* %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %12, align 4
  %58 = xor i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* @SIPROUND, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %9, align 4
  %62 = xor i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %53
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  store i32* %65, i32** %4, align 8
  br label %49

66:                                               ; preds = %49
  %67 = load i32, i32* %17, align 4
  switch i32 %67, label %124 [
    i32 7, label %68
    i32 6, label %76
    i32 5, label %84
    i32 4, label %92
    i32 3, label %100
    i32 2, label %108
    i32 1, label %116
    i32 0, label %123
  ]

68:                                               ; preds = %66
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @siptlw(i32 %71)
  %73 = shl i32 %72, 48
  %74 = load i32, i32* %18, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %66, %68
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @siptlw(i32 %79)
  %81 = shl i32 %80, 40
  %82 = load i32, i32* %18, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %18, align 4
  br label %84

84:                                               ; preds = %66, %76
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @siptlw(i32 %87)
  %89 = shl i32 %88, 32
  %90 = load i32, i32* %18, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %18, align 4
  br label %92

92:                                               ; preds = %66, %84
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @siptlw(i32 %95)
  %97 = shl i32 %96, 24
  %98 = load i32, i32* %18, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %66, %92
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @siptlw(i32 %103)
  %105 = shl i32 %104, 16
  %106 = load i32, i32* %18, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %18, align 4
  br label %108

108:                                              ; preds = %66, %100
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @siptlw(i32 %111)
  %113 = shl i32 %112, 8
  %114 = load i32, i32* %18, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %18, align 4
  br label %116

116:                                              ; preds = %66, %108
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @siptlw(i32 %119)
  %121 = load i32, i32* %18, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %18, align 4
  br label %124

123:                                              ; preds = %66
  br label %124

124:                                              ; preds = %66, %123, %116
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %12, align 4
  %127 = xor i32 %126, %125
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* @SIPROUND, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %9, align 4
  %131 = xor i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %11, align 4
  %133 = xor i32 %132, 255
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* @SIPROUND, align 4
  %135 = load i32, i32* @SIPROUND, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = xor i32 %136, %137
  %139 = load i32, i32* %11, align 4
  %140 = xor i32 %138, %139
  %141 = load i32, i32* %12, align 4
  %142 = xor i32 %140, %141
  store i32 %142, i32* %18, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @U64TO8_LE(i32* %143, i32 %144)
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @U8TO64_LE(i32*) #1

declare dso_local i32 @U8TO64_LE_NOCASE(i32*) #1

declare dso_local i32 @siptlw(i32) #1

declare dso_local i32 @U64TO8_LE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
