; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_get_head_commit.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_get_head_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@seaf = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Failed to get repo %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get head for repo %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @seaf_repo_get_head_commit(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @seaf, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.TYPE_6__* @seaf_repo_manager_get_repo(i32 %8, i8* %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @seaf_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32* null, i32** %2, align 8
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @seaf, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @seaf_commit_manager_get_commit(i32 %19, i8* %20, i32 %23, i32 %28)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %16
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @seaf_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32* null, i32** %2, align 8
  br label %37

35:                                               ; preds = %16
  %36 = load i32*, i32** %5, align 8
  store i32* %36, i32** %2, align 8
  br label %37

37:                                               ; preds = %35, %32, %13
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
}

declare dso_local %struct.TYPE_6__* @seaf_repo_manager_get_repo(i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32* @seaf_commit_manager_get_commit(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
