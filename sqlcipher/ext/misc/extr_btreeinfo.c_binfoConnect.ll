; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_btreeinfo.c_binfoConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_btreeinfo.c_binfoConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [174 x i8] c"CREATE TABLE x(\0A type TEXT,\0A name TEXT,\0A tbl_name TEXT,\0A rootpage INT,\0A sql TEXT,\0A hasRowid BOOLEAN,\0A nEntry INT,\0A nPage INT,\0A depth INT,\0A szPage INT,\0A zSchema TEXT HIDDEN\0A)\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @binfoConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binfoConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i8** %5, i8*** %12, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* @SQLITE_OK, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @sqlite3_declare_vtab(i32* %16, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* @SQLITE_OK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = call i64 @sqlite3_malloc64(i32 8)
  %23 = inttoptr i64 %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %13, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %25 = icmp eq %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %27, i32* %14, align 4
  br label %28

28:                                               ; preds = %26, %21
  br label %29

29:                                               ; preds = %28, %6
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @SQLITE_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %35 = icmp eq %struct.TYPE_2__* %34, null
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i1 [ true, %29 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %48 = bitcast %struct.TYPE_2__* %47 to i32*
  %49 = load i32**, i32*** %11, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32, i32* %14, align 4
  ret i32 %50
}

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
