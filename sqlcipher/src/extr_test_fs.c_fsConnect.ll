; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fsConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fsConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"CREATE TABLE x(path TEXT, data TEXT)\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @fsConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %18 = load i8**, i8*** %11, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %17, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i8**, i8*** %13, align 8
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %26, i32* %7, align 4
  br label %88

27:                                               ; preds = %6
  %28 = load i8**, i8*** %11, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = add i64 32, %33
  %35 = add i64 %34, 1
  %36 = load i8*, i8** %17, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = sext i32 %37 to i64
  %39 = add i64 %35, %38
  %40 = add i64 %39, 1
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i64 @sqlite3MallocZero(i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %14, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %27
  %48 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %48, i32* %7, align 4
  br label %88

49:                                               ; preds = %27
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 1
  %52 = bitcast %struct.TYPE_2__* %51 to i8*
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = call i32 @memcpy(i8* %70, i8* %71, i32 %73)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = load i8*, i8** %17, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = call i32 @memcpy(i8* %77, i8* %78, i32 %80)
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32**, i32*** %12, align 8
  store i32* %83, i32** %84, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @sqlite3_declare_vtab(i32* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @SQLITE_OK, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %49, %47, %23
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i8* @sqlite3_mprintf(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @sqlite3MallocZero(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
