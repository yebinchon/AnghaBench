; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_decompress.c_decompress.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_decompress.c_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"File %s is not compressed\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unsupported compression type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @decompress(i32 %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %28 [
    i32 132, label %13
    i32 128, label %19
    i32 130, label %25
  ]

13:                                               ; preds = %5
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i8* @decompress_lzw(i8* %14, i32 %15, i8* %16, i32* %17)
  store i8* %18, i8** %6, align 8
  br label %33

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i8* @decompress_zip(i8* %20, i32 %21, i8* %22, i32* %23)
  store i8* %24, i8** %6, align 8
  br label %33

25:                                               ; preds = %5
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %31

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32*, i32** %11, align 8
  store i32 0, i32* %32, align 4
  store i8* null, i8** %6, align 8
  br label %33

33:                                               ; preds = %31, %19, %13
  %34 = load i8*, i8** %6, align 8
  ret i8* %34
}

declare dso_local i8* @decompress_lzw(i8*, i32, i8*, i32*) #1

declare dso_local i8* @decompress_zip(i8*, i32, i8*, i32*) #1

declare dso_local i32 @log_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
