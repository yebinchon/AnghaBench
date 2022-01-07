; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fast486/extr_fpu.c_UnsignedDivMod128.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fast486/extr_fpu.c_UnsignedDivMod128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i32*, i32*)* @UnsignedDivMod128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @UnsignedDivMod128(i64 %0, i64 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %15, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i32*, i32** %11, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %10, align 8
  store i32 0, i32* %26, align 4
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %6, align 8
  br label %157

35:                                               ; preds = %29, %5
  %36 = load i64, i64* %15, align 8
  %37 = call i64 @CountLeadingZeros64(i64 %36)
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* %15, align 8
  %40 = shl i64 %39, %38
  store i64 %40, i64* %15, align 8
  br label %41

41:                                               ; preds = %96, %35
  %42 = load i64, i64* @TRUE, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %106

44:                                               ; preds = %41
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 63
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %15, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %44
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %15, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %60
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp uge i64 %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %64, %44
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %14, align 8
  %71 = icmp ult i64 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %17, align 4
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %13, align 8
  %75 = sub i64 %74, %73
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %12, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %12, align 8
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %68
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %13, align 8
  br label %84

84:                                               ; preds = %81, %68
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load i64, i64* %13, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %106

95:                                               ; preds = %90, %84
  br label %96

96:                                               ; preds = %95, %64, %60
  %97 = load i64, i64* %14, align 8
  %98 = lshr i64 %97, 1
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %15, align 8
  %100 = and i64 %99, 1
  %101 = shl i64 %100, 63
  %102 = load i64, i64* %14, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* %15, align 8
  %105 = lshr i64 %104, 1
  store i64 %105, i64* %15, align 8
  br label %41

106:                                              ; preds = %94, %41
  %107 = load i64, i64* %9, align 8
  %108 = call i64 @CountLeadingZeros64(i64 %107)
  store i64 %108, i64* %16, align 8
  %109 = load i64, i64* %15, align 8
  %110 = icmp ugt i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i64, i64* %15, align 8
  %113 = call i64 @CountLeadingZeros64(i64 %112)
  %114 = sub i64 64, %113
  %115 = load i64, i64* %16, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %16, align 8
  br label %122

117:                                              ; preds = %106
  %118 = load i64, i64* %14, align 8
  %119 = call i64 @CountLeadingZeros64(i64 %118)
  %120 = load i64, i64* %16, align 8
  %121 = sub i64 %120, %119
  store i64 %121, i64* %16, align 8
  br label %122

122:                                              ; preds = %117, %111
  %123 = load i64, i64* %16, align 8
  %124 = icmp uge i64 %123, 64
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %11, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %10, align 8
  store i32 0, i32* %129, align 4
  %130 = load i64, i64* %16, align 8
  %131 = sub i64 %130, 64
  store i64 %131, i64* %16, align 8
  br label %132

132:                                              ; preds = %125, %122
  %133 = load i64, i64* %16, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %132
  %136 = load i64, i64* %16, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %137, align 4
  %139 = trunc i64 %136 to i32
  %140 = shl i32 %138, %139
  store i32 %140, i32* %137, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i64, i64* %16, align 8
  %144 = sub i64 64, %143
  %145 = trunc i64 %144 to i32
  %146 = ashr i32 %142, %145
  %147 = load i32*, i32** %11, align 8
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 4
  %150 = load i64, i64* %16, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %151, align 4
  %153 = trunc i64 %150 to i32
  %154 = shl i32 %152, %153
  store i32 %154, i32* %151, align 4
  br label %155

155:                                              ; preds = %135, %132
  %156 = load i64, i64* %12, align 8
  store i64 %156, i64* %6, align 8
  br label %157

157:                                              ; preds = %155, %33
  %158 = load i64, i64* %6, align 8
  ret i64 %158
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @CountLeadingZeros64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
