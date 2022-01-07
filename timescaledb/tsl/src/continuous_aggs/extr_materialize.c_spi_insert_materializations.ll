; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_materialize.c_spi_insert_materializations.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_materialize.c_spi_insert_materializations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32*, i32* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"INSERT INTO %s.%s SELECT * FROM %s.%s AS I WHERE I.%s >= %s AND I.%s < %s;\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"could materialize values into the materialization table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, %struct.TYPE_9__*)* @spi_insert_materializations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_insert_materializations(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5) #0 {
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = bitcast %struct.TYPE_11__* %7 to { i32*, i32* }*
  %17 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %16, i32 0, i32 0
  store i32* %0, i32** %17, align 8
  %18 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %16, i32 0, i32 1
  store i32* %1, i32** %18, align 8
  %19 = bitcast %struct.TYPE_11__* %8 to { i32*, i32* }*
  %20 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %19, i32 0, i32 0
  store i32* %2, i32** %20, align 8
  %21 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %19, i32 0, i32 1
  store i32* %3, i32** %21, align 8
  store i32* %4, i32** %9, align 8
  %22 = call %struct.TYPE_10__* (...) @makeStringInfo()
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @getTypeOutputInfo(i32 %24, i32* %12, i32* %13)
  %26 = load i32, i32* %12, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @OidOutputFunctionCall(i32 %26, i32 %28)
  store i8* %29, i8** %14, align 8
  %30 = load i32, i32* %12, align 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @OidOutputFunctionCall(i32 %30, i32 %32)
  store i8* %33, i8** %15, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @NameStr(i32 %37)
  %39 = call i32 @quote_identifier(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @NameStr(i32 %42)
  %44 = call i32 @quote_identifier(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @NameStr(i32 %47)
  %49 = call i32 @quote_identifier(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @NameStr(i32 %52)
  %54 = call i32 @quote_identifier(i32 %53)
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @NameStr(i32 %56)
  %58 = call i32 @quote_identifier(i32 %57)
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @quote_literal_cstr(i8* %59)
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @NameStr(i32 %62)
  %64 = call i32 @quote_identifier(i32 %63)
  %65 = load i8*, i8** %15, align 8
  %66 = call i32 @quote_literal_cstr(i8* %65)
  %67 = call i32 @appendStringInfo(%struct.TYPE_10__* %34, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %44, i32 %49, i32 %54, i32 %58, i32 %60, i32 %64, i32 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SPI_execute_with_args(i32 %70, i32 0, i32* null, i32* null, i32* null, i32 0, i32 0)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %6
  %75 = load i32, i32* @ERROR, align 4
  %76 = call i32 @elog(i32 %75, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %6
  ret void
}

declare dso_local %struct.TYPE_10__* @makeStringInfo(...) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_10__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @quote_identifier(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @quote_literal_cstr(i8*) #1

declare dso_local i32 @SPI_execute_with_args(i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
