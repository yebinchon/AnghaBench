; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_fulltextUpdate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_fulltextUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**, i32*)* @fulltextUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltextUpdate(i32* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i32*, i32** %10, align 8
  %16 = load i32**, i32*** %8, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @sqlite3_value_int64(i32* %18)
  %20 = call i32 @index_delete(i32* %15, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %46

21:                                               ; preds = %4
  %22 = load i32**, i32*** %8, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @sqlite3_value_type(i32* %24)
  %26 = load i64, i64* @SQLITE_NULL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %29, i32* %5, align 4
  br label %46

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 3
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load i32**, i32*** %8, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32**, i32*** %8, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @sqlite3_value_text(i32* %41)
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @index_insert(i32* %35, i32* %38, i8* %43, i32* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %30, %28, %14
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @index_delete(i32*, i32) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @index_insert(i32*, i32*, i8*, i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
