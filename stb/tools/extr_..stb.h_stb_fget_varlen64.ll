; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fget_varlen64.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fget_varlen64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_fget_varlen64(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @stb_fgetc(i32* %5)
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %4, align 1
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sge i32 %9, 128
  br i1 %10, label %11, label %119

11:                                               ; preds = %1
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sge i32 %13, 192
  br i1 %14, label %15, label %109

15:                                               ; preds = %11
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sge i32 %17, 224
  br i1 %18, label %19, label %98

19:                                               ; preds = %15
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp sge i32 %21, 240
  br i1 %22, label %23, label %87

23:                                               ; preds = %19
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp sge i32 %25, 248
  br i1 %26, label %27, label %76

27:                                               ; preds = %23
  %28 = load i8, i8* %4, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sge i32 %29, 252
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load i8, i8* %4, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp sge i32 %33, 254
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i8, i8* %4, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sge i32 %37, 255
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @stb_fgetc(i32* %40)
  %42 = shl i32 %41, 56
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %35
  %44 = load i8, i8* %4, align 1
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %45, 254
  %47 = shl i32 %46, 56
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @stb_fgetc(i32* %49)
  %51 = shl i32 %50, 48
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %31
  %55 = load i8, i8* %4, align 1
  %56 = zext i8 %55 to i32
  %57 = sub nsw i32 %56, 252
  %58 = shl i32 %57, 48
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @stb_fgetc(i32* %60)
  %62 = shl i32 %61, 40
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %70

65:                                               ; preds = %27
  %66 = load i8, i8* %4, align 1
  %67 = zext i8 %66 to i32
  %68 = sub nsw i32 %67, 248
  %69 = shl i32 %68, 40
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %59
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @stb_fgetc(i32* %71)
  %73 = shl i32 %72, 32
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  br label %81

76:                                               ; preds = %23
  %77 = load i8, i8* %4, align 1
  %78 = zext i8 %77 to i32
  %79 = sub nsw i32 %78, 240
  %80 = shl i32 %79, 32
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %70
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @stb_fgetc(i32* %82)
  %84 = shl i32 %83, 24
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  br label %92

87:                                               ; preds = %19
  %88 = load i8, i8* %4, align 1
  %89 = zext i8 %88 to i32
  %90 = sub nsw i32 %89, 224
  %91 = shl i32 %90, 24
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %81
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @stb_fgetc(i32* %93)
  %95 = shl i32 %94, 16
  %96 = load i32, i32* %3, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %3, align 4
  br label %103

98:                                               ; preds = %15
  %99 = load i8, i8* %4, align 1
  %100 = zext i8 %99 to i32
  %101 = sub nsw i32 %100, 192
  %102 = shl i32 %101, 16
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %98, %92
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @stb_fgetc(i32* %104)
  %106 = shl i32 %105, 8
  %107 = load i32, i32* %3, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %3, align 4
  br label %114

109:                                              ; preds = %11
  %110 = load i8, i8* %4, align 1
  %111 = zext i8 %110 to i32
  %112 = sub nsw i32 %111, 128
  %113 = shl i32 %112, 8
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %109, %103
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @stb_fgetc(i32* %115)
  %117 = load i32, i32* %3, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %3, align 4
  br label %122

119:                                              ; preds = %1
  %120 = load i8, i8* %4, align 1
  %121 = zext i8 %120 to i32
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32, i32* %3, align 4
  %124 = and i32 %123, 1
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %3, align 4
  %128 = ashr i32 %127, 1
  %129 = xor i32 %128, -1
  br label %133

130:                                              ; preds = %122
  %131 = load i32, i32* %3, align 4
  %132 = ashr i32 %131, 1
  br label %133

133:                                              ; preds = %130, %126
  %134 = phi i32 [ %129, %126 ], [ %132, %130 ]
  ret i32 %134
}

declare dso_local i32 @stb_fgetc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
