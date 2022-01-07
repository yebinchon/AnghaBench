; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fstreeConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fstreeConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"CREATE TABLE xyz(path, size, data);\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @fstreeConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fstreeConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i8**, i8*** %13, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %20, i32* %7, align 4
  br label %40

21:                                               ; preds = %6
  %22 = call i64 @sqlite3_malloc(i32 16)
  %23 = inttoptr i64 %22 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %14, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %27, i32* %7, align 4
  br label %40

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %30 = call i32 @memset(%struct.TYPE_3__* %29, i32 0, i32 16)
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32**, i32*** %12, align 8
  store i32* %35, i32** %36, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @sqlite3_declare_vtab(i32* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @SQLITE_OK, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %28, %26, %17
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i8* @sqlite3_mprintf(i8*) #1

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
