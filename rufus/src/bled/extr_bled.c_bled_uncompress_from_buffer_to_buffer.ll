; ModuleID = '/home/carl/AnghaBench/rufus/src/bled/extr_bled.c_bled_uncompress_from_buffer_to_buffer.c'
source_filename = "/home/carl/AnghaBench/rufus/src/bled/extr_bled.c_bled_uncompress_from_buffer_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bled_initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"The library has not been initialized\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid parameter\00", align 1
@bb_virtual_buf = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Can not decompress more than one buffer at once\00", align 1
@bb_virtual_len = common dso_local global i64 0, align 8
@bb_virtual_pos = common dso_local global i64 0, align 8
@bb_virtual_fd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bled_uncompress_from_buffer_to_buffer(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @bled_initialized, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = call i32 @bb_error_msg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %38

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %17
  %24 = call i32 @bb_error_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %38

25:                                               ; preds = %20
  %26 = load i8*, i8** @bb_virtual_buf, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @bb_error_msg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %38

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** @bb_virtual_buf, align 8
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* @bb_virtual_len, align 8
  store i64 0, i64* @bb_virtual_pos, align 8
  store i32 0, i32* @bb_virtual_fd, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @bled_uncompress_to_buffer(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %33, i64 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  store i8* null, i8** @bb_virtual_buf, align 8
  store i64 0, i64* @bb_virtual_len, align 8
  store i32 -1, i32* @bb_virtual_fd, align 4
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %30, %28, %23, %15
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @bb_error_msg(i8*) #1

declare dso_local i32 @bled_uncompress_to_buffer(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
