; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_encode_character_by_glyph_name.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_encode_character_by_glyph_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_encode_character_by_glyph_name(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @ft_name_index(i64 %15, i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @fz_unicode_from_glyph_name(i8* %24)
  %26 = call i32 @ft_char_index(i64 %23, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %20, %12
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @ft_name_index(i64, i8*) #1

declare dso_local i32 @ft_char_index(i64, i32) #1

declare dso_local i32 @fz_unicode_from_glyph_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
