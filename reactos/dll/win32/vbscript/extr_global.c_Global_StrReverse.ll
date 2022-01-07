; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_StrReverse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_StrReverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_StrReverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_StrReverse(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @debugstr_variant(i32* %15)
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @to_string(i32* %18, i8*** %13)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %51

25:                                               ; preds = %4
  %26 = load i8**, i8*** %13, align 8
  store i8** %26, i8*** %10, align 8
  %27 = load i8**, i8*** %13, align 8
  %28 = load i8**, i8*** %13, align 8
  %29 = call i32 @SysStringLen(i8** %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = getelementptr inbounds i8*, i8** %31, i64 -1
  store i8** %32, i8*** %11, align 8
  br label %33

33:                                               ; preds = %37, %25
  %34 = load i8**, i8*** %10, align 8
  %35 = load i8**, i8*** %11, align 8
  %36 = icmp ult i8** %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i8**, i8*** %10, align 8
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %12, align 8
  %40 = load i8**, i8*** %11, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8**, i8*** %10, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %10, align 8
  store i8* %41, i8** %42, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i8**, i8*** %11, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 -1
  store i8** %46, i8*** %11, align 8
  store i8* %44, i8** %45, align 8
  br label %33

47:                                               ; preds = %33
  %48 = load i32*, i32** %9, align 8
  %49 = load i8**, i8*** %13, align 8
  %50 = call i32 @return_bstr(i32* %48, i8** %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %23
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i32 @to_string(i32*, i8***) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SysStringLen(i8**) #1

declare dso_local i32 @return_bstr(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
