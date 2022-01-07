; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3LocateTable.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3LocateTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32* }

@DBFLAG_SchemaKnownOk = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"pragma_\00", align 1
@LOCATE_NOERR = common dso_local global i32 0, align 4
@LOCATE_VIEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"no such view\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"no such table\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s: %s.%s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sqlite3LocateTable(%struct.TYPE_13__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %11, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DBFLAG_SchemaKnownOk, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i64, i64* @SQLITE_OK, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = call i64 @sqlite3ReadSchema(%struct.TYPE_13__* %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32* null, i32** %5, align 8
  br label %116

29:                                               ; preds = %23, %4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32* @sqlite3FindTable(%struct.TYPE_12__* %30, i8* %31, i8* %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %79

36:                                               ; preds = %29
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @sqlite3HashFind(i32* %43, i8* %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %12, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %48 = icmp eq %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @sqlite3_strnicmp(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call %struct.TYPE_14__* @sqlite3PragmaVtabRegister(%struct.TYPE_12__* %54, i8* %55)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %12, align 8
  br label %57

57:                                               ; preds = %53, %49, %41
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %59 = icmp ne %struct.TYPE_14__* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %63 = call i64 @sqlite3VtabEponymousTableInit(%struct.TYPE_13__* %61, %struct.TYPE_14__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %5, align 8
  br label %116

69:                                               ; preds = %60, %57
  br label %70

70:                                               ; preds = %69, %36
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @LOCATE_NOERR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32* null, i32** %5, align 8
  br label %116

76:                                               ; preds = %70
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 8
  br label %90

79:                                               ; preds = %29
  %80 = load i32*, i32** %10, align 8
  %81 = call i64 @IsVirtual(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32* null, i32** %10, align 8
  br label %89

89:                                               ; preds = %88, %83, %79
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32*, i32** %10, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %114

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @LOCATE_VIEW, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)
  store i8* %99, i8** %13, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 (%struct.TYPE_13__*, i8*, i8*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_13__* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %104, i8* %105, i8* %106)
  br label %113

108:                                              ; preds = %93
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 (%struct.TYPE_13__*, i8*, i8*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_13__* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %108, %102
  br label %114

114:                                              ; preds = %113, %90
  %115 = load i32*, i32** %10, align 8
  store i32* %115, i32** %5, align 8
  br label %116

116:                                              ; preds = %114, %75, %65, %28
  %117 = load i32*, i32** %5, align 8
  ret i32* %117
}

declare dso_local i64 @sqlite3ReadSchema(%struct.TYPE_13__*) #1

declare dso_local i32* @sqlite3FindTable(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i64 @sqlite3HashFind(i32*, i8*) #1

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @sqlite3PragmaVtabRegister(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @sqlite3VtabEponymousTableInit(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i64 @IsVirtual(i32*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_13__*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
