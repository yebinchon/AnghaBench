; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_badblocks.c_bb_output.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_badblocks.c_bb_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bb_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%lu\0A\00", align 1
@bb_prefix = common dso_local global i32 0, align 4
@log_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Block %lu: %s error\0A\00", align 1
@READ_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@WRITE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"corruption\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"%sError %d adding to in-memory bad block list\00", align 1
@bb_iter = common dso_local global i64 0, align 8
@next_bad = common dso_local global i64 0, align 8
@num_read_errors = common dso_local global i32 0, align 4
@num_write_errors = common dso_local global i32 0, align 4
@CORRUPTION_ERROR = common dso_local global i32 0, align 4
@num_corruption_errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @bb_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bb_output(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @bb_list, align 4
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @bb_badblocks_list_test(i32 %7, i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

12:                                               ; preds = %2
  %13 = load i32, i32* @bb_prefix, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @uprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %14)
  %16 = load i32, i32* @log_fd, align 4
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @READ_ERROR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %28

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @WRITE_ERROR, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  br label %28

28:                                               ; preds = %22, %21
  %29 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %21 ], [ %27, %22 ]
  %30 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %17, i8* %29)
  %31 = load i32, i32* @log_fd, align 4
  %32 = call i32 @fflush(i32 %31)
  %33 = load i32, i32* @bb_list, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @bb_badblocks_list_add(i32 %33, i64 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32, i32* @bb_prefix, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @uprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %39, i64 %40)
  store i32 0, i32* %3, align 4
  br label %76

42:                                               ; preds = %28
  %43 = load i64, i64* @bb_iter, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @next_bad, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* @bb_iter, align 8
  %51 = call i32 @bb_badblocks_list_iterate(i64 %50, i64* @next_bad)
  br label %52

52:                                               ; preds = %49, %45, %42
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @READ_ERROR, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @num_read_errors, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @num_read_errors, align 4
  br label %75

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @WRITE_ERROR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @num_write_errors, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @num_write_errors, align 4
  br label %74

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @CORRUPTION_ERROR, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @num_corruption_errors, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @num_corruption_errors, align 4
  br label %73

73:                                               ; preds = %70, %66
  br label %74

74:                                               ; preds = %73, %63
  br label %75

75:                                               ; preds = %74, %56
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %38, %11
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @bb_badblocks_list_test(i32, i64) #1

declare dso_local i32 @uprintf(i8*, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @bb_badblocks_list_add(i32, i64) #1

declare dso_local i32 @bb_badblocks_list_iterate(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
