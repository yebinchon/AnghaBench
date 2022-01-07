; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_namespaces_as_attributes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_namespaces_as_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i64 }
%struct.test = type { i8*, i32, [3 x i8*], [3 x i8*], [3 x i8*], [3 x i8*], [3 x i8*] }

@namespace_as_attribute_test_data = common dso_local global %struct.TYPE_13__* null, align 8
@test_namespaces_as_attributes.tests = internal constant [5 x %struct.test] [%struct.test { i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 3, [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)] }, %struct.test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 1, [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null], [3 x i8*] zeroinitializer, [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null], [3 x i8*] zeroinitializer, [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null] }, %struct.test { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i32 1, [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null], [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null], [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null], [3 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null], [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null] }, %struct.test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 0, [3 x i8*] zeroinitializer, [3 x i8*] zeroinitializer, [3 x i8*] zeroinitializer, [3 x i8*] zeroinitializer, [3 x i8*] zeroinitializer }, %struct.test zeroinitializer], align 16
@.str = private unnamed_addr constant [49 x i8] c"<a ns:b=\22b attr\22 d=\22d attr\22 xmlns:ns=\22nshref\22 />\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ns:b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"xmlns:ns\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"xmlns\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"nshref\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"b attr\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"d attr\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"<a d=\22d attr\22 />\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"<a xmlns:ns=\22nshref\22 />\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"<a />\00", align 1
@IID_IXMLDOMDocument2 = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"Failed to create document %s, hr %#x.\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [29 x i8] c"Failed to load xml, hr %#x.\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Failed to select a node, hr %#x.\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Failed to get attributes, hr %#x.\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Failed to get map length, hr %#x.\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [29 x i8] c"Failed to get item, hr %#x.\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Item should be NULL\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Failed to get node name, hr %#x.\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Failed to get base name, hr %#x.\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Failed to get node text, hr %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_namespaces_as_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_namespaces_as_attributes() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca %struct.test*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** @namespace_as_attribute_test_data, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %1, align 8
  br label %13

13:                                               ; preds = %305, %24, %0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %308

18:                                               ; preds = %13
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @is_clsid_supported(i64 %21, i32* @IID_IXMLDOMDocument2)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 1
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %1, align 8
  br label %13

27:                                               ; preds = %18
  store %struct.test* getelementptr inbounds ([5 x %struct.test], [5 x %struct.test]* @test_namespaces_as_attributes.tests, i64 0, i64 0), %struct.test** %2, align 8
  br label %28

28:                                               ; preds = %296, %27
  %29 = load %struct.test*, %struct.test** %2, align 8
  %30 = getelementptr inbounds %struct.test, %struct.test* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %305

33:                                               ; preds = %28
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %38 = bitcast i32** %6 to i8**
  %39 = call i64 @CoCreateInstance(i64 %36, i32* null, i32 %37, i32* @IID_IXMLDOMDocument2, i8** %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @SUCCEEDED(i64 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @wine_dbgstr_guid(i64 %44)
  %46 = load i64, i64* %10, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32 %45, i64 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.test*, %struct.test** %2, align 8
  %50 = getelementptr inbounds %struct.test, %struct.test* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @_bstr_(i8* %51)
  %53 = call i64 @IXMLDOMDocument_loadXML(i32* %48, i32 %52, i32* %7)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %10, align 8
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i64 %58)
  store i32* null, i32** %4, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @_bstr_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %62 = call i64 @IXMLDOMDocument_selectSingleNode(i32* %60, i32 %61, i32** %4)
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @SUCCEEDED(i64 %63)
  %65 = load i64, i64* %10, align 8
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i64 @IXMLDOMNode_get_attributes(i32* %67, i32** %3)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @SUCCEEDED(i64 %69)
  %71 = load i64, i64* %10, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i64 %71)
  store i64 -1, i64* %8, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = call i64 @IXMLDOMNamedNodeMap_get_length(i32* %73, i64* %8)
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @SUCCEEDED(i64 %75)
  %77 = load i64, i64* %10, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.test*, %struct.test** %2, align 8
  %81 = getelementptr inbounds %struct.test, %struct.test* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = icmp eq i64 %79, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %8, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i64 %86)
  store i32* null, i32** %5, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = load %struct.test*, %struct.test** %2, align 8
  %90 = getelementptr inbounds %struct.test, %struct.test* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = call i64 @IXMLDOMNamedNodeMap_get_item(i32* %88, i64 %93, i32** %5)
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @S_FALSE, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %10, align 8
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i64 %99)
  %101 = load i32*, i32** %5, align 8
  %102 = icmp ne i32* %101, null
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %106

106:                                              ; preds = %293, %33
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %296

