; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_zhack_spa_open.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_zhack_spa_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_TRUE = common dso_local global i32 0, align 4
@zfeature_checks_disable = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot open '%s': %s\00", align 1
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"'%s' has version %d, features not enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32**)* @zhack_spa_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zhack_spa_open(i8* %0, i32 %1, i8* %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32** %3, i32*** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @zhack_import(i8* %10, i32 %11)
  %13 = load i32, i32* @B_TRUE, align 4
  store i32 %13, i32* @zfeature_checks_disable, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32**, i32*** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @spa_open(i8* %14, i32** %15, i8* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @B_FALSE, align 4
  store i32 %18, i32* @zfeature_checks_disable, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i32**, i32*** %8, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @FTAG, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 @fatal(i32* %23, i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %27)
  br label %29

29:                                               ; preds = %21, %4
  %30 = load i32**, i32*** %8, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @spa_version(i32* %31)
  %33 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i32**, i32*** %8, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @FTAG, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = load i32**, i32*** %8, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @spa_version(i32* %41)
  %43 = trunc i64 %42 to i32
  %44 = call i32 @fatal(i32* %37, i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %43)
  br label %45

45:                                               ; preds = %35, %29
  ret void
}

declare dso_local i32 @zhack_import(i8*, i32) #1

declare dso_local i32 @spa_open(i8*, i32**, i8*) #1

declare dso_local i32 @fatal(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @spa_version(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
