; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_do_rename_in_worktree.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_do_rename_in_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to rename %s to %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32*, i32*)* @do_rename_in_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rename_in_worktree(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @g_build_filename(i8* %12, i32 %15, i32* null)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @seaf_util_exists(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strlen(i32 %27)
  %29 = call i8* @build_checkout_path(i8* %21, i32 %24, i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  store i32 -1, i32* %11, align 4
  br label %48

33:                                               ; preds = %20
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @seaf_util_rename(i8* %34, i8* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 @seaf_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40, i32 %42)
  store i32 -1, i32* %11, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @g_free(i8* %45)
  br label %47

47:                                               ; preds = %44, %4
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @g_free(i8* %49)
  %51 = load i32, i32* %11, align 4
  ret i32 %51
}

declare dso_local i8* @g_build_filename(i8*, i32, i32*) #1

declare dso_local i64 @seaf_util_exists(i8*) #1

declare dso_local i8* @build_checkout_path(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @seaf_util_rename(i8*, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
