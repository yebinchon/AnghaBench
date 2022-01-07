; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_rb_read.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_rb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_block = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.read_block*, i32)* @rb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rb_read(%struct.read_block* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.read_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.read_block* %0, %struct.read_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.read_block*, %struct.read_block** %4, align 8
  %8 = getelementptr inbounds %struct.read_block, %struct.read_block* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.read_block*, %struct.read_block** %4, align 8
  %15 = getelementptr inbounds %struct.read_block, %struct.read_block* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.read_block*, %struct.read_block** %4, align 8
  %19 = getelementptr inbounds %struct.read_block, %struct.read_block* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.read_block*, %struct.read_block** %4, align 8
  %24 = getelementptr inbounds %struct.read_block, %struct.read_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.read_block*, %struct.read_block** %4, align 8
  %28 = getelementptr inbounds %struct.read_block, %struct.read_block* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %29, i64 %31
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %13, %12
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
