; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_read_state_file.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_read_state_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@binlog_enabled = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@STATE_FILE_MAGIC = common dso_local global i64 0, align 8
@TLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_state_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i64, i64* @binlog_enabled, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %78

12:                                               ; preds = %0
  %13 = call i32 (...) @get_state_filename()
  %14 = load i32, i32* @O_CREAT, align 4
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @open(i32 %13, i32 %16, i32 384)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %78

21:                                               ; preds = %12
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @read(i32 %22, i32* %3, i32 4)
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @close(i32 %26)
  br label %78

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = load i64, i64* @STATE_FILE_MAGIC, align 8
  %31 = trunc i64 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @close(i32 %34)
  br label %78

36:                                               ; preds = %28
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @read(i32 %37, i32* %2, i32 4)
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @close(i32 %41)
  br label %78

43:                                               ; preds = %36
  %44 = load i32, i32* %2, align 4
  %45 = icmp sge i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %50 = call i32 @read(i32 %48, i32* %49, i32 16)
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @close(i32 %53)
  br label %78

55:                                               ; preds = %43
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  store i32 %57, i32* %5, align 4
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %6, align 4
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %7, align 4
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @close(i32 %64)
  %66 = load i32, i32* @TLS, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @bl_do_set_seq(i32 %66, i32 %67)
  %69 = load i32, i32* @TLS, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @bl_do_set_pts(i32 %69, i32 %70)
  %72 = load i32, i32* @TLS, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @bl_do_set_qts(i32 %72, i32 %73)
  %75 = load i32, i32* @TLS, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @bl_do_set_date(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %55, %52, %40, %33, %25, %20, %11
  ret void
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @get_state_filename(...) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bl_do_set_seq(i32, i32) #1

declare dso_local i32 @bl_do_set_pts(i32, i32) #1

declare dso_local i32 @bl_do_set_qts(i32, i32) #1

declare dso_local i32 @bl_do_set_date(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
