; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_encdecl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_encdecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.reader_position }
%struct.reader_position = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }

@reader_parse_encdecl.encodingW = internal constant [9 x i8] c"encoding\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@quoteW = common dso_local global i8* null, align 8
@dblquoteW = common dso_local global i8* null, align 8
@WC_E_QUOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @reader_parse_encdecl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_encdecl(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.reader_position, align 4
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca %struct.TYPE_16__, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = call i32 @reader_skipspaces(%struct.TYPE_15__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @S_FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %79

13:                                               ; preds = %1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = bitcast %struct.reader_position* %4 to i8*
  %17 = bitcast %struct.reader_position* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = call i64 @reader_cmp(%struct.TYPE_15__* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @reader_parse_encdecl.encodingW, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @S_FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %79

23:                                               ; preds = %13
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = call i32 @reader_get_ptr(%struct.TYPE_15__* %24)
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = call i32 @reader_get_cur(%struct.TYPE_15__* %27)
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 8, i32* %30, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = call i32 @reader_skipn(%struct.TYPE_15__* %31, i32 8)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = call i32 @reader_parse_eq(%struct.TYPE_15__* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %79

40:                                               ; preds = %23
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = load i8*, i8** @quoteW, align 8
  %43 = call i64 @reader_cmp(%struct.TYPE_15__* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = load i8*, i8** @dblquoteW, align 8
  %48 = call i64 @reader_cmp(%struct.TYPE_15__* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @WC_E_QUOTE, align 4
  store i32 %51, i32* %2, align 4
  br label %79

52:                                               ; preds = %45, %40
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = call i32 @reader_skipn(%struct.TYPE_15__* %53, i32 1)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = call i32 @reader_parse_encname(%struct.TYPE_15__* %55, %struct.TYPE_16__* %6)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %79

62:                                               ; preds = %52
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = load i8*, i8** @quoteW, align 8
  %65 = call i64 @reader_cmp(%struct.TYPE_15__* %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %69 = load i8*, i8** @dblquoteW, align 8
  %70 = call i64 @reader_cmp(%struct.TYPE_15__* %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @WC_E_QUOTE, align 4
  store i32 %73, i32* %2, align 4
  br label %79

74:                                               ; preds = %67, %62
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = call i32 @reader_skipn(%struct.TYPE_15__* %75, i32 1)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = call i32 @reader_add_attr(%struct.TYPE_15__* %77, i32* null, %struct.TYPE_16__* %5, i32* null, %struct.TYPE_16__* %6, %struct.reader_position* %4, i32 0)
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %72, %60, %50, %38, %21, %11
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @reader_skipspaces(%struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @reader_cmp(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @reader_get_ptr(%struct.TYPE_15__*) #1

declare dso_local i32 @reader_get_cur(%struct.TYPE_15__*) #1

declare dso_local i32 @reader_skipn(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @reader_parse_eq(%struct.TYPE_15__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @reader_parse_encname(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @reader_add_attr(%struct.TYPE_15__*, i32*, %struct.TYPE_16__*, i32*, %struct.TYPE_16__*, %struct.reader_position*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
