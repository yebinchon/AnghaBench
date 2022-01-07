; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_sys_literal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_sys_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WC_E_QUOTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @reader_parse_sys_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_sys_literal(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i8* @reader_get_ptr(i32* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 34
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 39
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @WC_E_QUOTE, align 4
  store i32 %21, i32* %3, align 4
  br label %73

22:                                               ; preds = %15, %2
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %7, align 1
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @reader_skipn(i32* %25, i32 1)
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @reader_get_ptr(i32* %27)
  store i8* %28, i8** %6, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @reader_get_cur(i32* %29)
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %45, %22
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @is_char(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8, i8* %7, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %39, %41
  br label %43

43:                                               ; preds = %36, %31
  %44 = phi i1 [ false, %31 ], [ %42, %36 ]
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @reader_skipn(i32* %46, i32 1)
  %48 = load i32*, i32** %4, align 8
  %49 = call i8* @reader_get_ptr(i32* %48)
  store i8* %49, i8** %6, align 8
  br label %31

50:                                               ; preds = %43
  %51 = load i64, i64* %8, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @reader_get_cur(i32* %52)
  %54 = load i64, i64* %8, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @reader_init_strvalue(i64 %51, i64 %55, i32* %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* %7, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @reader_skipn(i32* %65, i32 1)
  br label %67

67:                                               ; preds = %64, %50
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @debug_strval(i32* %68, i32* %69)
  %71 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @S_OK, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %20
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i8* @reader_get_ptr(i32*) #1

declare dso_local i32 @reader_skipn(i32*, i32) #1

declare dso_local i64 @reader_get_cur(i32*) #1

declare dso_local i64 @is_char(i8 signext) #1

declare dso_local i32 @reader_init_strvalue(i64, i64, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_strval(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
