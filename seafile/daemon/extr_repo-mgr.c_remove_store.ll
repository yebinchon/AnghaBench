; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_remove_store.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_remove_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Removing store %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to open obj dir %s.\0A\00", align 1
@REMOVE_OBJECTS_BATCH = common dso_local global i32 0, align 4
@G_USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @remove_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_store(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @g_build_filename(i8* %15, i8* %16, i32* null)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32* @g_dir_open(i8* %18, i32 0, i32* null)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @g_free(i8* %23)
  store i32 0, i32* %4, align 4
  br label %87

25:                                               ; preds = %3
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @seaf_message(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %73, %25
  %29 = load i32*, i32** %9, align 8
  %30 = call i8* @g_dir_read_name(i32* %29)
  store i8* %30, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %80

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i8* @g_build_filename(i8* %33, i8* %34, i32* null)
  store i8* %35, i8** %13, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i32* @g_dir_open(i8* %36, i32 0, i32* null)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %32
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @seaf_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @g_dir_close(i32* %43)
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @g_free(i8* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @g_free(i8* %47)
  store i32 -1, i32* %4, align 4
  br label %87

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %70, %49
  %51 = load i32*, i32** %10, align 8
  %52 = call i8* @g_dir_read_name(i32* %51)
  store i8* %52, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load i8*, i8** %13, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i8* @g_build_filename(i8* %55, i8* %56, i32* null)
  store i8* %57, i8** %14, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @g_unlink(i8* %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @REMOVE_OBJECTS_BATCH, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load i32, i32* @G_USEC_PER_SEC, align 4
  %67 = mul nsw i32 5, %66
  %68 = call i32 @g_usleep(i32 %67)
  %69 = load i32*, i32** %7, align 8
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %54
  %71 = load i8*, i8** %14, align 8
  %72 = call i32 @g_free(i8* %71)
  br label %50

73:                                               ; preds = %50
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @g_dir_close(i32* %74)
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @g_rmdir(i8* %76)
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @g_free(i8* %78)
  br label %28

80:                                               ; preds = %28
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @g_dir_close(i32* %81)
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @g_rmdir(i8* %83)
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @g_free(i8* %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %80, %40, %22
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i32* @g_dir_open(i8*, i32, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @seaf_message(i8*, i8*) #1

declare dso_local i8* @g_dir_read_name(i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32 @g_dir_close(i32*) #1

declare dso_local i32 @g_unlink(i8*) #1

declare dso_local i32 @g_usleep(i32) #1

declare dso_local i32 @g_rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
