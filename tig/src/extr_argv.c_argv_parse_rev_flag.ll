; ModuleID = '/home/carl/AnghaBench/tig/src/extr_argv.c_argv_parse_rev_flag.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_argv.c_argv_parse_rev_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_flags = type { i64, i32, i32 }

@argv_parse_rev_flag.with_graph = internal global [54 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"--after=\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"--all-match\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"--ancestry-path\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"--author-date-order\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"--basic-regexp\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"--before=\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"--boundary\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"--branches\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"--branches=\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"--cherry\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"--cherry-mark\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"--cherry-pick\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"--committer=\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"--date-order\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"--dense\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"--exclude=\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"--extended-regexp\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"--first-parent\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"--fixed-strings\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"--full-history\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"--graph\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"--glob=\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"--left-only\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"--max-parents=\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"--max-age=\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"--merge\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"--merges\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"--min-parents=\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"--no-max-parents\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"--no-min-parents\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"--no-walk\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"--perl-regexp\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"--pickaxe-all\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"--pickaxe-regex\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"--regexp-ignore-case\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"--remotes\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"--remotes=\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"--remove-empty\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"--reverse\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"--right-only\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"--simplify-by-decoration\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"--simplify-merges\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"--since=\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"--skip=\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"--sparse\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"--stdin\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"--tags\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"--tags=\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"--topo-order\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"--until=\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"-E\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@argv_parse_rev_flag.no_graph = internal global [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0)], align 16
@.str.54 = private unnamed_addr constant [12 x i8] c"--no-merges\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"--follow\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"--author=\00", align 1
@argv_parse_rev_flag.with_reflog = internal global [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0)], align 16
@.str.57 = private unnamed_addr constant [15 x i8] c"--walk-reflogs\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@argv_parse_rev_flag.search_no_graph = internal global [4 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0)], align 16
@.str.59 = private unnamed_addr constant [15 x i8] c"--grep-reflog=\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"--grep=\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"-G\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"-S\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @argv_parse_rev_flag(i8* %0, %struct.rev_flags* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rev_flags*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.rev_flags* %1, %struct.rev_flags** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %6, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %12 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([54 x i8*], [54 x i8*]* @argv_parse_rev_flag.with_graph, i64 0, i64 0))
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @argv_find_rev_flag(i8** getelementptr inbounds ([54 x i8*], [54 x i8*]* @argv_parse_rev_flag.with_graph, i64 0, i64 0), i32 %12, i8* %13, i64 %14, i64* null, i32* null, i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %2
  %18 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @argv_parse_rev_flag.no_graph, i64 0, i64 0))
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @argv_find_rev_flag(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @argv_parse_rev_flag.no_graph, i64 0, i64 0), i32 %18, i8* %19, i64 %20, i64* null, i32* %7, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @argv_parse_rev_flag.with_reflog, i64 0, i64 0))
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @argv_find_rev_flag(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @argv_parse_rev_flag.with_reflog, i64 0, i64 0), i32 %24, i8* %25, i64 %26, i64* null, i32* null, i32* %8)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @argv_parse_rev_flag.search_no_graph, i64 0, i64 0))
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @argv_find_rev_flag(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @argv_parse_rev_flag.search_no_graph, i64 0, i64 0), i32 %30, i8* %31, i64 %32, i64* %9, i32* %7, i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %29, %23, %17, %2
  %36 = load %struct.rev_flags*, %struct.rev_flags** %5, align 8
  %37 = icmp ne %struct.rev_flags* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  br label %45

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.rev_flags*, %struct.rev_flags** %5, align 8
  %48 = getelementptr inbounds %struct.rev_flags, %struct.rev_flags* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.rev_flags*, %struct.rev_flags** %5, align 8
  %51 = getelementptr inbounds %struct.rev_flags, %struct.rev_flags* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.rev_flags*, %struct.rev_flags** %5, align 8
  %54 = getelementptr inbounds %struct.rev_flags, %struct.rev_flags* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %45, %35
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @argv_find_rev_flag(i8**, i32, i8*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
