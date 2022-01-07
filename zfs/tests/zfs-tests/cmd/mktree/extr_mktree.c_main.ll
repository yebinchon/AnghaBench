; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mktree/extr_mktree.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mktree/extr_mktree.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"b:l:d:f:\00", align 1
@optarg = common dso_local global i32* null, align 8
@pbasedir = common dso_local global i32* null, align 8
@nlevel = common dso_local global i64 0, align 8
@ndir = common dso_local global i64 0, align 8
@nfile = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %31 [
    i32 98, label %15
    i32 108, label %17
    i32 100, label %20
    i32 102, label %23
    i32 63, label %26
  ]

15:                                               ; preds = %13
  %16 = load i32*, i32** @optarg, align 8
  store i32* %16, i32** @pbasedir, align 8
  br label %31

17:                                               ; preds = %13
  %18 = load i32*, i32** @optarg, align 8
  %19 = call i64 @atoi(i32* %18)
  store i64 %19, i64* @nlevel, align 8
  br label %31

20:                                               ; preds = %13
  %21 = load i32*, i32** @optarg, align 8
  %22 = call i64 @atoi(i32* %21)
  store i64 %22, i64* @ndir, align 8
  br label %31

23:                                               ; preds = %13
  %24 = load i32*, i32** @optarg, align 8
  %25 = call i64 @atoi(i32* %24)
  store i64 %25, i64* @nfile, align 8
  br label %31

26:                                               ; preds = %13
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @usage(i8* %29)
  br label %31

31:                                               ; preds = %26, %13, %23, %20, %17, %15
  br label %8

32:                                               ; preds = %8
  %33 = load i64, i64* @nlevel, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* @ndir, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* @nfile, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** @pbasedir, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41, %38, %35, %32
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @usage(i8* %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32*, i32** @pbasedir, align 8
  %51 = call i32 @mktree(i32* %50, i32 1)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @atoi(i32*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @mktree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
