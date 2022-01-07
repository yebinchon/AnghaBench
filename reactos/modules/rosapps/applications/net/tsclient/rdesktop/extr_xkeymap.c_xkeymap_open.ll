; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_xkeymap_open.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_xkeymap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c".rdesktop/keymaps\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@KEYMAP_PATH = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"keymaps\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xkeymap_open(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %8 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @pathjoin(i8* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @pathjoin(i8* %14, i8* %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @xfree(i8* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %20, i32** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @xfree(i8* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %11
  %26 = load i32*, i32** %7, align 8
  store i32* %26, i32** %2, align 8
  br label %52

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i8*, i8** @KEYMAP_PATH, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i8* @pathjoin(i8* %29, i8* %30)
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32* @fopen(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %33, i32** %7, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @xfree(i8* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32*, i32** %7, align 8
  store i32* %39, i32** %2, align 8
  br label %52

40:                                               ; preds = %28
  %41 = load i8*, i8** %3, align 8
  %42 = call i8* @pathjoin(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %44, i32** %7, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @xfree(i8* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32*, i32** %7, align 8
  store i32* %50, i32** %2, align 8
  br label %52

51:                                               ; preds = %40
  store i32* null, i32** %2, align 8
  br label %52

52:                                               ; preds = %51, %49, %38, %25
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @pathjoin(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
