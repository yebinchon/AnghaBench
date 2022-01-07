; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_editDist3SqlFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_editDist3SqlFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @editDist3SqlFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @editDist3SqlFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @sqlite3_user_data(i32* %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @sqlite3_context_db_handle(i32* %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %43

26:                                               ; preds = %3
  %27 = load i32**, i32*** %6, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @sqlite3_value_text(i32* %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %10, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @editDist3ConfigLoad(i32* %32, i32* %33, i8* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @sqlite3_result_error_code(i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %26
  br label %102

43:                                               ; preds = %3
  %44 = load i32**, i32*** %6, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @sqlite3_value_text(i32* %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %11, align 8
  %49 = load i32**, i32*** %6, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @sqlite3_value_text(i32* %51)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %12, align 8
  %54 = load i32**, i32*** %6, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @sqlite3_value_bytes(i32* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32**, i32*** %6, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @sqlite3_value_bytes(i32* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %69

64:                                               ; preds = %43
  %65 = load i32**, i32*** %6, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @sqlite3_value_int(i32* %67)
  br label %70

69:                                               ; preds = %43
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi i32 [ %68, %64 ], [ 0, %69 ]
  store i32 %71, i32* %15, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32* @editDist3FindLang(i32* %72, i32 %73)
  store i32* %74, i32** %16, align 8
  %75 = load i32*, i32** %16, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32* @editDist3FromStringNew(i32* %75, i8* %76, i32 %77)
  store i32* %78, i32** %17, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @sqlite3_result_error_nomem(i32* %82)
  br label %102

84:                                               ; preds = %70
  %85 = load i32*, i32** %17, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @editDist3Core(i32* %85, i8* %86, i32 %87, i32* %88, i32 0)
  store i32 %89, i32* %18, align 4
  %90 = load i32*, i32** %17, align 8
  %91 = call i32 @editDist3FromStringDelete(i32* %90)
  %92 = load i32, i32* %18, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @sqlite3_result_error_nomem(i32* %95)
  br label %101

97:                                               ; preds = %84
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @sqlite3_result_int(i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %94
  br label %102

102:                                              ; preds = %81, %101, %42
  ret void
}

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @editDist3ConfigLoad(i32*, i32*, i8*) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32* @editDist3FindLang(i32*, i32) #1

declare dso_local i32* @editDist3FromStringNew(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @editDist3Core(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @editDist3FromStringDelete(i32*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
