; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_namespaceuri.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_namespaceuri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uri_test = type { i8*, [5 x i8*] }
%struct.uri_test.0 = type { i8*, i8** }

@.str = private unnamed_addr constant [67 x i8] c"<a xmlns=\22defns a\22><b xmlns=\22defns b\22><c xmlns=\22defns c\22/></b></a>\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"defns a\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"defns b\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"defns c\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"<r:a xmlns=\22defns a\22 xmlns:r=\22ns r\22/>\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ns r\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"<r:a xmlns=\22defns a\22 xmlns:r=\22ns r\22><b/></r:a>\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"<a xmlns=\22defns a\22 xmlns:r=\22ns r\22><r:b/></a>\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"<a><b><c/></b></a>\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"<a>text</a>\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"<a>\0D\0A</a>\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"<a><![CDATA[data]]></a>\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"<?xml version=\221.0\22 ?><a/>\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"<a><?pi ?></a>\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"<a><!-- comment --></a>\00", align 1
@__const.test_namespaceuri.uri_tests = private unnamed_addr constant [11 x %struct.uri_test] [%struct.uri_test { i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i32 0, i32 0), [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)] }, %struct.uri_test { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null] }, %struct.uri_test { i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null] }, %struct.uri_test { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0), [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null] }, %struct.uri_test { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)] }, %struct.uri_test { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null] }, %struct.uri_test { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null] }, %struct.uri_test { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null] }, %struct.uri_test { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i8* null] }, %struct.uri_test { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null] }, %struct.uri_test { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null] }], align 16
@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"S_OK, got %08x\0A\00", align 1
@XmlNodeType_Element = common dso_local global i32 0, align 4
@XmlNodeType_Text = common dso_local global i32 0, align 4
@XmlNodeType_CDATA = common dso_local global i32 0, align 4
@XmlNodeType_ProcessingInstruction = common dso_local global i32 0, align 4
@XmlNodeType_Comment = common dso_local global i32 0, align 4
@XmlNodeType_Whitespace = common dso_local global i32 0, align 4
@XmlNodeType_EndElement = common dso_local global i32 0, align 4
@XmlNodeType_XmlDeclaration = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"Unexpected node type %d.\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Unexpected NULL local name pointer\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Unexpected NULL qualified name pointer\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Unexpected empty local name\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Unexpected local name length\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Unexpected empty qualified name\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Unexpected qualified name length\0A\00", align 1
@XmlNodeType_None = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [25 x i8] c"Unexpected node type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_namespaceuri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_namespaceuri() #0 {
  %1 = alloca [11 x %struct.uri_test], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = bitcast [11 x %struct.uri_test]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([11 x %struct.uri_test]* @__const.test_namespaceuri.uri_tests to i8*), i64 528, i1 false)
  %12 = bitcast i32** %2 to i8**
  %13 = call i32 @CreateXmlReader(i32* @IID_IXmlReader, i8** %12, i32* null)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @S_OK, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %154, %0
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds [11 x %struct.uri_test], [11 x %struct.uri_test]* %1, i64 0, i64 0
  %23 = bitcast %struct.uri_test* %22 to %struct.uri_test.0*
  %24 = call i32 @ARRAY_SIZE(%struct.uri_test.0* %23)
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %157

26:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [11 x %struct.uri_test], [11 x %struct.uri_test]* %1, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.uri_test, %struct.uri_test* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 16
  %33 = call i32 @set_input_string(i32* %27, i8* %32)
  store i32 -1, i32* %3, align 4
  br label %34

34:                                               ; preds = %134, %26
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @IXmlReader_Read(i32* %35, i32* %3)
  %37 = load i32, i32* @S_OK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %147

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @XmlNodeType_Element, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %71, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @XmlNodeType_Text, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %71, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @XmlNodeType_CDATA, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %71, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @XmlNodeType_ProcessingInstruction, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @XmlNodeType_Comment, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @XmlNodeType_Whitespace, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @XmlNodeType_EndElement, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @XmlNodeType_XmlDeclaration, align 4
  %70 = icmp eq i32 %68, %69
  br label %71

71:                                               ; preds = %67, %63, %59, %55, %51, %47, %43, %39
  %72 = phi i1 [ true, %63 ], [ true, %59 ], [ true, %55 ], [ true, %51 ], [ true, %47 ], [ true, %43 ], [ true, %39 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %3, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %74)
  store i64* null, i64** %7, align 8
  store i64 0, i64* %9, align 8
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @IXmlReader_GetLocalName(i32* %76, i64** %7, i64* %9)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @S_OK, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %82)
  %84 = load i64*, i64** %7, align 8
  %85 = icmp ne i64* %84, null
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  store i64* null, i64** %8, align 8
  store i64 0, i64* %10, align 8
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @IXmlReader_GetQualifiedName(i32* %88, i64** %8, i64* %10)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @S_OK, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %94)
  %96 = load i64*, i64** %8, align 8
  %97 = icmp ne i64* %96, null
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0))
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @XmlNodeType_Element, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %115, label %103

103:                                              ; preds = %71
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @XmlNodeType_EndElement, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @XmlNodeType_ProcessingInstruction, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @XmlNodeType_XmlDeclaration, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %111, %107, %103, %71
  %116 = load i64*, i64** %7, align 8
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %121 = load i64, i64* %9, align 8
  %122 = icmp sgt i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  %125 = load i64*, i64** %8, align 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0))
  %130 = load i64, i64* %10, align 8
  %131 = icmp sgt i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0))
  br label %134

134:                                              ; preds = %115, %111
  %135 = load i32*, i32** %2, align 8
  %136 = load i32, i32* %4, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [11 x %struct.uri_test], [11 x %struct.uri_test]* %1, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.uri_test, %struct.uri_test* %138, i32 0, i32 1
  %140 = load i32, i32* %6, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [5 x i8*], [5 x i8*]* %139, i64 0, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @reader_namespace(i32* %135, i8* %143)
  %145 = load i32, i32* %6, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %34

147:                                              ; preds = %34
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @XmlNodeType_None, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %3, align 4
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %147
  %155 = load i32, i32* %4, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %4, align 4
  br label %20

157:                                              ; preds = %20
  %158 = load i32*, i32** %2, align 8
  %159 = call i32 @IXmlReader_Release(i32* %158)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CreateXmlReader(i32*, i8**, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @ARRAY_SIZE(%struct.uri_test.0*) #2

declare dso_local i32 @set_input_string(i32*, i8*) #2

declare dso_local i32 @IXmlReader_Read(i32*, i32*) #2

declare dso_local i32 @IXmlReader_GetLocalName(i32*, i64**, i64*) #2

declare dso_local i32 @IXmlReader_GetQualifiedName(i32*, i64**, i64*) #2

declare dso_local i32 @reader_namespace(i32*, i8*) #2

declare dso_local i32 @IXmlReader_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
