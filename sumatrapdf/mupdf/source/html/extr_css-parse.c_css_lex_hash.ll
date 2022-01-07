; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_css_lex_hash.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_css_lex_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexbuf = type { i32 }

@CSS_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lexbuf*)* @css_lex_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_lex_hash(%struct.lexbuf* %0) #0 {
  %2 = alloca %struct.lexbuf*, align 8
  store %struct.lexbuf* %0, %struct.lexbuf** %2, align 8
  br label %3

3:                                                ; preds = %9, %1
  %4 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %5 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @isnmchar(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %11 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %12 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @css_push_char(%struct.lexbuf* %10, i32 %13)
  %15 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %16 = call i32 @css_lex_next(%struct.lexbuf* %15)
  br label %3

17:                                               ; preds = %3
  %18 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %19 = call i32 @css_push_char(%struct.lexbuf* %18, i32 0)
  %20 = load i32, i32* @CSS_HASH, align 4
  ret i32 %20
}

declare dso_local i64 @isnmchar(i32) #1

declare dso_local i32 @css_push_char(%struct.lexbuf*, i32) #1

declare dso_local i32 @css_lex_next(%struct.lexbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
