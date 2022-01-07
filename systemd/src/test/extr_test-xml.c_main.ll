; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-xml.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-xml.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@XML_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"<foo></foo>\00", align 1
@XML_TAG_OPEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@XML_TAG_CLOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"<foo waldo=piep meh=\22huhu\22/>\00", align 1
@XML_ATTRIBUTE_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"waldo\00", align 1
@XML_ATTRIBUTE_VALUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"piep\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"meh\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"huhu\00", align 1
@XML_TAG_CLOSE_EMPTY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"xxxx\0A<foo><?xml foo?>     <!-- zzzz -->  </foo>\00", align 1
@XML_TEXT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"xxxx\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @XML_END, align 4
  %7 = call i32 (i8*, i32, ...) @test_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @XML_TAG_OPEN, align 4
  %9 = load i32, i32* @XML_TAG_CLOSE, align 4
  %10 = load i32, i32* @XML_END, align 4
  %11 = call i32 (i8*, i32, ...) @test_one(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @XML_TAG_OPEN, align 4
  %13 = load i32, i32* @XML_ATTRIBUTE_NAME, align 4
  %14 = load i32, i32* @XML_ATTRIBUTE_VALUE, align 4
  %15 = load i32, i32* @XML_ATTRIBUTE_NAME, align 4
  %16 = load i32, i32* @XML_ATTRIBUTE_VALUE, align 4
  %17 = load i32, i32* @XML_TAG_CLOSE_EMPTY, align 4
  %18 = load i32, i32* @XML_END, align 4
  %19 = call i32 (i8*, i32, ...) @test_one(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %17, i8* null, i32 %18)
  %20 = load i32, i32* @XML_TEXT, align 4
  %21 = load i32, i32* @XML_TAG_OPEN, align 4
  %22 = load i32, i32* @XML_TEXT, align 4
  %23 = load i32, i32* @XML_TEXT, align 4
  %24 = load i32, i32* @XML_TAG_CLOSE, align 4
  %25 = load i32, i32* @XML_END, align 4
  %26 = call i32 (i8*, i32, ...) @test_one(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  ret i32 0
}

declare dso_local i32 @test_one(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
