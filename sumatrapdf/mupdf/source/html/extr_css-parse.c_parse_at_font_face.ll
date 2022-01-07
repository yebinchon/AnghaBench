; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_at_font_face.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_at_font_face.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexbuf = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"@font-face\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.lexbuf*)* @parse_at_font_face to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_at_font_face(%struct.lexbuf* %0) #0 {
  %2 = alloca %struct.lexbuf*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.lexbuf* %0, %struct.lexbuf** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %6 = call i32 @white(%struct.lexbuf* %5)
  %7 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %8 = call i32 @expect(%struct.lexbuf* %7, i8 signext 123)
  %9 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %10 = call i32* @parse_declaration_list(%struct.lexbuf* %9)
  store i32* %10, i32** %4, align 8
  %11 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %12 = call i32 @expect(%struct.lexbuf* %11, i8 signext 125)
  %13 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %14 = call i32 @white(%struct.lexbuf* %13)
  %15 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %16 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %19 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @fz_new_css_selector(i32 %17, i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %3, align 8
  %22 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %23 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %26 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* @fz_new_css_rule(i32 %24, i32 %27, i32* %28, i32* %29)
  ret i32* %30
}

declare dso_local i32 @white(%struct.lexbuf*) #1

declare dso_local i32 @expect(%struct.lexbuf*, i8 signext) #1

declare dso_local i32* @parse_declaration_list(%struct.lexbuf*) #1

declare dso_local i32* @fz_new_css_selector(i32, i32, i8*) #1

declare dso_local i32* @fz_new_css_rule(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
