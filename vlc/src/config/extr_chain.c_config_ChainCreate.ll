; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_chain.c_config_ChainCreate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_chain.c_config_ChainCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"{: \09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @config_ChainCreate(i8** %0, i32** %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8**, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32**, i32*** %6, align 8
  store i32* null, i32** %10, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %46

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @SKIPSPACE(i8* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strcspn(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %18, i64* %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i8* @strndup(i8* %19, i64 %20)
  %22 = load i8**, i8*** %5, align 8
  store i8* %21, i8** %22, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %23
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @SKIPSPACE(i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 123
  br i1 %31, label %32, label %36

32:                                               ; preds = %14
  %33 = load i32**, i32*** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i8* @config_ChainParseOptions(i32** %33, i8* %34)
  store i8* %35, i8** %7, align 8
  br label %36

36:                                               ; preds = %32, %14
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 58
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i8* @strdup(i8* %43)
  store i8* %44, i8** %4, align 8
  br label %46

45:                                               ; preds = %36
  store i8* null, i8** %4, align 8
  br label %46

46:                                               ; preds = %45, %41, %13
  %47 = load i8*, i8** %4, align 8
  ret i8* %47
}

declare dso_local i32 @SKIPSPACE(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i8* @config_ChainParseOptions(i32**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
