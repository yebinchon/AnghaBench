; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_return_wstr_nsacstr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_return_wstr_nsacstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"returning %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NS_OK = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@NS_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @return_wstr_nsacstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @return_wstr_nsacstr(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @debugstr_wn(i32* %10, i32 %11)
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @nsACString_SetData(i32* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @NS_OK, align 4
  store i32 %20, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load i32, i32* @CP_UTF8, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @WideCharToMultiByte(i32 %22, i32 0, i32* %23, i32 %24, i8* null, i32 0, i32* null, i32* null)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i8* @heap_alloc(i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @NS_ERROR_OUT_OF_MEMORY, align 4
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %21
  %34 = load i32, i32* @CP_UTF8, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @WideCharToMultiByte(i32 %34, i32 0, i32* %35, i32 %36, i8* %37, i32 %38, i32* null, i32* null)
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i32*, i32** %5, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @nsACString_SetData(i32* %44, i8* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @heap_free(i8* %47)
  %49 = load i32, i32* @NS_OK, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %33, %31, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_wn(i32*, i32) #1

declare dso_local i32 @nsACString_SetData(i32*, i8*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
