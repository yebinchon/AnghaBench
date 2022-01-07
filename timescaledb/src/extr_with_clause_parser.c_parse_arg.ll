; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_with_clause_parser.c_parse_arg.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_with_clause_parser.c_parse_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"argument \22%s.%s\22 not implemented\00", align 1
@BOOLOID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"parameter \22%s.%s\22 must have a value\00", align 1
@TYPEOID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"cache lookup failed for type of %s.%s '%u'\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid value for %s.%s '%s'\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s.%s must be a valid %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_9__*)* @parse_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_arg(i64 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @OidIsValid(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ERROR, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, i32, i32, ...) @elog(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %16, %2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = call i8* @defGetString(%struct.TYPE_9__* %31)
  store i8* %32, i8** %5, align 8
  br label %52

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BOOLOID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %51

39:                                               ; preds = %33
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %48)
  %50 = call i32 @ereport(i32 %40, i32 %49)
  br label %51

51:                                               ; preds = %39, %38
  br label %52

52:                                               ; preds = %51, %30
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @getTypeInputInfo(i64 %54, i64* %7, i64* %8)
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @OidIsValid(i64 %56)
  %58 = call i32 @Assert(i32 %57)
  %59 = call i32 (...) @PG_TRY()
  %60 = load i64, i64* %7, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @OidInputFunctionCall(i64 %60, i8* %61, i64 %62, i32 -1)
  store i32 %63, i32* %6, align 4
  %64 = call i32 (...) @PG_CATCH()
  %65 = load i32, i32* @TYPEOID, align 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ObjectIdGetDatum(i64 %67)
  %69 = call i32 @SearchSysCache1(i32 %65, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @HeapTupleIsValid(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %52
  %74 = load i32, i32* @ERROR, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i32, i8*, i32, i32, ...) @elog(i32 %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %80, i64 %82)
  br label %84

84:                                               ; preds = %73, %52
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @GETSTRUCT(i32 %85)
  %87 = inttoptr i64 %86 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %9, align 8
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %90 = call i32 @errcode(i32 %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %93, i32 %96, i8* %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @NameStr(i32 %107)
  %109 = call i32 @errhint(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %101, i32 %104, i32 %108)
  %110 = call i32 @ereport(i32 %88, i32 %109)
  %111 = call i32 (...) @PG_END_TRY()
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, ...) #1

declare dso_local i8* @defGetString(%struct.TYPE_9__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, ...) #1

declare dso_local i32 @getTypeInputInfo(i64, i64*, i64*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @OidInputFunctionCall(i64, i8*, i64, i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @errhint(i8*, i32, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
