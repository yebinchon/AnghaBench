; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_fulltextCreate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_fulltextCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"FTS1 Create\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CREATE TABLE %_content(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"create table %_term(term text, segment integer, doclist blob, primary key(term, segment));\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @fulltextCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltextCreate(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__, align 4
  %16 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %10, align 4
  %19 = load i8**, i8*** %11, align 8
  %20 = load i8**, i8*** %13, align 8
  %21 = call i32 @parseSpec(%struct.TYPE_9__* %15, i32 %18, i8** %19, i8** %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %7, align 4
  br label %70

27:                                               ; preds = %6
  %28 = call i32 @initStringBuffer(%struct.TYPE_10__* %16)
  %29 = call i32 @append(%struct.TYPE_10__* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @appendList(%struct.TYPE_10__* %16, i32 %31, i32 %33)
  %35 = call i32 @append(%struct.TYPE_10__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @sql_exec(i32* %36, i32 %38, i32 %40, i8* %42)
  store i32 %43, i32* %14, align 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @SQLITE_OK, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %27
  br label %67

51:                                               ; preds = %27
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sql_exec(i32* %52, i32 %54, i32 %56, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0))
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @SQLITE_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %67

62:                                               ; preds = %51
  %63 = load i32*, i32** %8, align 8
  %64 = load i32**, i32*** %12, align 8
  %65 = load i8**, i8*** %13, align 8
  %66 = call i32 @constructVtab(i32* %63, %struct.TYPE_9__* %15, i32** %64, i8** %65)
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %62, %61, %50
  %68 = call i32 @clearTableSpec(%struct.TYPE_9__* %15)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %25
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @parseSpec(%struct.TYPE_9__*, i32, i8**, i8**) #1

declare dso_local i32 @initStringBuffer(%struct.TYPE_10__*) #1

declare dso_local i32 @append(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @appendList(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @sql_exec(i32*, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @constructVtab(i32*, %struct.TYPE_9__*, i32**, i8**) #1

declare dso_local i32 @clearTableSpec(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
