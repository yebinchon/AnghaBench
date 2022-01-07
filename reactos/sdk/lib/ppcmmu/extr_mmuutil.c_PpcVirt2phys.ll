; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuutil.c_PpcVirt2phys.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuutil.c_PpcVirt2phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PpcVirt2phys(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %26 = call i32 (...) @GetMSR()
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 32, i32 16
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %155

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 28
  %38 = call i32 @GetSR(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 268435455
  store i32 %40, i32* %22, align 4
  %41 = load i32, i32* %22, align 4
  %42 = ashr i32 %41, 4
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %22, align 4
  %44 = shl i32 %43, 28
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 268435455
  %47 = or i32 %44, %46
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, -2147483648
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %3, align 4
  br label %157

53:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @GetBat(i32 %58, i32 %59, i32* %9, i32* %10)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @BatHit(i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @BatTranslate(i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %157

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %54

75:                                               ; preds = %54
  %76 = call i32 (...) @GetSDR1()
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, -65536
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 511
  %81 = shl i32 %80, 10
  %82 = or i32 %81, 1023
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %22, align 4
  %84 = and i32 %83, 524287
  %85 = load i32, i32* %15, align 4
  %86 = ashr i32 %85, 12
  %87 = and i32 %86, 65535
  %88 = xor i32 %84, %87
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  store i32 0, i32* %23, align 4
  br label %91

91:                                               ; preds = %149, %75
  %92 = load i32, i32* %23, align 4
  %93 = icmp slt i32 %92, 128
  br i1 %93, label %94, label %154

94:                                               ; preds = %91
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %17, align 4
  %97 = and i32 %95, %96
  %98 = mul nsw i32 %97, 64
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, i32* %21, align 4
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %145, %94
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 8
  br i1 %103, label %104, label %148

104:                                              ; preds = %101
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %8, align 4
  %107 = mul nsw i32 %106, 8
  %108 = add nsw i32 %105, %107
  %109 = call i32 @GetPhys(i32 %108)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %8, align 4
  %112 = mul nsw i32 %111, 8
  %113 = add nsw i32 %110, %112
  %114 = add nsw i32 %113, 4
  %115 = call i32 @GetPhys(i32 %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %19, align 4
  %117 = ashr i32 %116, 7
  %118 = and i32 %117, 16777215
  store i32 %118, i32* %24, align 4
  %119 = load i32, i32* %19, align 4
  %120 = and i32 %119, 63
  store i32 %120, i32* %25, align 4
  %121 = load i32, i32* %19, align 4
  %122 = and i32 %121, 64
  %123 = load i32, i32* %23, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %104
  br label %145

126:                                              ; preds = %104
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* %22, align 4
  %129 = and i32 %128, 16777215
  %130 = icmp ne i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %145

132:                                              ; preds = %126
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* %4, align 4
  %135 = ashr i32 %134, 22
  %136 = and i32 %135, 63
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %145

139:                                              ; preds = %132
  %140 = load i32, i32* %20, align 4
  %141 = and i32 %140, -4096
  %142 = load i32, i32* %4, align 4
  %143 = and i32 %142, 4095
  %144 = or i32 %141, %143
  store i32 %144, i32* %3, align 4
  br label %157

145:                                              ; preds = %138, %131, %125
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %101

148:                                              ; preds = %101
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %23, align 4
  %151 = add nsw i32 %150, 64
  store i32 %151, i32* %23, align 4
  %152 = load i32, i32* %17, align 4
  %153 = xor i32 %152, 524287
  store i32 %153, i32* %17, align 4
  br label %91

154:                                              ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %157

155:                                              ; preds = %2
  %156 = load i32, i32* %4, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %154, %139, %66, %51
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @GetMSR(...) #1

declare dso_local i32 @GetSR(i32) #1

declare dso_local i32 @GetBat(i32, i32, i32*, i32*) #1

declare dso_local i64 @BatHit(i32, i32, i32) #1

declare dso_local i32 @BatTranslate(i32, i32, i32) #1

declare dso_local i32 @GetSDR1(...) #1

declare dso_local i32 @GetPhys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
