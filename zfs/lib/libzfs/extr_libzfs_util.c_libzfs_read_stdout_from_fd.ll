; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_libzfs_read_stdout_from_fd.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_libzfs_read_stdout_from_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8***)* @libzfs_read_stdout_from_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libzfs_read_stdout_from_fd(i32 %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8***, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8*** %1, i8**** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i8** null, i8*** %10, align 8
  store i8* null, i8** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32* @fdopen(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %44
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @getline(i8** %9, i64* %8, i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %52

26:                                               ; preds = %20
  %27 = load i8**, i8*** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 8, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8** @realloc(i8** %27, i32 %32)
  store i8** %33, i8*** %11, align 8
  %34 = load i8**, i8*** %11, align 8
  %35 = icmp eq i8** %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %52

37:                                               ; preds = %26
  %38 = load i8**, i8*** %11, align 8
  store i8** %38, i8*** %10, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 10)
  store i8* %40, i8** %12, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i8*, i8** %12, align 8
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i8*, i8** %9, align 8
  %46 = load i8**, i8*** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %45, i8** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  store i8* null, i8** %9, align 8
  br label %20

52:                                               ; preds = %36, %25
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @fclose(i32* %53)
  %55 = load i8**, i8*** %10, align 8
  %56 = load i8***, i8**** %5, align 8
  store i8** %55, i8*** %56, align 8
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
