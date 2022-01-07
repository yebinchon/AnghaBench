; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @amatchFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amatchFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %12, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %18 = call i32 @amatchClearCursor(%struct.TYPE_4__* %17)
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load i32**, i32*** %11, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @sqlite3_value_text(i32* %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %13, align 8
  %28 = load i32, i32* %14, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %22, %5
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32**, i32*** %11, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @sqlite3_value_int(i32* %39)
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %34, %30
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32**, i32*** %11, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @sqlite3_value_int(i32* %55)
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %50, %46
  %63 = load i8*, i8** %13, align 8
  %64 = call i64 @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %72, i32* %6, align 4
  br label %79

73:                                               ; preds = %62
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %75 = call i32 @amatchAddWord(%struct.TYPE_4__* %74, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @amatchNext(i32* %76)
  %78 = load i32, i32* @SQLITE_OK, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %73, %71
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @amatchClearCursor(%struct.TYPE_4__*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @sqlite3_value_int(i32*) #1

declare dso_local i64 @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @amatchAddWord(%struct.TYPE_4__*, i32, i32, i8*, i8*) #1

declare dso_local i32 @amatchNext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
