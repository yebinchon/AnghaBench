; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_cursor_dec_word.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_cursor_dec_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@G_UNICODE_BREAK_ALPHABETIC = common dso_local global i64 0, align 8
@G_UNICODE_BREAK_HEBREW_LETTER = common dso_local global i64 0, align 8
@G_UNICODE_BREAK_NUMERIC = common dso_local global i64 0, align 8
@G_UNICODE_BREAK_QUOTATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @textbox_cursor_dec_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @textbox_cursor_dec_word(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @g_utf8_offset_to_pointer(i32* %12, i32 %15)
  store i32* %16, i32** %4, align 8
  br label %17

17:                                               ; preds = %50, %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @g_utf8_prev_char(i32* %18)
  store i32* %19, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %22, %25
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi i1 [ false, %17 ], [ %26, %21 ]
  br i1 %28, label %29, label %51

29:                                               ; preds = %27
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @g_utf8_get_char(i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @g_unichar_break_type(i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @G_UNICODE_BREAK_ALPHABETIC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @G_UNICODE_BREAK_HEBREW_LETTER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @G_UNICODE_BREAK_NUMERIC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @G_UNICODE_BREAK_QUOTATION, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41, %37, %29
  br label %51

50:                                               ; preds = %45
  br label %17

51:                                               ; preds = %49, %27
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %52, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %91, %57
  %59 = load i32*, i32** %4, align 8
  %60 = call i32* @g_utf8_prev_char(i32* %59)
  store i32* %60, i32** %3, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %92

62:                                               ; preds = %58
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @g_utf8_get_char(i32* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @g_unichar_break_type(i32 %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @G_UNICODE_BREAK_ALPHABETIC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %83, label %70

70:                                               ; preds = %62
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @G_UNICODE_BREAK_HEBREW_LETTER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @G_UNICODE_BREAK_NUMERIC, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @G_UNICODE_BREAK_QUOTATION, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %92

83:                                               ; preds = %78, %74, %70, %62
  %84 = load i32*, i32** %3, align 8
  store i32* %84, i32** %4, align 8
  %85 = load i32*, i32** %3, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %92

91:                                               ; preds = %83
  br label %58

92:                                               ; preds = %90, %82, %58
  br label %93

93:                                               ; preds = %92, %51
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @g_utf8_pointer_to_offset(i32* %96, i32* %97)
  store i32 %98, i32* %9, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @textbox_cursor(%struct.TYPE_4__* %99, i32 %100)
  ret void
}

declare dso_local i32* @g_utf8_offset_to_pointer(i32*, i32) #1

declare dso_local i32* @g_utf8_prev_char(i32*) #1

declare dso_local i32 @g_utf8_get_char(i32*) #1

declare dso_local i64 @g_unichar_break_type(i32) #1

declare dso_local i32 @g_utf8_pointer_to_offset(i32*, i32*) #1

declare dso_local i32 @textbox_cursor(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
