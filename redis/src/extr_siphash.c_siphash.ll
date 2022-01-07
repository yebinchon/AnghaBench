; ModuleID = '/home/carl/AnghaBench/redis/src/extr_siphash.c_siphash.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_siphash.c_siphash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIPROUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siphash(i32* %0, i64 %1, i32* %2) #0 {
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
  %55 = call i32 @U8TO64_LE(i32* %54)
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
  switch i32 %67, label %117 [
    i32 7, label %68
    i32 6, label %75
    i32 5, label %82
    i32 4, label %89
    i32 3, label %96
    i32 2, label %103
    i32 1, label %110
    i32 0, label %116
  ]

68:                                               ; preds = %66
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 48
  %73 = load i32, i32* %18, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %18, align 4
  br label %75

75:                                               ; preds = %66, %68
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 40
  %80 = load i32, i32* %18, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %18, align 4
  br label %82

82:                                               ; preds = %66, %75
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 32
  %87 = load i32, i32* %18, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %66, %82
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 24
  %94 = load i32, i32* %18, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %66, %89
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 16
  %101 = load i32, i32* %18, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %66, %96
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 8
  %108 = load i32, i32* %18, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %18, align 4
  br label %110

110:                                              ; preds = %66, %103
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %18, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %18, align 4
  br label %117

116:                                              ; preds = %66
  br label %117

117:                                              ; preds = %66, %116, %110
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %12, align 4
  %120 = xor i32 %119, %118
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* @SIPROUND, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %9, align 4
  %124 = xor i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %11, align 4
  %126 = xor i32 %125, 255
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* @SIPROUND, align 4
  %128 = load i32, i32* @SIPROUND, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = xor i32 %129, %130
  %132 = load i32, i32* %11, align 4
  %133 = xor i32 %131, %132
  %134 = load i32, i32* %12, align 4
  %135 = xor i32 %133, %134
  store i32 %135, i32* %18, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %18, align 4
  %138 = call i32 @U64TO8_LE(i32* %136, i32 %137)
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @U8TO64_LE(i32*) #1

declare dso_local i32 @U64TO8_LE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
