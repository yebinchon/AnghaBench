; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_fz_add_stext_char.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_fz_add_stext_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FZ_STEXT_PRESERVE_LIGATURES = common dso_local global i32 0, align 4
@FZ_STEXT_PRESERVE_WHITESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32*, i32, i32, i32, float, i32)* @fz_add_stext_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_add_stext_char(i32* %0, %struct.TYPE_4__* %1, i32* %2, i32 %3, i32 %4, i32 %5, float %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  br label %153

20:                                               ; preds = %8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FZ_STEXT_PRESERVE_LIGATURES, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %132, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %131 [
    i32 64256, label %29
    i32 64257, label %44
    i32 64258, label %59
    i32 64259, label %74
    i32 64260, label %95
    i32 64261, label %116
    i32 64262, label %116
  ]

29:                                               ; preds = %27
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load float, float* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @fz_add_stext_char_imp(i32* %30, %struct.TYPE_4__* %31, i32* %32, i32 102, i32 %33, i32 %34, float %35, i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @fz_add_stext_char_imp(i32* %38, %struct.TYPE_4__* %39, i32* %40, i32 102, i32 -1, i32 %41, float 0.000000e+00, i32 %42)
  br label %153

44:                                               ; preds = %27
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load float, float* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @fz_add_stext_char_imp(i32* %45, %struct.TYPE_4__* %46, i32* %47, i32 102, i32 %48, i32 %49, float %50, i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @fz_add_stext_char_imp(i32* %53, %struct.TYPE_4__* %54, i32* %55, i32 105, i32 -1, i32 %56, float 0.000000e+00, i32 %57)
  br label %153

59:                                               ; preds = %27
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load float, float* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @fz_add_stext_char_imp(i32* %60, %struct.TYPE_4__* %61, i32* %62, i32 102, i32 %63, i32 %64, float %65, i32 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @fz_add_stext_char_imp(i32* %68, %struct.TYPE_4__* %69, i32* %70, i32 108, i32 -1, i32 %71, float 0.000000e+00, i32 %72)
  br label %153

74:                                               ; preds = %27
  %75 = load i32*, i32** %9, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load float, float* %15, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @fz_add_stext_char_imp(i32* %75, %struct.TYPE_4__* %76, i32* %77, i32 102, i32 %78, i32 %79, float %80, i32 %81)
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @fz_add_stext_char_imp(i32* %83, %struct.TYPE_4__* %84, i32* %85, i32 102, i32 -1, i32 %86, float 0.000000e+00, i32 %87)
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @fz_add_stext_char_imp(i32* %89, %struct.TYPE_4__* %90, i32* %91, i32 105, i32 -1, i32 %92, float 0.000000e+00, i32 %93)
  br label %153

95:                                               ; preds = %27
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load float, float* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @fz_add_stext_char_imp(i32* %96, %struct.TYPE_4__* %97, i32* %98, i32 102, i32 %99, i32 %100, float %101, i32 %102)
  %104 = load i32*, i32** %9, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @fz_add_stext_char_imp(i32* %104, %struct.TYPE_4__* %105, i32* %106, i32 102, i32 -1, i32 %107, float 0.000000e+00, i32 %108)
  %110 = load i32*, i32** %9, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @fz_add_stext_char_imp(i32* %110, %struct.TYPE_4__* %111, i32* %112, i32 108, i32 -1, i32 %113, float 0.000000e+00, i32 %114)
  br label %153

116:                                              ; preds = %27, %27
  %117 = load i32*, i32** %9, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load float, float* %15, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @fz_add_stext_char_imp(i32* %117, %struct.TYPE_4__* %118, i32* %119, i32 115, i32 %120, i32 %121, float %122, i32 %123)
  %125 = load i32*, i32** %9, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @fz_add_stext_char_imp(i32* %125, %struct.TYPE_4__* %126, i32* %127, i32 116, i32 -1, i32 %128, float 0.000000e+00, i32 %129)
  br label %153

131:                                              ; preds = %27
  br label %132

132:                                              ; preds = %131, %20
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @FZ_STEXT_PRESERVE_WHITESPACE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %12, align 4
  switch i32 %140, label %142 [
    i32 9, label %141
    i32 32, label %141
    i32 160, label %141
    i32 5760, label %141
    i32 6158, label %141
    i32 8192, label %141
    i32 8193, label %141
    i32 8194, label %141
    i32 8195, label %141
    i32 8196, label %141
    i32 8197, label %141
    i32 8198, label %141
    i32 8199, label %141
    i32 8200, label %141
    i32 8201, label %141
    i32 8202, label %141
    i32 8239, label %141
    i32 8287, label %141
    i32 12288, label %141
  ]

141:                                              ; preds = %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139
  store i32 32, i32* %12, align 4
  br label %142

142:                                              ; preds = %141, %139
  br label %143

143:                                              ; preds = %142, %132
  %144 = load i32*, i32** %9, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load float, float* %15, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @fz_add_stext_char_imp(i32* %144, %struct.TYPE_4__* %145, i32* %146, i32 %147, i32 %148, i32 %149, float %150, i32 %151)
  br label %153

153:                                              ; preds = %143, %116, %95, %74, %59, %44, %29, %19
  ret void
}

declare dso_local i32 @fz_add_stext_char_imp(i32*, %struct.TYPE_4__*, i32*, i32, i32, i32, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
