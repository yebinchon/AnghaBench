; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_push.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_block = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.TYPE_2__* }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_block*, i8*, i32)* @wb_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_push(%struct.write_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.write_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.write_block* %0, %struct.write_block** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load %struct.write_block*, %struct.write_block** %4, align 8
  %11 = getelementptr inbounds %struct.write_block, %struct.write_block* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BLOCK_SIZE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %58, %15
  %17 = call %struct.TYPE_2__* (...) @blk_alloc()
  %18 = load %struct.write_block*, %struct.write_block** %4, align 8
  %19 = getelementptr inbounds %struct.write_block, %struct.write_block* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %21, align 8
  %22 = load %struct.write_block*, %struct.write_block** %4, align 8
  %23 = getelementptr inbounds %struct.write_block, %struct.write_block* %22, i32 0, i32 2
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %23, align 8
  %24 = load %struct.write_block*, %struct.write_block** %4, align 8
  %25 = getelementptr inbounds %struct.write_block, %struct.write_block* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %16, %3
  %27 = load %struct.write_block*, %struct.write_block** %4, align 8
  %28 = getelementptr inbounds %struct.write_block, %struct.write_block* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BLOCK_SIZE, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %30, %31
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %26
  %35 = load %struct.write_block*, %struct.write_block** %4, align 8
  %36 = getelementptr inbounds %struct.write_block, %struct.write_block* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.write_block*, %struct.write_block** %4, align 8
  %41 = getelementptr inbounds %struct.write_block, %struct.write_block* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %39, %43
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @memcpy(i64 %44, i8* %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.write_block*, %struct.write_block** %4, align 8
  %50 = getelementptr inbounds %struct.write_block, %struct.write_block* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.write_block*, %struct.write_block** %4, align 8
  %55 = getelementptr inbounds %struct.write_block, %struct.write_block* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %89

58:                                               ; preds = %26
  %59 = load i32, i32* @BLOCK_SIZE, align 4
  %60 = load %struct.write_block*, %struct.write_block** %4, align 8
  %61 = getelementptr inbounds %struct.write_block, %struct.write_block* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %8, align 4
  %64 = load %struct.write_block*, %struct.write_block** %4, align 8
  %65 = getelementptr inbounds %struct.write_block, %struct.write_block* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.write_block*, %struct.write_block** %4, align 8
  %70 = getelementptr inbounds %struct.write_block, %struct.write_block* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %68, %72
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @memcpy(i64 %73, i8* %74, i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.write_block*, %struct.write_block** %4, align 8
  %83 = getelementptr inbounds %struct.write_block, %struct.write_block* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %16

89:                                               ; preds = %34
  ret void
}

declare dso_local %struct.TYPE_2__* @blk_alloc(...) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
