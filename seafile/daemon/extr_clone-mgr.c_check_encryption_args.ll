; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_check_encryption_args.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_check_encryption_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Magic must be specified\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported enc version\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Random key not specified\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Repo salt not specified\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i32**)* @check_encryption_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_encryption_args(i8* %0, i32 %1, i8* %2, i8* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32** %4, i32*** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = load i32**, i32*** %11, align 8
  %16 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %17 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %18 = call i32 @g_set_error(i32** %15, i32 %16, i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %6, align 4
  br label %70

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32**, i32*** %11, align 8
  %31 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %32 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %33 = call i32 @g_set_error(i32** %30, i32 %31, i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %6, align 4
  br label %70

35:                                               ; preds = %26, %23, %20
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %68

38:                                               ; preds = %35
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = icmp ne i32 %43, 96
  br i1 %44, label %45, label %51

45:                                               ; preds = %41, %38
  %46 = load i32**, i32*** %11, align 8
  %47 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %48 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %49 = call i32 @g_set_error(i32** %46, i32 %47, i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %6, align 4
  br label %70

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = icmp ne i32 %59, 64
  br i1 %60, label %61, label %67

61:                                               ; preds = %57, %54
  %62 = load i32**, i32*** %11, align 8
  %63 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %64 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %65 = call i32 @g_set_error(i32** %62, i32 %63, i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %6, align 4
  br label %70

67:                                               ; preds = %57, %51
  br label %68

68:                                               ; preds = %67, %35
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %61, %45, %29, %14
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
