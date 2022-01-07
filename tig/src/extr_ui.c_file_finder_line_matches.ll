; ModuleID = '/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_line_matches.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_line_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_finder_line = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file_finder_line*, i8**)* @file_finder_line_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @file_finder_line_matches(%struct.file_finder_line* %0, i8** %1) #0 {
  %3 = alloca %struct.file_finder_line*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.file_finder_line* %0, %struct.file_finder_line** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load %struct.file_finder_line*, %struct.file_finder_line** %3, align 8
  %9 = getelementptr inbounds %struct.file_finder_line, %struct.file_finder_line* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %37, %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @strstr(i8* %21, i8* %23)
  store i8* %24, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br label %26

26:                                               ; preds = %20, %16, %11
  %27 = phi i1 [ false, %16 ], [ false, %11 ], [ %25, %20 ]
  br i1 %27, label %28, label %40

28:                                               ; preds = %26
  %29 = load i8*, i8** %6, align 8
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8* %34, i8** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %28
  %38 = load i8**, i8*** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %4, align 8
  br label %11

40:                                               ; preds = %26
  %41 = load i64, i64* %7, align 8
  ret i64 %41
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
