; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_fulltextConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_fulltextConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__*, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i8**, %struct.TYPE_7__**)* }

@.str = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unrecognized tokenizer\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"create table x(content text)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @fulltextConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltextConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp sge i32 %17, 3
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = call i64 @malloc(i32 32)
  %22 = inttoptr i64 %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %15, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  store i32* %23, i32** %25, align 8
  %26 = load i8**, i8*** %11, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @string_dup(i8* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = call i32 @get_simple_tokenizer_module(%struct.TYPE_5__** %16)
  br label %49

38:                                               ; preds = %6
  %39 = load i8**, i8*** %11, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 3
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = call i32 @get_simple_tokenizer_module(%struct.TYPE_5__** %16)
  br label %48

46:                                               ; preds = %38
  %47 = call i32 @assert(i32 0)
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %36
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32 (i32, i8**, %struct.TYPE_7__**)*, i32 (i32, i8**, %struct.TYPE_7__**)** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 3
  %55 = load i8**, i8*** %11, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 3
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = call i32 %52(i32 %54, i8** %56, %struct.TYPE_7__** %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @SQLITE_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %7, align 4
  br label %87

65:                                               ; preds = %49
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %70, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @sqlite3_declare_vtab(i32* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @SQLITE_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %7, align 4
  br label %87

78:                                               ; preds = %65
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memset(i32 %81, i32 0, i32 4)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32**, i32*** %12, align 8
  store i32* %84, i32** %85, align 8
  %86 = load i32, i32* @SQLITE_OK, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %78, %76, %63
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @string_dup(i8*) #1

declare dso_local i32 @get_simple_tokenizer_module(%struct.TYPE_5__**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
