; ModuleID = '/home/carl/AnghaBench/tig/src/extr_grep.c_grep_select.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_grep.c_grep_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i64* }
%struct.line = type { i32 }
%struct.grep_line = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, %struct.line*)* @grep_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grep_select(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.line*, align 8
  %5 = alloca %struct.grep_line*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.line* %1, %struct.line** %4, align 8
  %6 = load %struct.line*, %struct.line** %4, align 8
  %7 = call %struct.grep_line* @grep_get_line(%struct.line* %6)
  store %struct.grep_line* %7, %struct.grep_line** %5, align 8
  %8 = load %struct.grep_line*, %struct.grep_line** %5, align 8
  %9 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %53

14:                                               ; preds = %2
  %15 = load %struct.view*, %struct.view** %3, align 8
  %16 = getelementptr inbounds %struct.view, %struct.view* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.view*, %struct.view** %3, align 8
  %22 = getelementptr inbounds %struct.view, %struct.view* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.grep_line*, %struct.grep_line** %5, align 8
  %27 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.grep_line*, %struct.grep_line** %5, align 8
  %30 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @strlen(i32* %31)
  %33 = call i32 @string_ncopy(i32 %25, i32* %28, i32 %32)
  %34 = load %struct.view*, %struct.view** %3, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.grep_line*, %struct.grep_line** %5, align 8
  %38 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.grep_line*, %struct.grep_line** %5, align 8
  %41 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @strlen(i32* %42)
  %44 = call i32 @string_ncopy(i32 %36, i32* %39, i32 %43)
  %45 = load %struct.grep_line*, %struct.grep_line** %5, align 8
  %46 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = load %struct.view*, %struct.view** %3, align 8
  %50 = getelementptr inbounds %struct.view, %struct.view* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %48, i64* %52, align 8
  br label %53

53:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.grep_line* @grep_get_line(%struct.line*) #1

declare dso_local i32 @string_ncopy(i32, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
