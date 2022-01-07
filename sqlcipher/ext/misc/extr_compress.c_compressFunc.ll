; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_compress.c_compressFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_compress.c_compressFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Z_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @compressFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [8 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %15 = load i32**, i32*** %6, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i8* @sqlite3_value_blob(i32* %17)
  store i8* %18, i8** %7, align 8
  %19 = load i32**, i32*** %6, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @sqlite3_value_bytes(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add i32 13, %23
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %25, 999
  %27 = udiv i32 %26, 1000
  %28 = add i32 %24, %27
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = add i64 %30, 5
  %32 = call i8* @sqlite3_malloc(i64 %31)
  store i8* %32, i8** %8, align 8
  store i32 4, i32* %13, align 4
  br label %33

33:                                               ; preds = %47, %3
  %34 = load i32, i32* %13, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %13, align 4
  %39 = sub nsw i32 4, %38
  %40 = mul nsw i32 7, %39
  %41 = lshr i32 %37, %40
  %42 = and i32 %41, 127
  %43 = trunc i32 %42 to i8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 %45
  store i8 %43, i8* %46, align 1
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %13, align 4
  br label %33

50:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br label %61

61:                                               ; preds = %54, %51
  %62 = phi i1 [ false, %51 ], [ %60, %54 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %51

67:                                               ; preds = %61
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %80, %67
  %69 = load i32, i32* %13, align 4
  %70 = icmp sle i32 %69, 4
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8 %75, i8* %79, align 1
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %68

85:                                               ; preds = %68
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %92, 128
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %90, align 1
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @compress(i8* %98, i64* %10, i8* %99, i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @Z_OK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %85
  %106 = load i32*, i32** %4, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = add i64 %108, %110
  %112 = call i32 @sqlite3_result_blob(i32* %106, i8* %107, i64 %111, i32 (i8*)* @sqlite3_free)
  br label %116

113:                                              ; preds = %85
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @sqlite3_free(i8* %114)
  br label %116

116:                                              ; preds = %113, %105
  ret void
}

declare dso_local i8* @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i8* @sqlite3_malloc(i64) #1

declare dso_local i32 @compress(i8*, i64*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i64, i32 (i8*)*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
