; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_traverse_file.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_traverse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@EMPTY_SHA1 = common dso_local global i32 0, align 4
@SEAF_METADATA_TYPE_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i32 (i32*, i8*, i32, i8*, i32, i8*, i32*)*, i8*, i32)* @traverse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse_file(i32* %0, i8* %1, i32 %2, i8* %3, i32 (i32*, i8*, i32, i8*, i32, i8*, i32*)* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i32*, i8*, i32, i8*, i32, i8*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 (i32*, i8*, i32, i8*, i32, i8*, i32*)* %4, i32 (i32*, i8*, i32, i8*, i32, i8*, i32*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i8*, i8** %12, align 8
  %19 = load i32, i32* @EMPTY_SHA1, align 4
  %20 = call i64 @memcmp(i8* %18, i32 %19, i32 40)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %38

23:                                               ; preds = %7
  %24 = load i32 (i32*, i8*, i32, i8*, i32, i8*, i32*)*, i32 (i32*, i8*, i32, i8*, i32, i8*, i32*)** %13, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* @SEAF_METADATA_TYPE_FILE, align 4
  %30 = load i8*, i8** %14, align 8
  %31 = call i32 %24(i32* %25, i8* %26, i32 %27, i8* %28, i32 %29, i8* %30, i32* %16)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 -1, i32* %8, align 4
  br label %38

37:                                               ; preds = %33, %23
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %36, %22
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i64 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
