; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_set_repo_property.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_set_repo_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Arguments should not be empty\00", align 1
@seaf = common dso_local global %struct.TYPE_5__* null, align 8
@SEAF_ERR_BAD_REPO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't find Repo %s\00", align 1
@SEAF_ERR_INTERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to set key for repo %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_set_repo_property(i8* %0, i8* %1, i8* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17, %14, %4
  %21 = load i32**, i32*** %9, align 8
  %22 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %23 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %24 = call i32 (i32**, i32, i32, i8*, ...) @g_set_error(i32** %21, i32 %22, i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %58

25:                                               ; preds = %17
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call %struct.TYPE_4__* @seaf_repo_manager_get_repo(i32 %28, i8* %29)
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %11, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = load i32**, i32*** %9, align 8
  %35 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %36 = load i32, i32* @SEAF_ERR_BAD_REPO, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 (i32**, i32, i32, i8*, ...) @g_set_error(i32** %34, i32 %35, i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 -1, i32* %5, align 4
  br label %58

39:                                               ; preds = %25
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @seaf_repo_manager_set_repo_property(i32 %42, i32 %45, i8* %46, i8* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load i32**, i32*** %9, align 8
  %53 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %54 = load i32, i32* @SEAF_ERR_INTERNAL, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i32**, i32, i32, i8*, ...) @g_set_error(i32** %52, i32 %53, i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  store i32 -1, i32* %5, align 4
  br label %58

57:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %51, %33, %20
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @seaf_repo_manager_get_repo(i32, i8*) #1

declare dso_local i32 @seaf_repo_manager_set_repo_property(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
