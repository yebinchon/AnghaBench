; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_xml_emit_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_xml_emit_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.parser*, i8*, i8*)* @xml_emit_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_emit_text(i32* %0, %struct.parser* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.parser*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.parser* %1, %struct.parser** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.parser*, %struct.parser** %6, align 8
  %13 = getelementptr inbounds %struct.parser, %struct.parser* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %88

17:                                               ; preds = %4
  %18 = load %struct.parser*, %struct.parser** %6, align 8
  %19 = getelementptr inbounds %struct.parser, %struct.parser* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %35, %22
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @iswhite(i8 signext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %38

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %10, align 8
  br label %24

38:                                               ; preds = %33, %24
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %88

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.parser*, %struct.parser** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @xml_emit_open_tag(i32* %45, %struct.parser* %46, i8* %47, i8* %48, i32 1)
  %50 = load %struct.parser*, %struct.parser** %6, align 8
  %51 = getelementptr inbounds %struct.parser, %struct.parser* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i8* @fz_xml_text(i32* %53)
  store i8* %54, i8** %10, align 8
  br label %55

55:                                               ; preds = %82, %44
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 38
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @xml_parse_entity(i32* %11, i8* %65)
  %67 = load i8*, i8** %7, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @fz_runetochar(i8* %70, i32 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %10, align 8
  br label %82

76:                                               ; preds = %59
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  %79 = load i8, i8* %77, align 1
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %10, align 8
  store i8 %79, i8* %80, align 1
  br label %82

82:                                               ; preds = %76, %64
  br label %55

83:                                               ; preds = %55
  %84 = load i8*, i8** %10, align 8
  store i8 0, i8* %84, align 1
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.parser*, %struct.parser** %6, align 8
  %87 = call i32 @xml_emit_close_tag(i32* %85, %struct.parser* %86)
  br label %88

88:                                               ; preds = %83, %42, %16
  ret void
}

declare dso_local i32 @iswhite(i8 signext) #1

declare dso_local i32 @xml_emit_open_tag(i32*, %struct.parser*, i8*, i8*, i32) #1

declare dso_local i8* @fz_xml_text(i32*) #1

declare dso_local i32 @xml_parse_entity(i32*, i8*) #1

declare dso_local i32 @fz_runetochar(i8*, i32) #1

declare dso_local i32 @xml_emit_close_tag(i32*, %struct.parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
