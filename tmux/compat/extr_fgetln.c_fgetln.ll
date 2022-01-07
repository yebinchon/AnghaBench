; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_fgetln.c_fgetln.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_fgetln.c_fgetln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fgetln.buf = internal global i8* null, align 8
@fgetln.bufsz = internal global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fgetln(i32* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64*, i64** %5, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %71

17:                                               ; preds = %12
  %18 = load i8*, i8** @fgetln.buf, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @BUFSIZ, align 8
  %22 = call i8* @calloc(i32 1, i64 %21)
  store i8* %22, i8** @fgetln.buf, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %71

25:                                               ; preds = %20
  %26 = load i64, i64* @BUFSIZ, align 8
  store i64 %26, i64* @fgetln.bufsz, align 8
  br label %27

27:                                               ; preds = %25, %17
  br label %28

28:                                               ; preds = %61, %27
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @getc(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @EOF, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** @fgetln.buf, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  %39 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 %35, i8* %39, align 1
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @fgetln.bufsz, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %33
  %44 = load i8*, i8** @fgetln.buf, align 8
  %45 = load i64, i64* @fgetln.bufsz, align 8
  %46 = call i8* @reallocarray(i8* %44, i32 2, i64 %45)
  store i8* %46, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i8*, i8** @fgetln.buf, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* @errno, align 4
  store i8* null, i8** @fgetln.buf, align 8
  store i64 0, i64* @fgetln.bufsz, align 8
  store i8* null, i8** %3, align 8
  br label %71

53:                                               ; preds = %43
  %54 = load i8*, i8** %7, align 8
  store i8* %54, i8** @fgetln.buf, align 8
  %55 = load i64, i64* @fgetln.bufsz, align 8
  %56 = mul i64 2, %55
  store i64 %56, i64* @fgetln.bufsz, align 8
  br label %57

57:                                               ; preds = %53, %33
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %62

61:                                               ; preds = %57
  br label %28

62:                                               ; preds = %60, %28
  %63 = load i64, i64* %6, align 8
  %64 = load i64*, i64** %5, align 8
  store i64 %63, i64* %64, align 8
  %65 = icmp ne i64 %63, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i8*, i8** @fgetln.buf, align 8
  br label %69

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i8* [ %67, %66 ], [ null, %68 ]
  store i8* %70, i8** %3, align 8
  br label %71

71:                                               ; preds = %69, %48, %24, %15
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i8* @reallocarray(i8*, i32, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
