; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_is_built_in_ignored_file.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_is_built_in_ignored_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ignore_patterns = common dso_local global i32** null, align 8
@TRUE = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_2__* null, align 8
@office_temp_ignore_patterns = common dso_local global i32** null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_built_in_ignored_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_built_in_ignored_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32**, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32**, i32*** @ignore_patterns, align 8
  store i32** %5, i32*** %4, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32**, i32*** %4, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load i32**, i32*** %4, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @g_pattern_match_string(i32* %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %2, align 4
  br label %46

18:                                               ; preds = %10
  %19 = load i32**, i32*** %4, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i32 1
  store i32** %20, i32*** %4, align 8
  br label %6

21:                                               ; preds = %6
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %21
  %27 = load i32**, i32*** @office_temp_ignore_patterns, align 8
  store i32** %27, i32*** %4, align 8
  br label %28

28:                                               ; preds = %40, %26
  %29 = load i32**, i32*** %4, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32**, i32*** %4, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @g_pattern_match_string(i32* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %2, align 4
  br label %46

40:                                               ; preds = %32
  %41 = load i32**, i32*** %4, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i32 1
  store i32** %42, i32*** %4, align 8
  br label %28

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %38, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @g_pattern_match_string(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
