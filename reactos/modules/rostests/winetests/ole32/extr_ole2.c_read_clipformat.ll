; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_ole2.c_read_clipformat.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_ole2.c_read_clipformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"unhandled clipformat length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @read_clipformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_clipformat(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 -2, i32* %7, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @IStream_Read(i32* %8, i32* %6, i32 4, i32* %5)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %1
  store i32 -2, i32* %2, align 4
  br label %42

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %42

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @IStream_Read(i32* %26, i32* %7, i32 4, i32* %5)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 4
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %25
  store i32 -2, i32* %2, align 4
  br label %42

36:                                               ; preds = %31
  br label %40

37:                                               ; preds = %22
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ok(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %36
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %35, %21, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @IStream_Read(i32*, i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
