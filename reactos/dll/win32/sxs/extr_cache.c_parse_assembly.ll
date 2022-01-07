; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/sxs/extr_cache.c_parse_assembly.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/sxs/extr_cache.c_parse_assembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly = type { i8*, i8*, i8*, i8*, i8*, i32 }

@parse_assembly.identityW = internal constant [17 x i8] c"assemblyIdentity\00", align 16
@parse_assembly.typeW = internal constant [5 x i8] c"type\00", align 1
@parse_assembly.nameW = internal constant [5 x i8] c"name\00", align 1
@parse_assembly.versionW = internal constant [8 x i8] c"version\00", align 1
@parse_assembly.architectureW = internal constant [22 x i8] c"processorArchitecture\00", align 16
@parse_assembly.tokenW = internal constant [15 x i8] c"publicKeyToken\00", align 1
@S_OK = common dso_local global i64 0, align 8
@ERROR_SXS_MANIFEST_FORMAT_ERROR = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@win32W = common dso_local global i32 0, align 4
@win32_policyW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid win32 assembly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.assembly**)* @parse_assembly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_assembly(i32* %0, %struct.assembly** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.assembly**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.assembly*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.assembly** %1, %struct.assembly*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store %struct.assembly* null, %struct.assembly** %8, align 8
  %12 = call i32 @SysAllocString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @parse_assembly.identityW, i64 0, i64 0))
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @IXMLDOMDocument_getElementsByTagName(i32* %13, i32 %14, i32** %5)
  store i64 %15, i64* %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @SysFreeString(i32 %16)
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %137

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @IXMLDOMNodeList_get_length(i32* %23, i32* %11)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %137

29:                                               ; preds = %22
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* @ERROR_SXS_MANIFEST_FORMAT_ERROR, align 8
  store i64 %33, i64* %10, align 8
  br label %137

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @IXMLDOMNodeList_nextNode(i32* %35, i32** %6)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %137

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* @ERROR_SXS_MANIFEST_FORMAT_ERROR, align 8
  store i64 %45, i64* %10, align 8
  br label %137

46:                                               ; preds = %41
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %49 = call %struct.assembly* @HeapAlloc(i32 %47, i32 %48, i32 48)
  store %struct.assembly* %49, %struct.assembly** %8, align 8
  %50 = icmp ne %struct.assembly* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %52, i64* %10, align 8
  br label %137

53:                                               ; preds = %46
  %54 = load %struct.assembly*, %struct.assembly** %8, align 8
  %55 = getelementptr inbounds %struct.assembly, %struct.assembly* %54, i32 0, i32 5
  %56 = call i32 @list_init(i32* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = call i64 @IXMLDOMNode_get_attributes(i32* %57, i32** %7)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %137

63:                                               ; preds = %53
  %64 = load i32*, i32** %7, align 8
  %65 = call i8* @get_attribute_value(i32* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @parse_assembly.typeW, i64 0, i64 0))
  %66 = load %struct.assembly*, %struct.assembly** %8, align 8
  %67 = getelementptr inbounds %struct.assembly, %struct.assembly* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i8* @get_attribute_value(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @parse_assembly.nameW, i64 0, i64 0))
  %70 = load %struct.assembly*, %struct.assembly** %8, align 8
  %71 = getelementptr inbounds %struct.assembly, %struct.assembly* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i8* @get_attribute_value(i32* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @parse_assembly.versionW, i64 0, i64 0))
  %74 = load %struct.assembly*, %struct.assembly** %8, align 8
  %75 = getelementptr inbounds %struct.assembly, %struct.assembly* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i8* @get_attribute_value(i32* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @parse_assembly.architectureW, i64 0, i64 0))
  %78 = load %struct.assembly*, %struct.assembly** %8, align 8
  %79 = getelementptr inbounds %struct.assembly, %struct.assembly* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i8* @get_attribute_value(i32* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @parse_assembly.tokenW, i64 0, i64 0))
  %82 = load %struct.assembly*, %struct.assembly** %8, align 8
  %83 = getelementptr inbounds %struct.assembly, %struct.assembly* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.assembly*, %struct.assembly** %8, align 8
  %85 = getelementptr inbounds %struct.assembly, %struct.assembly* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %122

