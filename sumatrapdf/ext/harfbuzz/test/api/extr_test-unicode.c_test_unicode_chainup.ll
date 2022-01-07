; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-unicode.c_test_unicode_chainup.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-unicode.c_test_unicode_chainup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_unicode_chainup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_unicode_chainup() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* @hb_unicode_funcs_create(i32* null)
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @hb_unicode_funcs_is_immutable(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @g_assert(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32* @hb_unicode_funcs_create(i32* %10)
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @hb_unicode_funcs_is_immutable(i32* %12)
  %14 = call i32 @g_assert(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @hb_unicode_funcs_destroy(i32* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @hb_unicode_funcs_is_immutable(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @g_assert(i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @_test_unicode_properties_nil(i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @hb_unicode_funcs_destroy(i32* %25)
  %27 = call i32* (...) @hb_unicode_funcs_get_default()
  %28 = call i32* @hb_unicode_funcs_create(i32* %27)
  store i32* %28, i32** %1, align 8
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @hb_unicode_funcs_is_immutable(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @g_assert(i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32* @hb_unicode_funcs_create(i32* %35)
  store i32* %36, i32** %2, align 8
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @hb_unicode_funcs_is_immutable(i32* %37)
  %39 = call i32 @g_assert(i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @hb_unicode_funcs_destroy(i32* %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @hb_unicode_funcs_is_immutable(i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @g_assert(i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @hb_unicode_funcs_make_immutable(i32* %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @test_unicode_properties(i32* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @hb_unicode_funcs_destroy(i32* %52)
  ret void
}

declare dso_local i32* @hb_unicode_funcs_create(i32*) #1

declare dso_local i32 @g_assert(i32) #1

declare dso_local i32 @hb_unicode_funcs_is_immutable(i32*) #1

declare dso_local i32 @hb_unicode_funcs_destroy(i32*) #1

declare dso_local i32 @_test_unicode_properties_nil(i32*) #1

declare dso_local i32* @hb_unicode_funcs_get_default(...) #1

declare dso_local i32 @hb_unicode_funcs_make_immutable(i32*) #1

declare dso_local i32 @test_unicode_properties(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