110:                                              ; preds = %106
  store i32* null, i32** %5, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i64 @IXMLDOMNamedNodeMap_get_item(i32* %111, i64 %112, i32** %5)
  store i64 %113, i64* %10, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @SUCCEEDED(i64 %114)
  %116 = load i64, i64* %10, align 8
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i64 %116)
  store i32* null, i32** %11, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = call i64 @IXMLDOMNode_get_nodeName(i32* %118, i32** %11)
  store i64 %119, i64* %10, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @SUCCEEDED(i64 %120)
  %122 = load i64, i64* %10, align 8
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i64 %122)
  %124 = load i32*, i32** %11, align 8
  %125 = load %struct.test*, %struct.test** %2, align 8
  %126 = getelementptr inbounds %struct.test, %struct.test* %125, i32 0, i32 2
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds [3 x i8*], [3 x i8*]* %126, i64 0, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @_bstr_(i8* %129)
  %131 = call i32 @lstrcmpW(i32* %124, i32 %130)
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = load i32*, i32** %11, align 8
  %136 = call i64 @wine_dbgstr_w(i32* %135)
  %137 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i64 %136)
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @SysFreeString(i32* %138)
  store i32* null, i32** %11, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = call i64 @IXMLDOMNode_get_prefix(i32* %140, i32** %11)
  store i64 %141, i64* %10, align 8
  %142 = load %struct.test*, %struct.test** %2, align 8
  %143 = getelementptr inbounds %struct.test, %struct.test* %142, i32 0, i32 3
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds [3 x i8*], [3 x i8*]* %143, i64 0, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %171

148:                                              ; preds = %110
  %149 = load i64, i64* %10, align 8
  %150 = load i64, i64* @S_OK, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i64, i64* %10, align 8
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i64 %153)
  %155 = load i32*, i32** %11, align 8
  %156 = load %struct.test*, %struct.test** %2, align 8
  %157 = getelementptr inbounds %struct.test, %struct.test* %156, i32 0, i32 3
  %158 = load i64, i64* %9, align 8
  %159 = getelementptr inbounds [3 x i8*], [3 x i8*]* %157, i64 0, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @_bstr_(i8* %160)
  %162 = call i32 @lstrcmpW(i32* %155, i32 %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = load i32*, i32** %11, align 8
  %167 = call i64 @wine_dbgstr_w(i32* %166)
  %168 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i64 %167)
  %169 = load i32*, i32** %11, align 8
  %170 = call i32 @SysFreeString(i32* %169)
  br label %178

171:                                              ; preds = %110
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* @S_FALSE, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i64, i64* %10, align 8
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i64 %176)
  br label %178

178:                                              ; preds = %171, %148
  store i32* null, i32** %11, align 8
  %179 = load i32*, i32** %5, align 8
  %180 = call i64 @IXMLDOMNode_get_baseName(i32* %179, i32** %11)
  store i64 %180, i64* %10, align 8
  %181 = load i64, i64* %10, align 8
  %182 = call i32 @SUCCEEDED(i64 %181)
  %183 = load i64, i64* %10, align 8
  %184 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i64 %183)
  %185 = load i32*, i32** %11, align 8
  %186 = load %struct.test*, %struct.test** %2, align 8
  %187 = getelementptr inbounds %struct.test, %struct.test* %186, i32 0, i32 4
  %188 = load i64, i64* %9, align 8
  %189 = getelementptr inbounds [3 x i8*], [3 x i8*]* %187, i64 0, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @_bstr_(i8* %190)
  %192 = call i32 @lstrcmpW(i32* %185, i32 %191)
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = load i32*, i32** %11, align 8
  %197 = call i64 @wine_dbgstr_w(i32* %196)
  %198 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i64 %197)
  %199 = load i32*, i32** %11, align 8
  %200 = call i32 @SysFreeString(i32* %199)
  store i32* null, i32** %11, align 8
  %201 = load i32*, i32** %5, align 8
  %202 = call i64 @IXMLDOMNode_get_namespaceURI(i32* %201, i32** %11)
  store i64 %202, i64* %10, align 8
  %203 = load %struct.test*, %struct.test** %2, align 8
  %204 = getelementptr inbounds %struct.test, %struct.test* %203, i32 0, i32 5
  %205 = load i64, i64* %9, align 8
  %206 = getelementptr inbounds [3 x i8*], [3 x i8*]* %204, i64 0, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %261

209:                                              ; preds = %178
  %210 = load i64, i64* %10, align 8
  %211 = load i64, i64* @S_OK, align 8
  %212 = icmp eq i64 %210, %211
  %213 = zext i1 %212 to i32
  %214 = load i64, i64* %10, align 8
  %215 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i64 %214)
  %216 = load %struct.test*, %struct.test** %2, align 8
  %217 = getelementptr inbounds %struct.test, %struct.test* %216, i32 0, i32 3
  %218 = load i64, i64* %9, align 8
  %219 = getelementptr inbounds [3 x i8*], [3 x i8*]* %217, i64 0, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %243

222:                                              ; preds = %209
  %223 = load %struct.test*, %struct.test** %2, align 8
  %224 = getelementptr inbounds %struct.test, %struct.test* %223, i32 0, i32 3
  %225 = load i64, i64* %9, align 8
  %226 = getelementptr inbounds [3 x i8*], [3 x i8*]* %224, i64 0, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @strcmp(i8* %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %243, label %230

230:                                              ; preds = %222
  %231 = load i32*, i32** %11, align 8
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @_bstr_(i8* %234)
  %236 = call i32 @lstrcmpW(i32* %231, i32 %235)
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = load i32*, i32** %11, align 8
  %241 = call i64 @wine_dbgstr_w(i32* %240)
  %242 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i64 %241)
  br label %258

