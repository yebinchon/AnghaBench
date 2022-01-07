; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_TransformWithLoadingLocalFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_TransformWithLoadingLocalFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"customers.xml\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not create file: %u\0A\00", align 1
@szBasicTransformXML = common dso_local global i8* null, align 8
@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@szTypeValueXML = common dso_local global i8* null, align 8
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Expected VARIANT_TRUE got VARIANT_FALSE\0A\00", align 1
@szBasicTransformSSXMLPart1 = common dso_local global i8* null, align 8
@szBasicTransformSSXMLPart2 = common dso_local global i8* null, align 8
@IID_IXMLDOMNode = common dso_local global i32 0, align 4
@szBasicTransformOutput = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Stylesheet output not correct\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_TransformWithLoadingLocalFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_TransformWithLoadingLocalFile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = call i32 @GetTempPathA(i32 %22, i8* %21)
  %24 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @GENERIC_WRITE, align 4
  %26 = load i32, i32* @CREATE_ALWAYS, align 4
  %27 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %28 = call i64 @CreateFileA(i8* %21, i32 %25, i32 0, i32* null, i32 %26, i32 %27, i32* null)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %0
  store i32 1, i32* %11, align 4
  br label %178

39:                                               ; preds = %0
  %40 = load i64, i64* %6, align 8
  %41 = load i8*, i8** @szBasicTransformXML, align 8
  %42 = load i8*, i8** @szBasicTransformXML, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = call i32 @WriteFile(i64 %40, i8* %41, i32 %43, i32* %7, i32* null)
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @CloseHandle(i64 %45)
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %63, %39
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @strlen(i8* %21)
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %21, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 92
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %21, i64 %60
  store i8 47, i8* %61, align 1
  br label %62

62:                                               ; preds = %58, %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %47

66:                                               ; preds = %47
  %67 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %67, i32** %1, align 8
  %68 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %68, i32** %2, align 8
  %69 = load i32*, i32** %1, align 8
  %70 = load i8*, i8** @szTypeValueXML, align 8
  %71 = call i32 @_bstr_(i8* %70)
  %72 = call i64 @IXMLDOMDocument_loadXML(i32* %69, i32 %71, i64* %4)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %5, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @VARIANT_TRUE, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @VARIANT_TRUE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %171

87:                                               ; preds = %66
  %88 = load i8*, i8** @szBasicTransformSSXMLPart1, align 8
  %89 = call i32 @_bstr_(i8* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i8*, i8** @szBasicTransformSSXMLPart2, align 8
  %91 = call i32 @_bstr_(i8* %90)
  store i32 %91, i32* %14, align 4
  %92 = call i32 @_bstr_(i8* %21)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @lstrlenW(i32 %93)
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @lstrlenW(i32 %95)
  %97 = add nsw i32 %94, %96
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @lstrlenW(i32 %98)
  %100 = add nsw i32 %97, %99
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @SysAllocStringLen(i32* null, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @lstrcpyW(i32 %104, i32 %105)
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @lstrcatW(i32 %107, i32 %108)
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @lstrcatW(i32 %110, i32 %111)
  %113 = load i32*, i32** %2, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i64 @IXMLDOMDocument_loadXML(i32* %113, i32 %114, i64* %4)
  store i64 %115, i64* %5, align 8
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* @S_OK, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %5, align 8
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %120)
  %122 = load i64, i64* %4, align 8
  %123 = load i64, i64* @VARIANT_TRUE, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i64, i64* %4, align 8
  %128 = load i64, i64* @VARIANT_TRUE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %168

130:                                              ; preds = %87
  %131 = load i32*, i32** %2, align 8
  %132 = bitcast i32** %3 to i8**
  %133 = call i64 @IXMLDOMDocument_QueryInterface(i32* %131, i32* @IID_IXMLDOMNode, i8** %132)
  store i64 %133, i64* %5, align 8
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* @S_OK, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i64, i64* %5, align 8
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %138)
  %140 = load i64, i64* %5, align 8
  %141 = load i64, i64* @S_OK, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %167

143:                                              ; preds = %130
  %144 = load i32*, i32** %1, align 8
  %145 = load i32*, i32** %3, align 8
  %146 = call i64 @IXMLDOMDocument_transformNode(i32* %144, i32* %145, i32* %17)
  store i64 %146, i64* %5, align 8
  %147 = load i64, i64* %5, align 8
  %148 = load i64, i64* @S_OK, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i64, i64* %5, align 8
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %151)
  %153 = load i64, i64* %5, align 8
  %154 = load i64, i64* @S_OK, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %143
  %157 = load i32, i32* %17, align 4
  %158 = load i8*, i8** @szBasicTransformOutput, align 8
  %159 = call i32 @_bstr_(i8* %158)
  %160 = call i32 @compareIgnoreReturns(i32 %157, i32 %159)
  %161 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @SysFreeString(i32 %162)
  br label %164

164:                                              ; preds = %156, %143
  %165 = load i32*, i32** %3, align 8
  %166 = call i32 @IXMLDOMNode_Release(i32* %165)
  br label %167

167:                                              ; preds = %164, %130
  br label %168

168:                                              ; preds = %167, %87
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @SysFreeString(i32 %169)
  br label %171

171:                                              ; preds = %168, %66
  %172 = load i32*, i32** %1, align 8
  %173 = call i32 @IXMLDOMDocument_Release(i32* %172)
  %174 = load i32*, i32** %2, align 8
  %175 = call i32 @IXMLDOMDocument_Release(i32* %174)
  %176 = call i32 @DeleteFileA(i8* %21)
  %177 = call i32 (...) @free_bstrs()
  store i32 0, i32* %11, align 4
  br label %178

178:                                              ; preds = %171, %38
  %179 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %11, align 4
  switch i32 %180, label %182 [
    i32 0, label %181
    i32 1, label %181
  ]

181:                                              ; preds = %178, %178
  ret void

182:                                              ; preds = %178
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32* @create_document(i32*) #2

declare dso_local i64 @IXMLDOMDocument_loadXML(i32*, i32, i64*) #2

declare dso_local i32 @_bstr_(i8*) #2

declare dso_local i32 @lstrlenW(i32) #2

declare dso_local i32 @SysAllocStringLen(i32*, i32) #2

declare dso_local i32 @lstrcpyW(i32, i32) #2

declare dso_local i32 @lstrcatW(i32, i32) #2

declare dso_local i64 @IXMLDOMDocument_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i64 @IXMLDOMDocument_transformNode(i32*, i32*, i32*) #2

declare dso_local i32 @compareIgnoreReturns(i32, i32) #2

declare dso_local i32 @SysFreeString(i32) #2

declare dso_local i32 @IXMLDOMNode_Release(i32*) #2

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @free_bstrs(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
