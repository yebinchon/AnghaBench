; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_attrib_value.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_attrib_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexbuf = type { i64, i32, i32, i32 }

@CSS_KEYWORD = common dso_local global i64 0, align 8
@CSS_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"expected attribute value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lexbuf*)* @parse_attrib_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_attrib_value(%struct.lexbuf* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lexbuf*, align 8
  %4 = alloca i8*, align 8
  store %struct.lexbuf* %0, %struct.lexbuf** %3, align 8
  %5 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %6 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CSS_KEYWORD, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %12 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CSS_STRING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %10, %1
  %17 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %18 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %21 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %24 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @fz_pool_strdup(i32 %19, i32 %22, i32 %25)
  store i8* %26, i8** %4, align 8
  %27 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %28 = call i32 @next(%struct.lexbuf* %27)
  %29 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %30 = call i32 @white(%struct.lexbuf* %29)
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %2, align 8
  br label %35

32:                                               ; preds = %10
  %33 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %34 = call i32 @fz_css_error(%struct.lexbuf* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %16
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i8* @fz_pool_strdup(i32, i32, i32) #1

declare dso_local i32 @next(%struct.lexbuf*) #1

declare dso_local i32 @white(%struct.lexbuf*) #1

declare dso_local i32 @fz_css_error(%struct.lexbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
