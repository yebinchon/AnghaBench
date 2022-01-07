; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_block-backend-fs.c_block_backend_fs_remove_store.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_block-backend-fs.c_block_backend_fs_remove_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [30 x i8] c"Failed to open block dir %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @block_backend_fs_remove_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_backend_fs_remove_store(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %6, align 8
  store i8* null, i8** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @g_build_filename(i8* %19, i8* %20, i32* null)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32* @g_dir_open(i8* %22, i32 0, i32* null)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @g_free(i8* %27)
  store i32 0, i32* %3, align 4
  br label %78

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %64, %29
  %31 = load i32*, i32** %8, align 8
  %32 = call i8* @g_dir_read_name(i32* %31)
  store i8* %32, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i8* @g_build_filename(i8* %35, i8* %36, i32* null)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i32* @g_dir_open(i8* %38, i32 0, i32* null)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @seaf_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @g_dir_close(i32* %45)
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @g_free(i8* %47)
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @g_free(i8* %49)
  store i32 -1, i32* %3, align 4
  br label %78

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %56, %51
  %53 = load i32*, i32** %9, align 8
  %54 = call i8* @g_dir_read_name(i32* %53)
  store i8* %54, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i8* @g_build_filename(i8* %57, i8* %58, i32* null)
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @g_unlink(i8* %60)
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @g_free(i8* %62)
  br label %52

64:                                               ; preds = %52
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @g_dir_close(i32* %65)
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @g_rmdir(i8* %67)
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @g_free(i8* %69)
  br label %30

71:                                               ; preds = %30
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @g_dir_close(i32* %72)
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @g_rmdir(i8* %74)
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @g_free(i8* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %42, %26
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i32* @g_dir_open(i8*, i32, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_dir_read_name(i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32 @g_dir_close(i32*) #1

declare dso_local i32 @g_unlink(i8*) #1

declare dso_local i32 @g_rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