243:                                              ; preds = %222, %209
  %244 = load i32*, i32** %11, align 8
  %245 = load %struct.test*, %struct.test** %2, align 8
  %246 = getelementptr inbounds %struct.test, %struct.test* %245, i32 0, i32 5
  %247 = load i64, i64* %9, align 8
  %248 = getelementptr inbounds [3 x i8*], [3 x i8*]* %246, i64 0, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @_bstr_(i8* %249)
  %251 = call i32 @lstrcmpW(i32* %244, i32 %250)
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = load i32*, i32** %11, align 8
  %256 = call i64 @wine_dbgstr_w(i32* %255)
  %257 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i64 %256)
  br label %258

258:                                              ; preds = %243, %230
  %259 = load i32*, i32** %11, align 8
  %260 = call i32 @SysFreeString(i32* %259)
  br label %268

261:                                              ; preds = %178
  %262 = load i64, i64* %10, align 8
  %263 = load i64, i64* @S_FALSE, align 8
  %264 = icmp eq i64 %262, %263
  %265 = zext i1 %264 to i32
  %266 = load i64, i64* %10, align 8
  %267 = call i32 (i32, i8*, ...) @ok(i32 %265, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i64 %266)
  br label %268

268:                                              ; preds = %261, %258
  store i32* null, i32** %11, align 8
  %269 = load i32*, i32** %5, align 8
  %270 = call i64 @IXMLDOMNode_get_text(i32* %269, i32** %11)
  store i64 %270, i64* %10, align 8
  %271 = load i64, i64* %10, align 8
  %272 = call i32 @SUCCEEDED(i64 %271)
  %273 = load i64, i64* %10, align 8
  %274 = call i32 (i32, i8*, ...) @ok(i32 %272, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i64 %273)
  %275 = load i32*, i32** %11, align 8
  %276 = load %struct.test*, %struct.test** %2, align 8
  %277 = getelementptr inbounds %struct.test, %struct.test* %276, i32 0, i32 6
  %278 = load i64, i64* %9, align 8
  %279 = getelementptr inbounds [3 x i8*], [3 x i8*]* %277, i64 0, i64 %278
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @_bstr_(i8* %280)
  %282 = call i32 @lstrcmpW(i32* %275, i32 %281)
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = load i32*, i32** %11, align 8
  %287 = call i64 @wine_dbgstr_w(i32* %286)
  %288 = call i32 (i32, i8*, ...) @ok(i32 %285, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i64 %287)
  %289 = load i32*, i32** %11, align 8
  %290 = call i32 @SysFreeString(i32* %289)
  %291 = load i32*, i32** %5, align 8
  %292 = call i32 @IXMLDOMNode_Release(i32* %291)
  br label %293

293:                                              ; preds = %268
  %294 = load i64, i64* %9, align 8
  %295 = add i64 %294, 1
  store i64 %295, i64* %9, align 8
  br label %106

296:                                              ; preds = %106
  %297 = load i32*, i32** %3, align 8
  %298 = call i32 @IXMLDOMNamedNodeMap_Release(i32* %297)
  %299 = load i32*, i32** %4, align 8
  %300 = call i32 @IXMLDOMNode_Release(i32* %299)
  %301 = load i32*, i32** %6, align 8
  %302 = call i32 @IXMLDOMDocument_Release(i32* %301)
  %303 = load %struct.test*, %struct.test** %2, align 8
  %304 = getelementptr inbounds %struct.test, %struct.test* %303, i32 1
  store %struct.test* %304, %struct.test** %2, align 8
  br label %28

305:                                              ; preds = %28
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 1
  store %struct.TYPE_13__* %307, %struct.TYPE_13__** %1, align 8
  br label %13

308:                                              ; preds = %13
  %309 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32 @is_clsid_supported(i64, i32*) #1

declare dso_local i64 @CoCreateInstance(i64, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i32 @wine_dbgstr_guid(i64) #1

declare dso_local i64 @IXMLDOMDocument_loadXML(i32*, i32, i32*) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i64 @IXMLDOMDocument_selectSingleNode(i32*, i32, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_attributes(i32*, i32**) #1

declare dso_local i64 @IXMLDOMNamedNodeMap_get_length(i32*, i64*) #1

declare dso_local i64 @IXMLDOMNamedNodeMap_get_item(i32*, i64, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_nodeName(i32*, i32**) #1

declare dso_local i32 @lstrcmpW(i32*, i32) #1

declare dso_local i64 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i64 @IXMLDOMNode_get_prefix(i32*, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_baseName(i32*, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_namespaceURI(i32*, i32**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @IXMLDOMNode_get_text(i32*, i32**) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

declare dso_local i32 @IXMLDOMNamedNodeMap_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
