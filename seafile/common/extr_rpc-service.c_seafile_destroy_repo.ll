; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_destroy_repo.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_destroy_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Argument should not be null\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid repo id\00", align 1
@seaf = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"No such repository\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_destroy_repo(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32**, i32*** %5, align 8
  %11 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %12 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %13 = call i32 @g_set_error(i32** %10, i32 %11, i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @is_uuid_valid(i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %21 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %22 = call i32 @g_set_error(i32** %19, i32 %20, i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %39

23:                                               ; preds = %14
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32* @seaf_repo_manager_get_repo(i32 %26, i8* %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %23
  %32 = load i32**, i32*** %5, align 8
  %33 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %34 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %35 = call i32 @g_set_error(i32** %32, i32 %33, i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %39

36:                                               ; preds = %23
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @do_unsync_repo(i32* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %31, %18, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local i32 @is_uuid_valid(i8*) #1

declare dso_local i32* @seaf_repo_manager_get_repo(i32, i8*) #1

declare dso_local i32 @do_unsync_repo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
