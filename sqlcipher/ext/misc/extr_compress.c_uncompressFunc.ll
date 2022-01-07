; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_compress.c_uncompressFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_compress.c_uncompressFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Z_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @uncompressFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncompressFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i8* @sqlite3_value_blob(i32* %15)
  store i8* %16, i8** %7, align 8
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @sqlite3_value_bytes(i32* %19)
  store i32 %20, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %54, %3
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 5
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i1 [ false, %21 ], [ %27, %25 ]
  br i1 %29, label %30, label %57

30:                                               ; preds = %28
  %31 = load i64, i64* %10, align 8
  %32 = shl i64 %31, 7
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 127
  %40 = sext i32 %39 to i64
  %41 = or i64 %32, %40
  store i64 %41, i64* %10, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 128
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %57

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %21

57:                                               ; preds = %50, %28
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  %60 = call i8* @sqlite3_malloc(i64 %59)
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sub i32 %66, %67
  %69 = call i32 @uncompress(i8* %61, i64* %10, i8* %65, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @Z_OK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %57
  %74 = load i32*, i32** %4, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @sqlite3_result_blob(i32* %74, i8* %75, i64 %76, i32 (i8*)* @sqlite3_free)
  br label %81

78:                                               ; preds = %57
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @sqlite3_free(i8* %79)
  br label %81

81:                                               ; preds = %78, %73
  ret void
}

declare dso_local i8* @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i8* @sqlite3_malloc(i64) #1

declare dso_local i32 @uncompress(i8*, i64*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i64, i32 (i8*)*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
