; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_blocked.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"<img id=\22imgid\22 src=\22BLOCKED::http://www.winehq.org/img.png\22 />\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"imgid\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"BLOCKED::\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"blocked::http://www.winehq.org/img.png\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"<img id=\22imgid\22 src=\22BLOCKE::http://www.winehq.org/img.png\22 />\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"blocke::http://www.winehq.org/img.png\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"BLOCKED:http://www.winehq.org/img.png\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"blocked:http://www.winehq.org/img.png\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_blocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_blocked(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @test_elem_set_innerhtml(i32* %6, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @TRUE, align 4
  %10 = call i32* @get_elem_by_id(i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @test_img_src(i32* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @IHTMLElement_Release(i32* %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @test_elem_set_innerhtml(i32* %19, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32* @get_elem_by_id(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @test_img_src(i32* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @test_img_set_src(i32* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @test_img_src(i32* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* null)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @test_img_set_src(i32* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @test_img_src(i32* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @IHTMLElement_Release(i32* %37)
  br label %39

39:                                               ; preds = %26, %18
  ret void
}

declare dso_local i32 @test_elem_set_innerhtml(i32*, i8*) #1

declare dso_local i32* @get_elem_by_id(i32*, i8*, i32) #1

declare dso_local i32 @test_img_src(i32*, i8*, i8*) #1

declare dso_local i32 @IHTMLElement_Release(i32*) #1

declare dso_local i32 @test_img_set_src(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
