; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_stag.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_stag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.element, %struct.reader_position }
%struct.element = type { %struct.reader_position, i32, i32, i32 }
%struct.reader_position = type { i32 }

@reader_parse_stag.endW = internal constant [3 x i8] c"/>\00", align 1
@S_OK = common dso_local global i32 0, align 4
@gtW = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32*, i32*)* @reader_parse_stag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_stag(%struct.TYPE_12__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.reader_position, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.element*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = bitcast %struct.reader_position* %10 to i8*
  %16 = bitcast %struct.reader_position* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @reader_parse_qname(%struct.TYPE_12__* %17, i32* %18, i32* %19, i32* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %95

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %94, %27
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = call i32 @reader_skipspaces(%struct.TYPE_12__* %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = call i32 @reader_cmp(%struct.TYPE_12__* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @reader_parse_stag.endW, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br i1 %34, label %38, label %73

38:                                               ; preds = %28
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  store %struct.element* %40, %struct.element** %12, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = call i32 @reader_skipn(%struct.TYPE_12__* %41, i32 2)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = load %struct.element*, %struct.element** %12, align 8
  %45 = getelementptr inbounds %struct.element, %struct.element* %44, i32 0, i32 2
  %46 = call i32 @reader_free_strvalued(%struct.TYPE_12__* %43, i32* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = load %struct.element*, %struct.element** %12, align 8
  %49 = getelementptr inbounds %struct.element, %struct.element* %48, i32 0, i32 1
  %50 = call i32 @reader_free_strvalued(%struct.TYPE_12__* %47, i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.element*, %struct.element** %12, align 8
  %54 = getelementptr inbounds %struct.element, %struct.element* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.element*, %struct.element** %12, align 8
  %58 = getelementptr inbounds %struct.element, %struct.element* %57, i32 0, i32 2
  %59 = call i32 @reader_strvaldup(%struct.TYPE_12__* %55, i32* %56, i32* %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.element*, %struct.element** %12, align 8
  %63 = getelementptr inbounds %struct.element, %struct.element* %62, i32 0, i32 1
  %64 = call i32 @reader_strvaldup(%struct.TYPE_12__* %60, i32* %61, i32* %63)
  %65 = load %struct.element*, %struct.element** %12, align 8
  %66 = getelementptr inbounds %struct.element, %struct.element* %65, i32 0, i32 0
  %67 = bitcast %struct.reader_position* %66 to i8*
  %68 = bitcast %struct.reader_position* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = load %struct.element*, %struct.element** %12, align 8
  %71 = call i32 @reader_mark_ns_nodes(%struct.TYPE_12__* %69, %struct.element* %70)
  %72 = load i32, i32* @S_OK, align 4
  store i32 %72, i32* %5, align 4
  br label %95

73:                                               ; preds = %28
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = load i8*, i8** @gtW, align 8
  %76 = call i32 @reader_cmp(%struct.TYPE_12__* %74, i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = call i32 @reader_skipn(%struct.TYPE_12__* %79, i32 1)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @reader_push_element(%struct.TYPE_12__* %81, i32* %82, i32* %83, i32* %84, %struct.reader_position* %10)
  store i32 %85, i32* %5, align 4
  br label %95

86:                                               ; preds = %73
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = call i32 @reader_parse_attribute(%struct.TYPE_12__* %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i64 @FAILED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %5, align 4
  br label %95

94:                                               ; preds = %86
  br label %28

95:                                               ; preds = %92, %78, %38, %25
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reader_parse_qname(%struct.TYPE_12__*, i32*, i32*, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @reader_skipspaces(%struct.TYPE_12__*) #2

declare dso_local i32 @reader_cmp(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @reader_skipn(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @reader_free_strvalued(%struct.TYPE_12__*, i32*) #2

declare dso_local i32 @reader_strvaldup(%struct.TYPE_12__*, i32*, i32*) #2

declare dso_local i32 @reader_mark_ns_nodes(%struct.TYPE_12__*, %struct.element*) #2

declare dso_local i32 @reader_push_element(%struct.TYPE_12__*, i32*, i32*, i32*, %struct.reader_position*) #2

declare dso_local i32 @reader_parse_attribute(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
