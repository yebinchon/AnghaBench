; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-buffer.c_fixture_init.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-buffer.c_fixture_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@utf32 = common dso_local global i32* null, align 8
@utf16 = common dso_local global i32* null, align 8
@utf8 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @fixture_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixture_init(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32* (...) @hb_buffer_create()
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32* %7, i32** %9, align 8
  store i32* %7, i32** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GPOINTER_TO_INT(i32 %10)
  switch i32 %11, label %60 [
    i32 132, label %12
    i32 131, label %13
    i32 129, label %33
    i32 130, label %42
    i32 128, label %51
  ]

12:                                               ; preds = %2
  br label %62

13:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %14

14:                                               ; preds = %29, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** @utf32, align 8
  %17 = call i32 @G_N_ELEMENTS(i32* %16)
  %18 = sub nsw i32 %17, 1
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** @utf32, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @hb_buffer_add(i32* %21, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %14

32:                                               ; preds = %14
  br label %62

33:                                               ; preds = %2
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** @utf32, align 8
  %36 = load i32*, i32** @utf32, align 8
  %37 = call i32 @G_N_ELEMENTS(i32* %36)
  %38 = load i32*, i32** @utf32, align 8
  %39 = call i32 @G_N_ELEMENTS(i32* %38)
  %40 = sub nsw i32 %39, 2
  %41 = call i32 @hb_buffer_add_utf32(i32* %34, i32* %35, i32 %37, i32 1, i32 %40)
  br label %62

42:                                               ; preds = %2
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** @utf16, align 8
  %45 = load i32*, i32** @utf16, align 8
  %46 = call i32 @G_N_ELEMENTS(i32* %45)
  %47 = load i32*, i32** @utf16, align 8
  %48 = call i32 @G_N_ELEMENTS(i32* %47)
  %49 = sub nsw i32 %48, 2
  %50 = call i32 @hb_buffer_add_utf16(i32* %43, i32* %44, i32 %46, i32 1, i32 %49)
  br label %62

51:                                               ; preds = %2
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** @utf8, align 8
  %54 = load i32*, i32** @utf8, align 8
  %55 = call i32 @G_N_ELEMENTS(i32* %54)
  %56 = load i32*, i32** @utf8, align 8
  %57 = call i32 @G_N_ELEMENTS(i32* %56)
  %58 = sub nsw i32 %57, 2
  %59 = call i32 @hb_buffer_add_utf8(i32* %52, i32* %53, i32 %55, i32 1, i32 %58)
  br label %62

60:                                               ; preds = %2
  %61 = call i32 (...) @g_assert_not_reached()
  br label %62

62:                                               ; preds = %60, %51, %42, %33, %32, %12
  ret void
}

declare dso_local i32* @hb_buffer_create(...) #1

declare dso_local i32 @GPOINTER_TO_INT(i32) #1

declare dso_local i32 @G_N_ELEMENTS(i32*) #1

declare dso_local i32 @hb_buffer_add(i32*, i32, i32) #1

declare dso_local i32 @hb_buffer_add_utf32(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @hb_buffer_add_utf16(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @hb_buffer_add_utf8(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @g_assert_not_reached(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
