; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_completion.c_completionConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_completion.c_completionConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [97 x i8] c"CREATE TABLE x(  candidate TEXT,  prefix TEXT HIDDEN,  wholeline TEXT HIDDEN,  phase INT HIDDEN)\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @completionConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @completionConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i8**, i8*** %11, align 8
  %19 = load i8**, i8*** %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @sqlite3_declare_vtab(i32* %20, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %6
  %26 = call %struct.TYPE_4__* @sqlite3_malloc(i32 8)
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %14, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %28 = bitcast %struct.TYPE_4__* %27 to i32*
  %29 = load i32**, i32*** %12, align 8
  store i32* %28, i32** %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %31 = icmp eq %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %33, i32* %7, align 4
  br label %42

34:                                               ; preds = %25
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %36 = call i32 @memset(%struct.TYPE_4__* %35, i32 0, i32 8)
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  br label %40

40:                                               ; preds = %34, %6
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %32
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
