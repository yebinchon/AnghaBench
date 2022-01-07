; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_materialize.c_spi_delete_materializations.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_materialize.c_spi_delete_materializations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"DELETE FROM %s.%s AS D WHERE D.%s >= %s AND D.%s < %s;\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"could not delete old values from materialization table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i64, i32)* @spi_delete_materializations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_delete_materializations(i32* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = bitcast %struct.TYPE_10__* %6 to { i32*, i32* }*
  %17 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %16, i32 0, i32 0
  store i32* %0, i32** %17, align 8
  %18 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %16, i32 0, i32 1
  store i32* %1, i32** %18, align 8
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %3, i64* %19, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %4, i32* %20, align 4
  %21 = bitcast %struct.TYPE_8__* %7 to i8*
  %22 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  store i32* %2, i32** %9, align 8
  %23 = call %struct.TYPE_9__* (...) @makeStringInfo()
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @getTypeOutputInfo(i32 %25, i32* %12, i32* %13)
  %27 = load i32, i32* %12, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @OidOutputFunctionCall(i32 %27, i32 %29)
  store i8* %30, i8** %14, align 8
  %31 = load i32, i32* %12, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @OidOutputFunctionCall(i32 %31, i32 %33)
  store i8* %34, i8** %15, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @NameStr(i32 %38)
  %40 = call i32 @quote_identifier(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @NameStr(i32 %43)
  %45 = call i32 @quote_identifier(i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @NameStr(i32 %47)
  %49 = call i32 @quote_identifier(i32 %48)
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @quote_literal_cstr(i8* %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @NameStr(i32 %53)
  %55 = call i32 @quote_identifier(i32 %54)
  %56 = load i8*, i8** %15, align 8
  %57 = call i32 @quote_literal_cstr(i8* %56)
  %58 = call i32 @appendStringInfo(%struct.TYPE_9__* %35, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %45, i32 %49, i32 %51, i32 %55, i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SPI_execute_with_args(i32 %61, i32 0, i32* null, i32* null, i32* null, i32 0, i32 0)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %5
  %66 = load i32, i32* @ERROR, align 4
  %67 = call i32 @elog(i32 %66, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_9__* @makeStringInfo(...) #2

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #2

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #2

declare dso_local i32 @appendStringInfo(%struct.TYPE_9__*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @quote_identifier(i32) #2

declare dso_local i32 @NameStr(i32) #2

declare dso_local i32 @quote_literal_cstr(i8*) #2

declare dso_local i32 @SPI_execute_with_args(i32, i32, i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @elog(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
