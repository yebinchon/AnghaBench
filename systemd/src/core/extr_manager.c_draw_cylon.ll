; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_draw_cylon.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_draw_cylon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CYLON_BUFFER_EXTRA = common dso_local global i32 0, align 4
@ANSI_RED = common dso_local global i32 0, align 4
@ANSI_HIGHLIGHT_RED = common dso_local global i32 0, align 4
@ANSI_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i32)* @draw_cylon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_cylon(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @CYLON_BUFFER_EXTRA, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add i32 %12, %13
  %15 = add i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = icmp uge i64 %11, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, 1
  %23 = icmp ule i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %46

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ugt i32 %29, 2
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub i32 %33, 2
  %35 = call i8* @mempset(i8* %32, i8 signext 32, i32 %34)
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %31, %28
  %37 = call i64 (...) @log_get_show_color()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @ANSI_RED, align 4
  %42 = call i8* @stpcpy(i8* %40, i32 %41)
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  store i8 42, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ugt i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ule i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = call i64 (...) @log_get_show_color()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* @ANSI_HIGHLIGHT_RED, align 4
  %59 = call i8* @stpcpy(i8* %57, i32 %58)
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %9, align 8
  store i8 42, i8* %61, align 1
  br label %63

63:                                               ; preds = %60, %49, %46
  %64 = call i64 (...) @log_get_show_color()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* @ANSI_NORMAL, align 4
  %69 = call i8* @stpcpy(i8* %67, i32 %68)
  store i8* %69, i8** %9, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %70
  %75 = call i64 (...) @log_get_show_color()
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* @ANSI_RED, align 4
  %80 = call i8* @stpcpy(i8* %78, i32 %79)
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  store i8 42, i8* %82, align 1
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub i32 %85, 1
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sub i32 %90, 1
  %92 = load i32, i32* %8, align 4
  %93 = sub i32 %91, %92
  %94 = call i8* @mempset(i8* %89, i8 signext 32, i32 %93)
  store i8* %94, i8** %9, align 8
  br label %95

95:                                               ; preds = %88, %81
  %96 = call i64 (...) @log_get_show_color()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* @ANSI_NORMAL, align 4
  %101 = call i32 @strcpy(i8* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  br label %103

103:                                              ; preds = %102, %70
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @mempset(i8*, i8 signext, i32) #1

declare dso_local i64 @log_get_show_color(...) #1

declare dso_local i8* @stpcpy(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
