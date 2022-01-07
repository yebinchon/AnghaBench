; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_css_parser.c_vlc_css_unquoted.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_css_parser.c_vlc_css_unquoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_css_unquoted(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 34
  br i1 %13, label %14, label %38

14:                                               ; preds = %9, %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %4, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = load i64, i64* %4, align 8
  %19 = sub i64 %18, 1
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %14
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i64, i64* %4, align 8
  %32 = sub i64 %31, 2
  %33 = call i8* @strndup(i8* %30, i64 %32)
  store i8* %33, i8** %3, align 8
  br label %37

34:                                               ; preds = %14
  %35 = load i8*, i8** %2, align 8
  %36 = call i8* @strdup(i8* %35)
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %34, %28
  br label %41

38:                                               ; preds = %9
  %39 = load i8*, i8** %2, align 8
  %40 = call i8* @strdup(i8* %39)
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
