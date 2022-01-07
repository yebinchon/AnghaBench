; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_block-mgr.c_seaf_block_manager_verify_block.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_block-mgr.c_seaf_block_manager_verify_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to open block %s:%.8s.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@G_CHECKSUM_SHA1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to read block %s:%.8s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_block_manager_verify_block(i32* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [10240 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* @BLOCK_READ, align 4
  %23 = call i32* @seaf_block_manager_open_block(i32* %18, i8* %19, i32 %20, i8* %21, i32 %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %5
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @seaf_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  %30 = load i32, i32* @TRUE, align 4
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %6, align 4
  br label %83

33:                                               ; preds = %5
  %34 = load i32, i32* @G_CHECKSUM_SHA1, align 4
  %35 = call i32* @g_checksum_new(i32 %34)
  store i32* %35, i32** %15, align 8
  br label %36

36:                                               ; preds = %33, %56
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds [10240 x i8], [10240 x i8]* %13, i64 0, i64 0
  %40 = call i32 @seaf_block_manager_read_block(i32* %37, i32* %38, i8* %39, i32 10240)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @seaf_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %45)
  %47 = load i32, i32* @TRUE, align 4
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @g_checksum_free(i32* %49)
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %6, align 4
  br label %83

52:                                               ; preds = %36
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %62

56:                                               ; preds = %52
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds [10240 x i8], [10240 x i8]* %13, i64 0, i64 0
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @g_checksum_update(i32* %57, i32* %59, i32 %60)
  br label %36

62:                                               ; preds = %55
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @seaf_block_manager_close_block(i32* %63, i32* %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @seaf_block_manager_block_handle_free(i32* %66, i32* %67)
  %69 = load i32*, i32** %15, align 8
  %70 = call i8* @g_checksum_get_string(i32* %69)
  store i8* %70, i8** %16, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = call i64 @strcmp(i8* %71, i8* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %17, align 4
  br label %79

77:                                               ; preds = %62
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @g_checksum_free(i32* %80)
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %43, %26
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32* @seaf_block_manager_open_block(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i8*) #1

declare dso_local i32* @g_checksum_new(i32) #1

declare dso_local i32 @seaf_block_manager_read_block(i32*, i32*, i8*, i32) #1

declare dso_local i32 @g_checksum_free(i32*) #1

declare dso_local i32 @g_checksum_update(i32*, i32*, i32) #1

declare dso_local i32 @seaf_block_manager_close_block(i32*, i32*) #1

declare dso_local i32 @seaf_block_manager_block_handle_free(i32*, i32*) #1

declare dso_local i8* @g_checksum_get_string(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
