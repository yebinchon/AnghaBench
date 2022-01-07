; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-blob.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-blob.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_blob_empty = common dso_local global i32 0, align 4
@blob_names = common dso_local global i8** null, align 8
@fixture = common dso_local global i32 0, align 4
@test_blob = common dso_local global i32 0, align 4
@test_blob_subblob = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 @hb_test_init(i32* %4, i8*** %5)
  %10 = load i32, i32* @test_blob_empty, align 4
  %11 = call i32 @hb_test_add(i32 %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %35, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i8**, i8*** @blob_names, align 8
  %15 = call i32 @G_N_ELEMENTS(i8** %14)
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @GINT_TO_POINTER(i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8**, i8*** @blob_names, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load i32, i32* @fixture, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @test_blob, align 4
  %29 = call i32 @hb_test_add_fixture_flavor(i32 %25, i8* %26, i8* %27, i32 %28)
  %30 = load i32, i32* @fixture, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @test_blob_subblob, align 4
  %34 = call i32 @hb_test_add_fixture_flavor(i32 %30, i8* %31, i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %12

38:                                               ; preds = %12
  %39 = call i32 (...) @hb_test_run()
  ret i32 %39
}

declare dso_local i32 @hb_test_init(i32*, i8***) #1

declare dso_local i32 @hb_test_add(i32) #1

declare dso_local i32 @G_N_ELEMENTS(i8**) #1

declare dso_local i8* @GINT_TO_POINTER(i32) #1

declare dso_local i32 @hb_test_add_fixture_flavor(i32, i8*, i8*, i32) #1

declare dso_local i32 @hb_test_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
