; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_ll_rw_block.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_ll_rw_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }

@SWRITE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ll_rw_block(i32 %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %64, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %67

13:                                               ; preds = %9
  %14 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %14, i64 %16
  %18 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  store %struct.buffer_head* %18, %struct.buffer_head** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SWRITE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %24 = call i32 @lock_buffer(%struct.buffer_head* %23)
  br label %31

25:                                               ; preds = %13
  %26 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %27 = call i64 @test_set_buffer_locked(%struct.buffer_head* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %64

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @WRITE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SWRITE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35, %31
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %45 = call i32 @get_bh(%struct.buffer_head* %44)
  %46 = load i32, i32* @WRITE, align 4
  %47 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %48 = call i32 @submit_bh(i32 %46, %struct.buffer_head* %47)
  br label %64

49:                                               ; preds = %39
  br label %61

50:                                               ; preds = %35
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = call i32 @buffer_uptodate(%struct.buffer_head* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = call i32 @get_bh(%struct.buffer_head* %55)
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %59 = call i32 @submit_bh(i32 %57, %struct.buffer_head* %58)
  br label %64

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %49
  %62 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %63 = call i32 @unlock_buffer(%struct.buffer_head* %62)
  br label %64

64:                                               ; preds = %61, %54, %43, %29
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %9

67:                                               ; preds = %9
  ret void
}

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @test_set_buffer_locked(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
