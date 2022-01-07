; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_rndr_newbuf.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_rndr_newbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64 }
%struct.sd_markdown = type { %struct.stack* }
%struct.stack = type { i64, i64, %struct.buf** }

@rndr_newbuf.buf_size = internal constant [2 x i64] [i64 256, i64 64], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf* (%struct.sd_markdown*, i32)* @rndr_newbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf* @rndr_newbuf(%struct.sd_markdown* %0, i32 %1) #0 {
  %3 = alloca %struct.sd_markdown*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.stack*, align 8
  store %struct.sd_markdown* %0, %struct.sd_markdown** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.buf* null, %struct.buf** %5, align 8
  %7 = load %struct.sd_markdown*, %struct.sd_markdown** %3, align 8
  %8 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %7, i32 0, i32 0
  %9 = load %struct.stack*, %struct.stack** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.stack, %struct.stack* %9, i64 %11
  store %struct.stack* %12, %struct.stack** %6, align 8
  %13 = load %struct.stack*, %struct.stack** %6, align 8
  %14 = getelementptr inbounds %struct.stack, %struct.stack* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.stack*, %struct.stack** %6, align 8
  %17 = getelementptr inbounds %struct.stack, %struct.stack* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load %struct.stack*, %struct.stack** %6, align 8
  %22 = getelementptr inbounds %struct.stack, %struct.stack* %21, i32 0, i32 2
  %23 = load %struct.buf**, %struct.buf*** %22, align 8
  %24 = load %struct.stack*, %struct.stack** %6, align 8
  %25 = getelementptr inbounds %struct.stack, %struct.stack* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.buf*, %struct.buf** %23, i64 %26
  %28 = load %struct.buf*, %struct.buf** %27, align 8
  %29 = icmp ne %struct.buf* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.stack*, %struct.stack** %6, align 8
  %32 = getelementptr inbounds %struct.stack, %struct.stack* %31, i32 0, i32 2
  %33 = load %struct.buf**, %struct.buf*** %32, align 8
  %34 = load %struct.stack*, %struct.stack** %6, align 8
  %35 = getelementptr inbounds %struct.stack, %struct.stack* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds %struct.buf*, %struct.buf** %33, i64 %36
  %39 = load %struct.buf*, %struct.buf** %38, align 8
  store %struct.buf* %39, %struct.buf** %5, align 8
  %40 = load %struct.buf*, %struct.buf** %5, align 8
  %41 = getelementptr inbounds %struct.buf, %struct.buf* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %51

42:                                               ; preds = %20, %2
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* @rndr_newbuf.buf_size, i64 0, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.buf* @bufnew(i64 %46)
  store %struct.buf* %47, %struct.buf** %5, align 8
  %48 = load %struct.stack*, %struct.stack** %6, align 8
  %49 = load %struct.buf*, %struct.buf** %5, align 8
  %50 = call i32 @redcarpet_stack_push(%struct.stack* %48, %struct.buf* %49)
  br label %51

51:                                               ; preds = %42, %30
  %52 = load %struct.buf*, %struct.buf** %5, align 8
  ret %struct.buf* %52
}

declare dso_local %struct.buf* @bufnew(i64) #1

declare dso_local i32 @redcarpet_stack_push(%struct.stack*, %struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
