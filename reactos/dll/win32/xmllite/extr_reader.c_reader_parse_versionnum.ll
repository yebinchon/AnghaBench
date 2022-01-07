; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_versionnum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_versionnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reader_parse_versionnum.onedotW = internal constant [3 x i8] c"1.\00", align 1
@WC_E_XMLDECL = common dso_local global i32 0, align 4
@WC_E_DIGIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"version=%s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @reader_parse_versionnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_versionnum(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @reader_cmp(i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @reader_parse_versionnum.onedotW, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @WC_E_XMLDECL, align 4
  store i32 %13, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @reader_get_cur(i32* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @reader_skipn(i32* %17, i32 2)
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @reader_get_ptr(i32* %19)
  store i8* %20, i8** %6, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %33, %14
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sge i32 %24, 48
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sle i32 %29, 57
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ false, %21 ], [ %30, %26 ]
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @reader_skipn(i32* %34, i32 1)
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @reader_get_ptr(i32* %36)
  store i8* %37, i8** %6, align 8
  br label %21

38:                                               ; preds = %31
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @WC_E_DIGIT, align 4
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %38
  %45 = load i64, i64* %8, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @reader_get_cur(i32* %46)
  %48 = load i64, i64* %8, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @reader_init_strvalue(i64 %45, i64 %49, i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @debug_strval(i32* %52, i32* %53)
  %55 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @S_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %44, %42, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @reader_cmp(i32*, i8*) #1

declare dso_local i64 @reader_get_cur(i32*) #1

declare dso_local i32 @reader_skipn(i32*, i32) #1

declare dso_local i8* @reader_get_ptr(i32*) #1

declare dso_local i32 @reader_init_strvalue(i64, i64, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_strval(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
