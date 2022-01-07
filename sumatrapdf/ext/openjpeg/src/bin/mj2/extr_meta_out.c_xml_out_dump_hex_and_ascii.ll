; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_dump_hex_and_ascii.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_dump_hex_and_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@raw = common dso_local global i64 0, align 8
@derived = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s<AsHexAndASCII>\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@BYTES_PER_DUMP_LINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s</AsHexAndASCII>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_out_dump_hex_and_ascii(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i64, i64* @raw, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @xml_out_dump_hex(i32* %14, i8* %15, i32 %16, i8* %17)
  br label %19

19:                                               ; preds = %13, %4
  %20 = load i64, i64* @derived, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %95

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %90, %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %91

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %49, %30
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @BYTES_PER_DUMP_LINE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %85, %52
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @BYTES_PER_DUMP_LINE, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = call i64 @isprint(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32*, i32** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %84

81:                                               ; preds = %68, %59
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %72
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %55

90:                                               ; preds = %55
  br label %26

91:                                               ; preds = %26
  %92 = load i32*, i32** %5, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %91, %19
  ret void
}

declare dso_local i32 @xml_out_dump_hex(i32*, i8*, i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
