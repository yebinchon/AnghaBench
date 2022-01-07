; ModuleID = '/home/carl/AnghaBench/toxcore/other/fun/extr_sign.c_load_file.c'
source_filename = "/home/carl/AnghaBench/toxcore/other/fun/extr_sign.c_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_file(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  store i8* null, i8** %13, align 8
  store i32 -1, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @SEEK_END, align 4
  %17 = call i32 @fseek(i32* %15, i32 0, i32 %16)
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @ftell(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @SEEK_SET, align 4
  %22 = call i32 @fseek(i32* %20, i32 0, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i64 @malloc(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  %27 = load i8**, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @fread(i8* %30, i32 1, i32 %31, i32* %32)
  %34 = icmp ne i32 %28, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %14
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @fclose(i32* %39)
  store i32 -2, i32* %3, align 4
  br label %50

41:                                               ; preds = %14
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %41, %35, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
