; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_squote_len.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_squote_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@squote_len.single_quote_list = internal global [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"&#39;\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"&#x27;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @squote_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @squote_len(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @squote_len.single_quote_list, i64 0, i64 0), i8*** %6, align 8
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load i32*, i32** %4, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @memcmp(i32* %20, i8* %22, i64 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %3, align 8
  br label %33

28:                                               ; preds = %19, %12
  br label %29

29:                                               ; preds = %28
  %30 = load i8**, i8*** %6, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %6, align 8
  br label %8

32:                                               ; preds = %8
  store i64 0, i64* %3, align 8
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
