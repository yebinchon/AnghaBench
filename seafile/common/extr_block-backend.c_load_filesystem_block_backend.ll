; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_block-backend.c_load_filesystem_block_backend.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_block-backend.c_load_filesystem_block_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"block_backend\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"block_dir\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Block dir not set in config.\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tmp_dir\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Block tmp dir not set in config.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @load_filesystem_block_backend(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @g_key_file_get_string(i32* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @seaf_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %29

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @g_key_file_get_string(i32* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 @seaf_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %29

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32* @block_backend_fs_new(i8* %21, i8* %22)
  store i32* %23, i32** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @g_free(i8* %24)
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @g_free(i8* %26)
  %28 = load i32*, i32** %4, align 8
  store i32* %28, i32** %2, align 8
  br label %29

29:                                               ; preds = %20, %18, %11
  %30 = load i32*, i32** %2, align 8
  ret i32* %30
}

declare dso_local i8* @g_key_file_get_string(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32* @block_backend_fs_new(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
