; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_load_repos.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_load_repos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"SELECT repo_id FROM DeletedRepo\00", align 1
@remove_deleted_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error removing deleted repos.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SELECT repo_id FROM Repo;\00", align 1
@load_repo_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Error read repo db.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @load_repos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_repos(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32* @open_db(i32* %7, i8* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %31

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @remove_deleted_repo, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @sqlite_foreach_selected_row(i32* %14, i8* %15, i32 %16, i32* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 @seaf_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %31

22:                                               ; preds = %13
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @load_repo_cb, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @sqlite_foreach_selected_row(i32* %23, i8* %24, i32 %25, i32* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @seaf_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %12, %20, %29, %22
  ret void
}

declare dso_local i32* @open_db(i32*, i8*) #1

declare dso_local i64 @sqlite_foreach_selected_row(i32*, i8*, i32, i32*) #1

declare dso_local i32 @seaf_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
