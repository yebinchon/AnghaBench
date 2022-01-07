; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HELP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Missing input-filename\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing output-filename\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@out = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot open output file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @HELP, align 4
  %12 = call i32 @puts(i32 %11)
  store i32 1, i32* %3, align 4
  br label %64

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @convert_path(i8* %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @free(i8* %24)
  %26 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %64

27:                                               ; preds = %13
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @convert_path(i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @free(i8* %40)
  %42 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %64

43:                                               ; preds = %27
  %44 = load i8*, i8** %7, align 8
  %45 = call i32* @fopen(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %45, i32** @out, align 8
  %46 = load i32*, i32** @out, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @free(i8* %51)
  %53 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %64

54:                                               ; preds = %43
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @parse_file(i8* %55)
  %57 = call i32 (...) @generate_xml()
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i32*, i32** @out, align 8
  %63 = call i32 @fclose(i32* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %54, %48, %37, %23, %10
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @puts(i32) #1

declare dso_local i8* @convert_path(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @parse_file(i8*) #1

declare dso_local i32 @generate_xml(...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
