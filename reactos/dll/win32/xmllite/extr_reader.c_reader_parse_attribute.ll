; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_attribute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.reader_position }
%struct.reader_position = type { i32 }

@strval_xmlns = common dso_local global i32 0, align 4
@ATTRIBUTE_NS_DEFINITION = common dso_local global i32 0, align 4
@ATTRIBUTE_DEFAULT_NS_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @reader_parse_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_attribute(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.reader_position, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = bitcast %struct.reader_position* %4 to i8*
  %14 = bitcast %struct.reader_position* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = call i32 @reader_parse_qname(%struct.TYPE_10__* %15, i32* %5, i32* %6, i32* %7)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %2, align 4
  br label %80

22:                                               ; preds = %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = call i64 @strval_eq(%struct.TYPE_10__* %23, i32* %5, i32* @strval_xmlns)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @ATTRIBUTE_NS_DEFINITION, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = call i64 @strval_eq(%struct.TYPE_10__* %31, i32* %7, i32* @strval_xmlns)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @ATTRIBUTE_DEFAULT_NS_DEFINITION, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = call i32 @reader_parse_eq(%struct.TYPE_10__* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %2, align 4
  br label %80

46:                                               ; preds = %38
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = call i32 @reader_parse_attvalue(%struct.TYPE_10__* %47, i32* %8)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @FAILED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %2, align 4
  br label %80

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @ATTRIBUTE_NS_DEFINITION, align 4
  %57 = load i32, i32* @ATTRIBUTE_DEFAULT_NS_DEFINITION, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @ATTRIBUTE_DEFAULT_NS_DEFINITION, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @reader_push_ns(%struct.TYPE_10__* %62, i32* %6, i32* %8, i32 %69)
  br label %71

71:                                               ; preds = %61, %54
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = call i32 @debug_strval(%struct.TYPE_10__* %72, i32* %6)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = call i32 @debug_strval(%struct.TYPE_10__* %74, i32* %8)
  %76 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @reader_add_attr(%struct.TYPE_10__* %77, i32* %5, i32* %6, i32* %7, i32* %8, %struct.reader_position* %4, i32 %78)
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %71, %52, %44, %20
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reader_parse_qname(%struct.TYPE_10__*, i32*, i32*, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i64 @strval_eq(%struct.TYPE_10__*, i32*, i32*) #2

declare dso_local i32 @reader_parse_eq(%struct.TYPE_10__*) #2

declare dso_local i32 @reader_parse_attvalue(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @reader_push_ns(%struct.TYPE_10__*, i32*, i32*, i32) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debug_strval(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @reader_add_attr(%struct.TYPE_10__*, i32*, i32*, i32*, i32*, %struct.reader_position*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
