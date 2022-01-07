; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-subset-glyf.c_test_subset_glyf_strip_hints_invalid.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-subset-glyf.c_test_subset_glyf_strip_hints_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"fonts/oom-ccc61c92d589f895174cdef6ff2e3b20e9999a1a\00", align 1
@__const.test_subset_glyf_strip_hints_invalid.text = private unnamed_addr constant [19 x i8] c"ABCDEXYZ123@_%&)*$!", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_subset_glyf_strip_hints_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_subset_glyf_strip_hints_invalid() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [19 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = call i32* @hb_subset_test_open_font(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %1, align 8
  %8 = call i32* (...) @hb_set_create()
  store i32* %8, i32** %2, align 8
  %9 = bitcast [19 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.test_subset_glyf_strip_hints_invalid.text, i32 0, i32 0), i64 19, i1 false)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %21, %0
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, 19
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @hb_set_add(i32* %15, i8 signext %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %10

24:                                               ; preds = %10
  %25 = load i32*, i32** %2, align 8
  %26 = call i32* @hb_subset_test_create_input(i32* %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @hb_subset_input_set_drop_hints(i32* %27, i32 1)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @hb_set_destroy(i32* %29)
  %31 = load i32*, i32** %1, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @hb_subset_test_create_subset(i32* %31, i32* %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = ptrtoint i32* %34 to i32
  %36 = call i32 @g_assert(i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* (...) @hb_face_get_empty()
  %39 = icmp eq i32* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @g_assert(i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @hb_face_destroy(i32* %42)
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @hb_face_destroy(i32* %44)
  ret void
}

declare dso_local i32* @hb_subset_test_open_font(i8*) #1

declare dso_local i32* @hb_set_create(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hb_set_add(i32*, i8 signext) #1

declare dso_local i32* @hb_subset_test_create_input(i32*) #1

declare dso_local i32 @hb_subset_input_set_drop_hints(i32*, i32) #1

declare dso_local i32 @hb_set_destroy(i32*) #1

declare dso_local i32* @hb_subset_test_create_subset(i32*, i32*) #1

declare dso_local i32 @g_assert(i32) #1

declare dso_local i32* @hb_face_get_empty(...) #1

declare dso_local i32 @hb_face_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
