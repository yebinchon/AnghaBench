; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3DropTrigger.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3DropTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, i8* }

@SQLITE_OK = common dso_local global i64 0, align 8
@OMIT_TEMPDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no such trigger: %S\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3DropTrigger(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %11, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %132

21:                                               ; preds = %3
  %22 = load i64, i64* @SQLITE_OK, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %24 = call i64 @sqlite3ReadSchema(%struct.TYPE_23__* %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %132

27:                                               ; preds = %21
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %9, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %27
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %50 = call i64 @sqlite3BtreeHoldsAllMutexes(%struct.TYPE_21__* %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %48, %27
  %53 = phi i1 [ true, %27 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* @OMIT_TEMPDB, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %108, %52
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %111

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = xor i32 %67, 1
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi i32 [ %68, %66 ], [ %70, %69 ]
  store i32 %72, i32* %12, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i64 @sqlite3StrICmp(i32 %83, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %108

88:                                               ; preds = %75, %71
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_21__* %89, i32 %90, i32 0)
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i8*, i8** %10, align 8
  %103 = call i32* @sqlite3HashFind(i32* %101, i8* %102)
  store i32* %103, i32** %7, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %88
  br label %111

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107, %87
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %57

111:                                              ; preds = %106, %57
  %112 = load i32*, i32** %7, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %128, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %120 = call i32 @sqlite3ErrorMsg(%struct.TYPE_23__* %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %119, i32 0)
  br label %125

121:                                              ; preds = %114
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @sqlite3CodeVerifyNamedSchema(%struct.TYPE_23__* %122, i8* %123)
  br label %125

125:                                              ; preds = %121, %117
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  br label %132

128:                                              ; preds = %111
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @sqlite3DropTriggerPtr(%struct.TYPE_23__* %129, i32* %130)
  br label %132

132:                                              ; preds = %128, %125, %26, %20
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %135 = call i32 @sqlite3SrcListDelete(%struct.TYPE_21__* %133, %struct.TYPE_22__* %134)
  ret void
}

declare dso_local i64 @sqlite3ReadSchema(%struct.TYPE_23__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3BtreeHoldsAllMutexes(%struct.TYPE_21__*) #1

declare dso_local i64 @sqlite3StrICmp(i32, i8*) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32* @sqlite3HashFind(i32*, i8*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_23__*, i8*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @sqlite3CodeVerifyNamedSchema(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @sqlite3DropTriggerPtr(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @sqlite3SrcListDelete(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
