; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_do_write_chunk.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_do_write_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@seaf = common dso_local global %struct.TYPE_2__* null, align 8
@BLOCK_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to open block %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to write chunk %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to close block %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to commit chunk %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i8*, i32)* @do_write_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write_chunk(i8* %0, i32 %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [41 x i8], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds [41 x i8], [41 x i8]* %13, i64 0, i64 0
  %21 = call i32 @rawdata_to_hex(i32* %19, i8* %20, i32 20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds [41 x i8], [41 x i8]* %13, i64 0, i64 0
  %28 = call i64 @seaf_block_manager_block_exists(i32* %24, i8* %25, i32 %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %86

31:                                               ; preds = %5
  %32 = load i32*, i32** %12, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds [41 x i8], [41 x i8]* %13, i64 0, i64 0
  %36 = load i32, i32* @BLOCK_WRITE, align 4
  %37 = call i32* @seaf_block_manager_open_block(i32* %32, i8* %33, i32 %34, i8* %35, i32 %36)
  store i32* %37, i32** %14, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds [41 x i8], [41 x i8]* %13, i64 0, i64 0
  %42 = call i32 @seaf_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %41)
  store i32 -1, i32* %6, align 4
  br label %86

43:                                               ; preds = %31
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @seaf_block_manager_write_block(i32* %44, i32* %45, i8* %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = getelementptr inbounds [41 x i8], [41 x i8]* %13, i64 0, i64 0
  %53 = call i32 @seaf_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i64 @seaf_block_manager_close_block(i32* %54, i32* %55)
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @seaf_block_manager_block_handle_free(i32* %57, i32* %58)
  store i32 -1, i32* %6, align 4
  br label %86

60:                                               ; preds = %43
  %61 = load i32*, i32** %12, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call i64 @seaf_block_manager_close_block(i32* %61, i32* %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = getelementptr inbounds [41 x i8], [41 x i8]* %13, i64 0, i64 0
  %67 = call i32 @seaf_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @seaf_block_manager_block_handle_free(i32* %68, i32* %69)
  store i32 -1, i32* %6, align 4
  br label %86

71:                                               ; preds = %60
  %72 = load i32*, i32** %12, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = call i64 @seaf_block_manager_commit_block(i32* %72, i32* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds [41 x i8], [41 x i8]* %13, i64 0, i64 0
  %78 = call i32 @seaf_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  %79 = load i32*, i32** %12, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @seaf_block_manager_block_handle_free(i32* %79, i32* %80)
  store i32 -1, i32* %6, align 4
  br label %86

82:                                               ; preds = %71
  %83 = load i32*, i32** %12, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @seaf_block_manager_block_handle_free(i32* %83, i32* %84)
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %76, %65, %51, %40, %30
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @rawdata_to_hex(i32*, i8*, i32) #1

declare dso_local i64 @seaf_block_manager_block_exists(i32*, i8*, i32, i8*) #1

declare dso_local i32* @seaf_block_manager_open_block(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32 @seaf_block_manager_write_block(i32*, i32*, i8*, i32) #1

declare dso_local i64 @seaf_block_manager_close_block(i32*, i32*) #1

declare dso_local i32 @seaf_block_manager_block_handle_free(i32*, i32*) #1

declare dso_local i64 @seaf_block_manager_commit_block(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
