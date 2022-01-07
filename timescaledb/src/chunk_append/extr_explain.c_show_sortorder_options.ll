; ModuleID = '/home/carl/AnghaBench/timescaledb/src/chunk_append/extr_explain.c_show_sortorder_options.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/chunk_append/extr_explain.c_show_sortorder_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@TYPECACHE_LT_OPR = common dso_local global i32 0, align 4
@TYPECACHE_GT_OPR = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cache lookup failed for collation %u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" COLLATE %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" DESC\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cache lookup failed for operator %u\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" USING %s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" NULLS FIRST\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" NULLS LAST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i64, i32)* @show_sortorder_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_sortorder_options(i32 %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @exprType(i32* %16)
  store i64 %17, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i64, i64* %11, align 8
  %19 = load i32, i32* @TYPECACHE_LT_OPR, align 4
  %20 = load i32, i32* @TYPECACHE_GT_OPR, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.TYPE_3__* @lookup_type_cache(i64 %18, i32 %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %13, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @OidIsValid(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %5
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = call i8* @get_collation_name(i64 %31)
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %14, align 8
  %42 = call i8* @quote_identifier(i8* %41)
  %43 = call i32 @appendStringInfo(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %39, %26, %5
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @appendStringInfoString(i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %75

53:                                               ; preds = %44
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load i64, i64* %8, align 8
  %61 = call i8* @get_opname(i64 %60)
  store i8* %61, i8** %15, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @ERROR, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @elog(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %6, align 4
  %70 = load i8*, i8** %15, align 8
  %71 = call i32 @appendStringInfo(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @get_equality_op_for_ordering_op(i64 %72, i32* %12)
  br label %74

74:                                               ; preds = %68, %53
  br label %75

75:                                               ; preds = %74, %50
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @appendStringInfoString(i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %94

84:                                               ; preds = %78, %75
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @appendStringInfoString(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %87, %84
  br label %94

94:                                               ; preds = %93, %81
  ret void
}

declare dso_local i64 @exprType(i32*) #1

declare dso_local %struct.TYPE_3__* @lookup_type_cache(i64, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i8* @get_collation_name(i64) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #1

declare dso_local i8* @quote_identifier(i8*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i8* @get_opname(i64) #1

declare dso_local i32 @get_equality_op_for_ordering_op(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
