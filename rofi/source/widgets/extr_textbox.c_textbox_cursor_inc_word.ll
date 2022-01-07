; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_cursor_inc_word.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_cursor_inc_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@G_UNICODE_BREAK_ALPHABETIC = common dso_local global i64 0, align 8
@G_UNICODE_BREAK_HEBREW_LETTER = common dso_local global i64 0, align 8
@G_UNICODE_BREAK_NUMERIC = common dso_local global i64 0, align 8
@G_UNICODE_BREAK_QUOTATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @textbox_cursor_inc_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @textbox_cursor_inc_word(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %93

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @g_utf8_offset_to_pointer(i32* %17, i32 %20)
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %47, %14
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @g_utf8_next_char(i8* %23)
  store i8* %24, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @g_utf8_get_char(i8* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @g_unichar_break_type(i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @G_UNICODE_BREAK_ALPHABETIC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %26
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @G_UNICODE_BREAK_HEBREW_LETTER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @G_UNICODE_BREAK_NUMERIC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @G_UNICODE_BREAK_QUOTATION, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38, %34, %26
  br label %48

47:                                               ; preds = %42
  br label %22

48:                                               ; preds = %46, %22
  %49 = load i8*, i8** %3, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %3, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %48
  br label %93

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i8*, i8** %3, align 8
  %60 = call i8* @g_utf8_next_char(i8* %59)
  store i8* %60, i8** %3, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @g_utf8_get_char(i8* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @g_unichar_break_type(i32 %65)
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @G_UNICODE_BREAK_ALPHABETIC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %83, label %70

70:                                               ; preds = %62
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @G_UNICODE_BREAK_HEBREW_LETTER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @G_UNICODE_BREAK_NUMERIC, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @G_UNICODE_BREAK_QUOTATION, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %84

83:                                               ; preds = %78, %74, %70, %62
  br label %58

84:                                               ; preds = %82, %58
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @g_utf8_pointer_to_offset(i32* %87, i8* %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @textbox_cursor(%struct.TYPE_4__* %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %56, %13
  ret void
}

declare dso_local i8* @g_utf8_offset_to_pointer(i32*, i32) #1

declare dso_local i8* @g_utf8_next_char(i8*) #1

declare dso_local i32 @g_utf8_get_char(i8*) #1

declare dso_local i64 @g_unichar_break_type(i32) #1

declare dso_local i32 @g_utf8_pointer_to_offset(i32*, i8*) #1

declare dso_local i32 @textbox_cursor(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
