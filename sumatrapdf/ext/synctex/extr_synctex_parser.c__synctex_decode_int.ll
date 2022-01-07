; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_decode_int.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_decode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYNCTEX_STATUS_BAD_ARGUMENT = common dso_local global i64 0, align 8
@SYNCTEX_BUFFER_MIN_SIZE = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_EOF = common dso_local global i64 0, align 8
@SYNCTEX_CUR = common dso_local global i8* null, align 8
@SYNCTEX_STATUS_NOT_OK = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_synctex_decode_int(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* null, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @SYNCTEX_STATUS_BAD_ARGUMENT, align 8
  store i64 %14, i64* %3, align 8
  br label %68

15:                                               ; preds = %2
  %16 = load i64, i64* @SYNCTEX_BUFFER_MIN_SIZE, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @_synctex_buffer_get_available_size(i32* %17, i64* %9)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %3, align 8
  br label %68

24:                                               ; preds = %15
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  store i64 %28, i64* %3, align 8
  br label %68

29:                                               ; preds = %24
  %30 = load i8*, i8** @SYNCTEX_CUR, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 58
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 44
  br i1 %39, label %40, label %50

40:                                               ; preds = %35, %29
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* @SYNCTEX_STATUS_NOT_OK, align 8
  store i64 %48, i64* %3, align 8
  br label %68

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strtol(i8* %51, i8** %7, i32 10)
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ugt i8* %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i8*, i8** %7, align 8
  store i8* %58, i8** @SYNCTEX_CUR, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  store i64 %65, i64* %3, align 8
  br label %68

66:                                               ; preds = %50
  %67 = load i64, i64* @SYNCTEX_STATUS_NOT_OK, align 8
  store i64 %67, i64* %3, align 8
  br label %68

68:                                               ; preds = %66, %64, %47, %27, %22, %13
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

declare dso_local i64 @_synctex_buffer_get_available_size(i32*, i64*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
