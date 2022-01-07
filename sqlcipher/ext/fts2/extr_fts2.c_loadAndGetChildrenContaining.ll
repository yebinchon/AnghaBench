; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_loadAndGetChildrenContaining.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_loadAndGetChildrenContaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_SELECT_STMT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32, i32*, i32*)* @loadAndGetChildrenContaining to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadAndGetChildrenContaining(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %14, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** %15, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @BLOCK_SELECT_STMT, align 4
  %40 = call i32 @sql_get_statement(i32* %38, i32 %39, i32** %16)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %7
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %8, align 4
  br label %95

46:                                               ; preds = %7
  %47 = load i32*, i32** %16, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @sqlite3_bind_int64(i32* %47, i32 1, i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* @SQLITE_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %8, align 4
  br label %95

55:                                               ; preds = %46
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @sqlite3_step(i32* %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* @SQLITE_DONE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %62, i32* %8, align 4
  br label %95

63:                                               ; preds = %55
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @SQLITE_ROW, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %8, align 4
  br label %95

69:                                               ; preds = %63
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @sqlite3_column_blob(i32* %70, i32 0)
  %72 = load i32*, i32** %16, align 8
  %73 = call i32 @sqlite3_column_bytes(i32* %72, i32 0)
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @getChildrenContaining(i32 %71, i32 %73, i8* %74, i32 %75, i32 %76, i32* %77, i32* %78)
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @sqlite3_step(i32* %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @SQLITE_ROW, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %69
  %86 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %86, i32* %8, align 4
  br label %95

87:                                               ; preds = %69
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* @SQLITE_DONE, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %17, align 4
  store i32 %92, i32* %8, align 4
  br label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @SQLITE_OK, align 4
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %93, %91, %85, %67, %61, %53, %44
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sql_get_statement(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @getChildrenContaining(i32, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
