; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_APPINFO_SetOption.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_APPINFO_SetOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"INTERNET_OPTION_CONNECT_TIMEOUT\0A\00", align 1
@ERROR_INTERNET_BAD_OPTION_LENGTH = common dso_local global i32 0, align 4
@ERROR_BAD_ARGUMENTS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"INTERNET_OPTION_REFRESH\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @APPINFO_SetOption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @APPINFO_SetOption(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %10, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %52 [
    i32 130, label %14
    i32 128, label %35
    i32 129, label %49
  ]

14:                                               ; preds = %4
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @ERROR_INTERNET_BAD_OPTION_LENGTH, align 4
  store i32 %20, i32* %5, align 4
  br label %58

21:                                               ; preds = %14
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ERROR_BAD_ARGUMENTS, align 4
  store i32 %27, i32* %5, align 4
  br label %58

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %34, i32* %5, align 4
  br label %58

35:                                               ; preds = %4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @heap_free(i32 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @heap_strdupW(i8* %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = icmp ne i32 %41, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %46, i32* %5, align 4
  br label %58

47:                                               ; preds = %35
  %48 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %48, i32* %5, align 4
  br label %58

49:                                               ; preds = %4
  %50 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %51, i32* %5, align 4
  br label %58

52:                                               ; preds = %4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @INET_SetOption(i32* %53, i32 %54, i8* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %52, %49, %47, %45, %28, %26, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @heap_free(i32) #1

declare dso_local i32 @heap_strdupW(i8*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @INET_SetOption(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
