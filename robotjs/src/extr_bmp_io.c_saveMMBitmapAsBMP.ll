; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_bmp_io.c_saveMMBitmapAsBMP.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_bmp_io.c_saveMMBitmapAsBMP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saveMMBitmapAsBMP(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32* @createBitmapData(i32 %14, i64* %7)
  store i32* %15, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @fclose(i32* %18)
  store i32 -1, i32* %3, align 4
  br label %36

20:                                               ; preds = %13
  %21 = load i32*, i32** %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @fwrite(i32* %21, i64 %22, i32 1, i32* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @free(i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @fclose(i32* %29)
  store i32 -1, i32* %3, align 4
  br label %36

31:                                               ; preds = %20
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @free(i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @fclose(i32* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %26, %17, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @createBitmapData(i32, i64*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fwrite(i32*, i64, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
