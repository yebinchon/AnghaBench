; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3SrcListAppendFromTerm.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3SrcListAppendFromTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i64, i32*, i32*, i32*, i32 }
%struct.TYPE_20__ = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"a JOIN clause is required before %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"USING\00", align 1
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @sqlite3SrcListAppendFromTerm(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* %2, %struct.TYPE_20__* %3, %struct.TYPE_20__* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.SrcList_item*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %19, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %25 = icmp ne %struct.TYPE_21__* %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %8
  %27 = load i32*, i32** %16, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %17, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29, %26
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 @sqlite3ErrorMsg(%struct.TYPE_22__* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %138

39:                                               ; preds = %29, %8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %44 = call %struct.TYPE_21__* @sqlite3SrcListAppend(%struct.TYPE_22__* %40, %struct.TYPE_21__* %41, %struct.TYPE_20__* %42, %struct.TYPE_20__* %43)
  store %struct.TYPE_21__* %44, %struct.TYPE_21__** %11, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %46 = icmp eq %struct.TYPE_21__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %138

48:                                               ; preds = %39
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load %struct.SrcList_item*, %struct.SrcList_item** %56, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %57, i64 %62
  store %struct.SrcList_item* %63, %struct.SrcList_item** %18, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %65 = icmp eq %struct.TYPE_20__* %64, null
  %66 = zext i1 %65 to i32
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %68 = icmp eq %struct.TYPE_20__* %67, null
  %69 = zext i1 %68 to i32
  %70 = icmp eq i32 %66, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.SrcList_item*, %struct.SrcList_item** %18, align 8
  %74 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %48
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %79 = icmp ne %struct.TYPE_20__* %78, null
  br label %80

80:                                               ; preds = %77, %48
  %81 = phi i1 [ true, %48 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = load %struct.SrcList_item*, %struct.SrcList_item** %18, align 8
  %88 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %86
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %93 = call i64 @ALWAYS(%struct.TYPE_20__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  br label %104

102:                                              ; preds = %95, %91
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi %struct.TYPE_20__* [ %101, %100 ], [ %103, %102 ]
  store %struct.TYPE_20__* %105, %struct.TYPE_20__** %20, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %107 = load %struct.SrcList_item*, %struct.SrcList_item** %18, align 8
  %108 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %111 = call i32 @sqlite3RenameTokenMap(%struct.TYPE_22__* %106, i64 %109, %struct.TYPE_20__* %110)
  br label %112

112:                                              ; preds = %104, %86, %80
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %114 = icmp ne %struct.TYPE_20__* %113, null
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %112
  %122 = load i32*, i32** %19, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %124 = call i32 @sqlite3NameFromToken(i32* %122, %struct.TYPE_20__* %123)
  %125 = load %struct.SrcList_item*, %struct.SrcList_item** %18, align 8
  %126 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %121, %112
  %128 = load i32*, i32** %15, align 8
  %129 = load %struct.SrcList_item*, %struct.SrcList_item** %18, align 8
  %130 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %129, i32 0, i32 3
  store i32* %128, i32** %130, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = load %struct.SrcList_item*, %struct.SrcList_item** %18, align 8
  %133 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %132, i32 0, i32 2
  store i32* %131, i32** %133, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = load %struct.SrcList_item*, %struct.SrcList_item** %18, align 8
  %136 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %135, i32 0, i32 1
  store i32* %134, i32** %136, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %137, %struct.TYPE_21__** %9, align 8
  br label %152

138:                                              ; preds = %47, %32
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %140 = icmp eq %struct.TYPE_21__* %139, null
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load i32*, i32** %19, align 8
  %144 = load i32*, i32** %16, align 8
  %145 = call i32 @sqlite3ExprDelete(i32* %143, i32* %144)
  %146 = load i32*, i32** %19, align 8
  %147 = load i32*, i32** %17, align 8
  %148 = call i32 @sqlite3IdListDelete(i32* %146, i32* %147)
  %149 = load i32*, i32** %19, align 8
  %150 = load i32*, i32** %15, align 8
  %151 = call i32 @sqlite3SelectDelete(i32* %149, i32* %150)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  br label %152

152:                                              ; preds = %138, %127
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  ret %struct.TYPE_21__* %153
}

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_22__*, i8*, i8*) #1

declare dso_local %struct.TYPE_21__* @sqlite3SrcListAppend(%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(%struct.TYPE_20__*) #1

declare dso_local i32 @sqlite3RenameTokenMap(%struct.TYPE_22__*, i64, %struct.TYPE_20__*) #1

declare dso_local i32 @sqlite3NameFromToken(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, i32*) #1

declare dso_local i32 @sqlite3IdListDelete(i32*, i32*) #1

declare dso_local i32 @sqlite3SelectDelete(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
