; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_testHexToUtf16be.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_testHexToUtf16be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @testHexToUtf16be to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testHexToUtf16be(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32**, i32*** %6, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @sqlite3_value_bytes(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @sqlite3_value_text(i32* %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sdiv i32 %23, 2
  %25 = call i8* @sqlite3_malloc(i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @sqlite3_result_error_nomem(i32* %29)
  br label %41

31:                                               ; preds = %3
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @testHexToBin(i8* %32, i8* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sdiv i32 %37, 2
  %39 = load i32, i32* @sqlite3_free, align 4
  %40 = call i32 @sqlite3_result_text16be(i32* %35, i8* %36, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i8* @sqlite3_malloc(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @testHexToBin(i8*, i8*) #1

declare dso_local i32 @sqlite3_result_text16be(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
