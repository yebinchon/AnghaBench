; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_xmldecl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_xmldecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, %struct.reader_position }
%struct.TYPE_11__ = type { %struct.reader_position }
%struct.reader_position = type { i32 }

@reader_parse_xmldecl.xmldeclW = internal constant [7 x i8] c"<?xml \00", align 1
@reader_parse_xmldecl.declcloseW = internal constant [3 x i8] c"?>\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@WC_E_XMLDECL = common dso_local global i32 0, align 4
@XmlNodeType_XmlDeclaration = common dso_local global i32 0, align 4
@StringValue_LocalName = common dso_local global i32 0, align 4
@strval_xml = common dso_local global i32 0, align 4
@StringValue_QualifiedName = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @reader_parse_xmldecl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_xmldecl(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.reader_position, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = call i64 @reader_cmp(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @reader_parse_xmldecl.xmldeclW, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @S_FALSE, align 4
  store i32 %10, i32* %2, align 4
  br label %69

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = call i32 @reader_skipn(%struct.TYPE_12__* %12, i32 2)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = bitcast %struct.reader_position* %4 to i8*
  %17 = bitcast %struct.reader_position* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = call i32 @reader_skipn(%struct.TYPE_12__* %18, i32 3)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = call i32 @reader_parse_versioninfo(%struct.TYPE_12__* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %11
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %69

27:                                               ; preds = %11
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = call i32 @reader_parse_encdecl(%struct.TYPE_12__* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %69

35:                                               ; preds = %27
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = call i32 @reader_parse_sddecl(%struct.TYPE_12__* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %69

43:                                               ; preds = %35
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = call i32 @reader_skipspaces(%struct.TYPE_12__* %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = call i64 @reader_cmp(%struct.TYPE_12__* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @reader_parse_xmldecl.declcloseW, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @WC_E_XMLDECL, align 4
  store i32 %50, i32* %2, align 4
  br label %69

51:                                               ; preds = %43
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = call i32 @reader_skipn(%struct.TYPE_12__* %52, i32 2)
  %54 = load i32, i32* @XmlNodeType_XmlDeclaration, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = bitcast %struct.reader_position* %59 to i8*
  %61 = bitcast %struct.reader_position* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = load i32, i32* @StringValue_LocalName, align 4
  %64 = call i32 @reader_set_strvalue(%struct.TYPE_12__* %62, i32 %63, i32* @strval_xml)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = load i32, i32* @StringValue_QualifiedName, align 4
  %67 = call i32 @reader_set_strvalue(%struct.TYPE_12__* %65, i32 %66, i32* @strval_xml)
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %51, %49, %41, %33, %25, %9
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @reader_cmp(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @reader_skipn(%struct.TYPE_12__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @reader_parse_versioninfo(%struct.TYPE_12__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @reader_parse_encdecl(%struct.TYPE_12__*) #1

declare dso_local i32 @reader_parse_sddecl(%struct.TYPE_12__*) #1

declare dso_local i32 @reader_skipspaces(%struct.TYPE_12__*) #1

declare dso_local i32 @reader_set_strvalue(%struct.TYPE_12__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
