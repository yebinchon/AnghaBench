; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encodings.c_fz_glyph_name_from_unicode_sc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encodings.c_fz_glyph_name_from_unicode_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@glyph_name_from_unicode_sc = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fz_glyph_name_from_unicode_sc(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @glyph_name_from_unicode_sc, align 8
  %8 = call i32 @nelem(%struct.TYPE_3__* %7)
  %9 = sdiv i32 %8, 2
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %51, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %16, %17
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @glyph_name_from_unicode_sc, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %51

31:                                               ; preds = %15
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @glyph_name_from_unicode_sc, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %32, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %50

43:                                               ; preds = %31
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @glyph_name_from_unicode_sc, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %2, align 8
  br label %53

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %28
  br label %11

52:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i8*, i8** %2, align 8
  ret i8* %54
}

declare dso_local i32 @nelem(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
