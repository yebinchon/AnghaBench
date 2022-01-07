; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuFossilDeltaFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuFossilDeltaFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"corrupt fossil delta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @rbuFossilDeltaFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbuFossilDeltaFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 2
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @sqlite3_value_bytes(i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @sqlite3_value_blob(i32* %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %9, align 8
  %27 = load i32**, i32*** %6, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @sqlite3_value_bytes(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32**, i32*** %6, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @sqlite3_value_blob(i32* %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @rbuDeltaOutputSize(i8* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @sqlite3_result_error(i32* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %74

44:                                               ; preds = %3
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i8* @sqlite3_malloc(i32 %46)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @sqlite3_result_error_nomem(i32* %51)
  br label %74

53:                                               ; preds = %44
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @rbuDeltaApply(i8* %54, i32 %55, i8* %56, i32 %57, i8* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @sqlite3_free(i8* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @sqlite3_result_error(i32* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %73

68:                                               ; preds = %53
  %69 = load i32*, i32** %4, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @sqlite3_result_blob(i32* %69, i8* %70, i32 %71, i32 (i8*)* @sqlite3_free)
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %41, %73, %50
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i32 @rbuDeltaOutputSize(i8*, i32) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i8* @sqlite3_malloc(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @rbuDeltaApply(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i32, i32 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
