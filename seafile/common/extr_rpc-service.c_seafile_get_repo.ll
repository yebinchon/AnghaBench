; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_get_repo.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_get_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Argument should not be null\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid repo id\00", align 1
@seaf = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @seafile_get_repo(i8* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %13 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %14 = call i32 @g_set_error(i32** %11, i32 %12, i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %37

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @is_uuid_valid(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32**, i32*** %5, align 8
  %21 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %22 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %23 = call i32 @g_set_error(i32** %20, i32 %21, i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %37

24:                                               ; preds = %15
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i32* @seaf_repo_manager_get_repo(i32 %27, i8* %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32* null, i32** %3, align 8
  br label %37

33:                                               ; preds = %24
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @convert_repo(i32* %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  store i32* %36, i32** %3, align 8
  br label %37

37:                                               ; preds = %33, %32, %19, %10
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local i32 @is_uuid_valid(i8*) #1

declare dso_local i32* @seaf_repo_manager_get_repo(i32, i8*) #1

declare dso_local i32* @convert_repo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
