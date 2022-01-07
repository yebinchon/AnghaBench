; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_frameset.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_frameset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"IHTMLWindow2_get_frames failed: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"fr1\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"IHTMLDocument2_get_frames failed: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fr2\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"nm1\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"frame name\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"about:blank\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"fr3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_frameset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_frameset(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @get_doc_window(i32* %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @IHTMLWindow2_get_frames(i32* %9, i32** %4)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @FAILED(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %75

21:                                               ; preds = %1
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @test_frames_collection(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @IHTMLFramesCollection2_Release(i32* %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i64 @IHTMLDocument2_get_frames(i32* %26, i32** %4)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @FAILED(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %75

38:                                               ; preds = %21
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @test_frames_collection(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @IHTMLFramesCollection2_Release(i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @test_frames_collection(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32*, i32** %2, align 8
  %46 = call i32* @get_doc_elem_by_id(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32* %46, i32** %5, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @test_elem_id(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @test_framebase(i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @test_framebase_name(i32* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @test_framebase_put_name(i32* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @test_framebase_put_name(i32* %55, i8* null)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @test_framebase_put_name(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @test_framebase_src(i32* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @IHTMLElement_Release(i32* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32* @get_doc_elem_by_id(i32* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32* %64, i32** %5, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @test_framebase_name(i32* %65, i8* null)
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @test_framebase_put_name(i32* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @test_framebase_put_name(i32* %69, i8* null)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @IHTMLElement_Release(i32* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @IHTMLWindow2_Release(i32* %73)
  br label %75

75:                                               ; preds = %38, %37, %20
  ret void
}

declare dso_local i32* @get_doc_window(i32*) #1

declare dso_local i64 @IHTMLWindow2_get_frames(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @test_frames_collection(i32*, i8*) #1

declare dso_local i32 @IHTMLFramesCollection2_Release(i32*) #1

declare dso_local i64 @IHTMLDocument2_get_frames(i32*, i32**) #1

declare dso_local i32* @get_doc_elem_by_id(i32*, i8*) #1

declare dso_local i32 @test_elem_id(i32*, i8*) #1

declare dso_local i32 @test_framebase(i32*) #1

declare dso_local i32 @test_framebase_name(i32*, i8*) #1

declare dso_local i32 @test_framebase_put_name(i32*, i8*) #1

declare dso_local i32 @test_framebase_src(i32*, i8*) #1

declare dso_local i32 @IHTMLElement_Release(i32*) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