88:                                               ; preds = %63
  %89 = load %struct.assembly*, %struct.assembly** %8, align 8
  %90 = getelementptr inbounds %struct.assembly, %struct.assembly* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* @win32W, align 4
  %93 = call i64 @strcmpW(i8* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.assembly*, %struct.assembly** %8, align 8
  %97 = getelementptr inbounds %struct.assembly, %struct.assembly* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @win32_policyW, align 4
  %100 = call i64 @strcmpW(i8* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %122, label %102

102:                                              ; preds = %95, %88
  %103 = load %struct.assembly*, %struct.assembly** %8, align 8
  %104 = getelementptr inbounds %struct.assembly, %struct.assembly* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %122

107:                                              ; preds = %102
  %108 = load %struct.assembly*, %struct.assembly** %8, align 8
  %109 = getelementptr inbounds %struct.assembly, %struct.assembly* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.assembly*, %struct.assembly** %8, align 8
  %114 = getelementptr inbounds %struct.assembly, %struct.assembly* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.assembly*, %struct.assembly** %8, align 8
  %119 = getelementptr inbounds %struct.assembly, %struct.assembly* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %117, %112, %107, %102, %95, %63
  %123 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %124 = load i64, i64* @ERROR_SXS_MANIFEST_FORMAT_ERROR, align 8
  store i64 %124, i64* %10, align 8
  br label %137

125:                                              ; preds = %117
  %126 = load %struct.assembly*, %struct.assembly** %8, align 8
  %127 = getelementptr inbounds %struct.assembly, %struct.assembly* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @win32W, align 4
  %130 = call i64 @strcmpW(i8* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = load i32*, i32** %3, align 8
  %134 = load %struct.assembly*, %struct.assembly** %8, align 8
  %135 = call i64 @parse_files(i32* %133, %struct.assembly* %134)
  store i64 %135, i64* %10, align 8
  br label %136

136:                                              ; preds = %132, %125
  br label %137

137:                                              ; preds = %136, %122, %62, %51, %44, %40, %32, %28, %21
  %138 = load i32*, i32** %7, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @IXMLDOMNamedNodeMap_Release(i32* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32*, i32** %6, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %6, align 8
  %148 = call i32 @IXMLDOMNode_Release(i32* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32*, i32** %5, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @IXMLDOMNodeList_Release(i32* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i64, i64* %10, align 8
  %157 = load i64, i64* @S_OK, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load %struct.assembly*, %struct.assembly** %8, align 8
  %161 = load %struct.assembly**, %struct.assembly*** %4, align 8
  store %struct.assembly* %160, %struct.assembly** %161, align 8
  br label %165

162:                                              ; preds = %155
  %163 = load %struct.assembly*, %struct.assembly** %8, align 8
  %164 = call i32 @free_assembly(%struct.assembly* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i64, i64* %10, align 8
  ret i64 %166
}

declare dso_local i32 @SysAllocString(i8*) #1

declare dso_local i64 @IXMLDOMDocument_getElementsByTagName(i32*, i32, i32**) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @IXMLDOMNodeList_get_length(i32*, i32*) #1

declare dso_local i64 @IXMLDOMNodeList_nextNode(i32*, i32**) #1

declare dso_local %struct.assembly* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i64 @IXMLDOMNode_get_attributes(i32*, i32**) #1

declare dso_local i8* @get_attribute_value(i32*, i8*) #1

declare dso_local i64 @strcmpW(i8*, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @parse_files(i32*, %struct.assembly*) #1

declare dso_local i32 @IXMLDOMNamedNodeMap_Release(i32*) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

declare dso_local i32 @IXMLDOMNodeList_Release(i32*) #1

declare dso_local i32 @free_assembly(%struct.assembly*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
