; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/video/extr_svga.c_VgaTranslateByteForWriting.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/video/extr_svga.c_VgaTranslateByteForWriting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VgaGcRegisters = common dso_local global i32* null, align 8
@VGA_GC_MODE_REG = common dso_local global i64 0, align 8
@VGA_GC_BITMASK_REG = common dso_local global i64 0, align 8
@VgaLatchRegisters = common dso_local global i32* null, align 8
@VGA_GC_ROTATE_REG = common dso_local global i64 0, align 8
@VGA_GC_ENABLE_RESET_REG = common dso_local global i64 0, align 8
@VGA_GC_RESET_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @VgaTranslateByteForWriting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VgaTranslateByteForWriting(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** @VgaGcRegisters, align 8
  %11 = load i64, i64* @VGA_GC_MODE_REG, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 3
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** @VgaGcRegisters, align 8
  %16 = load i64, i64* @VGA_GC_BITMASK_REG, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32*, i32** @VgaLatchRegisters, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %150

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i32*, i32** @VgaGcRegisters, align 8
  %32 = load i64, i64* @VGA_GC_ROTATE_REG, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 7
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 8, %40
  %42 = shl i32 %39, %41
  %43 = or i32 %38, %42
  %44 = call i32 @LOBYTE(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %27
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 255, i32 0
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %30
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load i32*, i32** @VgaGcRegisters, align 8
  %58 = load i64, i64* @VGA_GC_ENABLE_RESET_REG, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load i32*, i32** @VgaGcRegisters, align 8
  %67 = load i64, i64* @VGA_GC_RESET_REG, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = shl i32 1, %70
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 255, i32 0
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %65, %56
  br label %77

77:                                               ; preds = %76, %53
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 3
  br i1 %79, label %80, label %122

80:                                               ; preds = %77
  %81 = load i32*, i32** @VgaGcRegisters, align 8
  %82 = load i64, i64* @VGA_GC_ROTATE_REG, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 3
  %86 = and i32 %85, 3
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = load i32*, i32** @VgaLatchRegisters, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %4, align 4
  br label %121

97:                                               ; preds = %80
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i32*, i32** @VgaLatchRegisters, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  br label %120

108:                                              ; preds = %97
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, 3
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32*, i32** @VgaLatchRegisters, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %4, align 4
  %118 = xor i32 %117, %116
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %111, %108
  br label %120

120:                                              ; preds = %119, %100
  br label %121

121:                                              ; preds = %120, %89
  br label %136

122:                                              ; preds = %77
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %7, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load i32*, i32** @VgaGcRegisters, align 8
  %127 = load i64, i64* @VGA_GC_RESET_REG, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %5, align 4
  %131 = shl i32 1, %130
  %132 = and i32 %129, %131
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 255, i32 0
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %122, %121
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* %7, align 4
  %139 = and i32 %137, %138
  %140 = load i32*, i32** @VgaLatchRegisters, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %7, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %144, %146
  %148 = or i32 %139, %147
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %136, %21
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @LOBYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
