; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_make_worktree.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_make_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_GENERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid local directory\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Already in sync\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i32, i32**)* @make_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_worktree(i32* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @g_strdup(i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i32 @remove_trail_slash(i8* %16)
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @seaf_stat(i8* %18, %struct.TYPE_3__* %11)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i8*, i8** %10, align 8
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  store i8* %24, i8** %5, align 8
  br label %71

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @S_ISDIR(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32**, i32*** %9, align 8
  %35 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %36 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %37 = call i32 @g_set_error(i32** %34, i32 %35, i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @g_free(i8* %38)
  store i8* null, i8** %5, align 8
  br label %71

40:                                               ; preds = %30
  %41 = load i8*, i8** %10, align 8
  %42 = call i8* @try_worktree(i8* %41)
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @g_free(i8* %43)
  %45 = load i8*, i8** %13, align 8
  store i8* %45, i8** %5, align 8
  br label %71

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46
  %48 = load i32*, i32** %6, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i64 @is_worktree_of_repo(i32* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load i32**, i32*** %9, align 8
  %57 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %58 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %59 = call i32 @g_set_error(i32** %56, i32 %57, i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @g_free(i8* %60)
  store i8* null, i8** %5, align 8
  br label %71

62:                                               ; preds = %52
  %63 = load i8*, i8** %10, align 8
  %64 = call i8* @try_worktree(i8* %63)
  store i8* %64, i8** %13, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @g_free(i8* %65)
  br label %69

67:                                               ; preds = %47
  %68 = load i8*, i8** %10, align 8
  store i8* %68, i8** %5, align 8
  br label %71

69:                                               ; preds = %62
  %70 = load i8*, i8** %13, align 8
  store i8* %70, i8** %5, align 8
  br label %71

71:                                               ; preds = %69, %67, %55, %40, %33, %22
  %72 = load i8*, i8** %5, align 8
  ret i8* %72
}

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @remove_trail_slash(i8*) #1

declare dso_local i32 @seaf_stat(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @try_worktree(i8*) #1

declare dso_local i64 @is_worktree_of_repo(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
