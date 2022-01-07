; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextCreate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"FTS2 Create\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CREATE TABLE %_content(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"create table %_segments(block blob);\00", align 1
@.str.4 = private unnamed_addr constant [161 x i8] c"create table %_segdir(  level integer,  idx integer,  start_block integer,  leaves_end_block integer,  end_block integer,  root blob,  primary key(level, idx));\00", align 1
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
  %15 = alloca %struct.TYPE_5__, align 4
  %16 = alloca i32, align 4
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
  %21 = call i32 @parseSpec(%struct.TYPE_5__* %15, i32 %18, i8** %19, i8** %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %7, align 4
  br label %80

27:                                               ; preds = %6
  %28 = call i32 @initStringBuffer(i32* %16)
  %29 = call i32 @append(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @appendList(i32* %16, i32 %31, i32 %33)
  %35 = call i32 @append(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @stringBufferData(i32* %16)
  %42 = call i32 @sql_exec(i32* %36, i32 %38, i32 %40, i8* %41)
  store i32 %42, i32* %14, align 4
  %43 = call i32 @stringBufferDestroy(i32* %16)
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @SQLITE_OK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  br label %77

48:                                               ; preds = %27
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sql_exec(i32* %49, i32 %51, i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @SQLITE_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %77

59:                                               ; preds = %48
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sql_exec(i32* %60, i32 %62, i32 %64, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.4, i64 0, i64 0))
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @SQLITE_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %77

70:                                               ; preds = %59
  %71 = load i32*, i32** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load i32**, i32*** %12, align 8
  %75 = load i8**, i8*** %13, align 8
  %76 = call i32 @constructVtab(i32* %71, i32* %73, %struct.TYPE_5__* %15, i32** %74, i8** %75)
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %70, %69, %58, %47
  %78 = call i32 @clearTableSpec(%struct.TYPE_5__* %15)
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %25
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @parseSpec(%struct.TYPE_5__*, i32, i8**, i8**) #1

declare dso_local i32 @initStringBuffer(i32*) #1

declare dso_local i32 @append(i32*, i8*) #1

declare dso_local i32 @appendList(i32*, i32, i32) #1

declare dso_local i32 @sql_exec(i32*, i32, i32, i8*) #1

declare dso_local i8* @stringBufferData(i32*) #1

declare dso_local i32 @stringBufferDestroy(i32*) #1

declare dso_local i32 @constructVtab(i32*, i32*, %struct.TYPE_5__*, i32**, i8**) #1

declare dso_local i32 @clearTableSpec(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
