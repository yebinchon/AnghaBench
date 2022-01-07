; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_filewrite.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_filewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed while writing %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_filewrite(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32* @stb__fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %51

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %41, %16
  %20 = load i64, i64* %9, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load i64, i64* %9, align 8
  %24 = icmp ugt i64 %23, 65536
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22
  %27 = load i64, i64* %9, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i64 [ 65536, %25 ], [ %27, %26 ]
  store i64 %29, i64* %10, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @fwrite(i8* %30, i32 1, i64 %31, i32* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %48

41:                                               ; preds = %28
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8* %47, i8** %8, align 8
  br label %19

48:                                               ; preds = %37, %19
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @fclose(i32* %49)
  br label %51

51:                                               ; preds = %48, %3
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  ret i32 %54
}

declare dso_local i32* @stb__fopen(i8*, i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
