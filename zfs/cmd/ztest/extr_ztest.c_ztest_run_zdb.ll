; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_run_zdb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_run_zdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s -bcc%s%s -G -d -Y -U %s %s\00", align 1
@ztest_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@spa_config_path = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"Executing %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"zdb \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ztest_dump_core = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"'%s' exit code %d\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"'%s' died with signal %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ztest_run_zdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ztest_run_zdb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = load i32, i32* @MAXNAMELEN, align 4
  %11 = add nsw i32 %9, %10
  %12 = add nsw i32 %11, 20
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @UMEM_NOFAIL, align 4
  %15 = call i8* @umem_alloc(i32 %13, i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @UMEM_NOFAIL, align 4
  %18 = call i8* @umem_alloc(i32 %16, i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i32, i32* @UMEM_NOFAIL, align 4
  %20 = call i8* @umem_alloc(i32 1024, i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ztest_get_zdb_bin(i8* %21, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %27 = icmp sge i32 %26, 3
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %31 = icmp sge i32 %30, 4
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %34 = load i8*, i8** @spa_config_path, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %29, i8* %33, i8* %34, i8* %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %38 = icmp sge i32 %37, 5
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @strstr(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %42 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %1
  %44 = load i8*, i8** %5, align 8
  %45 = call i32* @popen(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %45, i32** %8, align 8
  br label %46

46:                                               ; preds = %57, %43
  %47 = load i8*, i8** %6, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* @fgets(i8* %47, i32 1024, i32* %48)
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %53 = icmp sge i32 %52, 3
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %46

58:                                               ; preds = %46
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @pclose(i32* %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %79

64:                                               ; preds = %58
  store i64 0, i64* @ztest_dump_core, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i64 @WIFEXITED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @WEXITSTATUS(i32 %70)
  %72 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %69, i32 %71)
  br label %78

73:                                               ; preds = %64
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @WTERMSIG(i32 %75)
  %77 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %74, i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i8*, i8** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @umem_free(i8* %80, i32 %81)
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @umem_free(i8* %83, i32 %84)
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @umem_free(i8* %86, i32 1024)
  ret void
}

declare dso_local i8* @umem_alloc(i32, i32) #1

declare dso_local i32 @ztest_get_zdb_bin(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @fatal(i32, i8*, i8*, i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @umem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
