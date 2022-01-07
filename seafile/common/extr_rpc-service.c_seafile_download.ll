; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_download.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid repo id\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid peer id\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Worktre must be specified\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Argument can't be NULL\00", align 1
@seaf = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @seafile_download(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i32 %12, i8* %13, i32** %14) #0 {
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32**, align 8
  store i8* %0, i8** %17, align 8
  store i32 %1, i32* %18, align 4
  store i8* %2, i8** %19, align 8
  store i8* %3, i8** %20, align 8
  store i8* %4, i8** %21, align 8
  store i8* %5, i8** %22, align 8
  store i8* %6, i8** %23, align 8
  store i8* %7, i8** %24, align 8
  store i8* %8, i8** %25, align 8
  store i8* %9, i8** %26, align 8
  store i8* %10, i8** %27, align 8
  store i8* %11, i8** %28, align 8
  store i32 %12, i32* %29, align 4
  store i8* %13, i8** %30, align 8
  store i32** %14, i32*** %31, align 8
  %32 = load i8*, i8** %17, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %15
  %35 = load i8*, i8** %17, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = icmp ne i32 %36, 36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %15
  %39 = load i32**, i32*** %31, align 8
  %40 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %41 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %42 = call i32 @g_set_error(i32** %39, i32 %40, i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %16, align 8
  br label %100

43:                                               ; preds = %34
  %44 = load i8*, i8** %19, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i8*, i8** %19, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = icmp ne i32 %48, 40
  br i1 %49, label %50, label %55

50:                                               ; preds = %46, %43
  %51 = load i32**, i32*** %31, align 8
  %52 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %53 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %54 = call i32 @g_set_error(i32** %51, i32 %52, i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %16, align 8
  br label %100

55:                                               ; preds = %46
  %56 = load i8*, i8** %21, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i32**, i32*** %31, align 8
  %60 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %61 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %62 = call i32 @g_set_error(i32** %59, i32 %60, i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %16, align 8
  br label %100

63:                                               ; preds = %55
  %64 = load i8*, i8** %22, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i8*, i8** %25, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i8*, i8** %26, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %27, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %72, %69, %66, %63
  %76 = load i32**, i32*** %31, align 8
  %77 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %78 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %79 = call i32 @g_set_error(i32** %76, i32 %77, i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i8* null, i8** %16, align 8
  br label %100

80:                                               ; preds = %72
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %17, align 8
  %85 = load i32, i32* %18, align 4
  %86 = load i8*, i8** %19, align 8
  %87 = load i8*, i8** %20, align 8
  %88 = load i8*, i8** %22, align 8
  %89 = load i8*, i8** %23, align 8
  %90 = load i8*, i8** %24, align 8
  %91 = load i32, i32* %29, align 4
  %92 = load i8*, i8** %28, align 8
  %93 = load i8*, i8** %21, align 8
  %94 = load i8*, i8** %25, align 8
  %95 = load i8*, i8** %26, align 8
  %96 = load i8*, i8** %27, align 8
  %97 = load i8*, i8** %30, align 8
  %98 = load i32**, i32*** %31, align 8
  %99 = call i8* @seaf_clone_manager_add_download_task(i32 %83, i8* %84, i32 %85, i8* %86, i8* %87, i8* %88, i8* %89, i8* %90, i32 %91, i8* %92, i8* %93, i8* %94, i8* %95, i8* %96, i8* %97, i32** %98)
  store i8* %99, i8** %16, align 8
  br label %100

100:                                              ; preds = %80, %75, %58, %50, %38
  %101 = load i8*, i8** %16, align 8
  ret i8* %101
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local i8* @seaf_clone_manager_add_download_task(i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
