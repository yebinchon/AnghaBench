; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_reader_create.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_reader_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@IID_IStream = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@IID_IXmlReader = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"unexpected interface\0A\00", align 1
@XmlReadState_Closed = common dso_local global i32 0, align 4
@XmlNodeType_Element = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i32 0, align 4
@XmlNodeType_None = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@XmlReaderProperty_XmlResolver = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@testresolver = common dso_local global i32 0, align 4
@XmlReaderProperty_DtdProcessing = common dso_local global i32 0, align 4
@DtdProcessing_Prohibit = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Expected E_INVALIDARG, got %08x\0A\00", align 1
@XmlReadState_Initial = common dso_local global i32 0, align 4
@input_iids = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"Expected E_NOINTERFACE, got %08x\0A\00", align 1
@setinput_full = common dso_local global i32 0, align 4
@setinput_full_old = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reader_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reader_create() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = bitcast i32** %3 to i8**
  %9 = call i32 @CreateXmlReader(i32* @IID_IStream, i8** %8, i32* null)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @E_NOINTERFACE, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %7, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = bitcast i32** %3 to i8**
  %17 = call i32 @CreateXmlReader(i32* @IID_IUnknown, i8** %16, i32* null)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @S_OK, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = bitcast i32** %4 to i8**
  %26 = call i32 @IUnknown_QueryInterface(i32* %24, i32* @IID_IXmlReader, i8** %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = icmp eq i32* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @IXmlReader_Release(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @IUnknown_Release(i32* %40)
  %42 = bitcast i32** %4 to i8**
  %43 = call i32 @CreateXmlReader(i32* @IID_IUnknown, i8** %42, i32* null)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @S_OK, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @IXmlReader_Release(i32* %50)
  %52 = bitcast i32** %4 to i8**
  %53 = call i32 @CreateXmlReader(i32* @IID_IXmlReader, i8** %52, i32* null)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @S_OK, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @XmlReadState_Closed, align 4
  %62 = call i32 @TEST_READER_STATE(i32* %60, i32 %61)
  %63 = load i64, i64* @XmlNodeType_Element, align 8
  store i64 %63, i64* %6, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @IXmlReader_GetNodeType(i32* %64, i64* %6)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @S_FALSE, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @XmlNodeType_None, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %6, align 8
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @XmlReaderProperty_XmlResolver, align 4
  %80 = bitcast i32** %1 to i32*
  %81 = call i32 @IXmlReader_GetProperty(i32* %78, i32 %79, i32* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @S_OK, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %1, align 8
  %89 = icmp eq i32* %88, null
  %90 = zext i1 %89 to i32
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* @XmlReaderProperty_XmlResolver, align 4
  %95 = call i32 @IXmlReader_SetProperty(i32* %93, i32 %94, i32 0)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @S_OK, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* @XmlReaderProperty_XmlResolver, align 4
  %104 = call i32 @IXmlReader_SetProperty(i32* %102, i32 %103, i32 ptrtoint (i32* @testresolver to i32))
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @S_OK, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %7, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  store i32* null, i32** %1, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* @XmlReaderProperty_XmlResolver, align 4
  %113 = bitcast i32** %1 to i32*
  %114 = call i32 @IXmlReader_GetProperty(i32* %111, i32 %112, i32* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @S_OK, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %7, align 4
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %1, align 8
  %122 = icmp eq i32* %121, @testresolver
  %123 = zext i1 %122 to i32
  %124 = load i32*, i32** %1, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %124)
  %126 = load i32*, i32** %1, align 8
  %127 = call i32 @IXmlResolver_Release(i32* %126)
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* @XmlReaderProperty_XmlResolver, align 4
  %130 = call i32 @IXmlReader_SetProperty(i32* %128, i32 %129, i32 0)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @S_OK, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  store i32 2, i32* %5, align 4
  %137 = load i32*, i32** %4, align 8
  %138 = load i32, i32* @XmlReaderProperty_DtdProcessing, align 4
  %139 = call i32 @IXmlReader_GetProperty(i32* %137, i32 %138, i32* %5)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @S_OK, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %7, align 4
  %145 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @DtdProcessing_Prohibit, align 4
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %5, align 4
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  store i32 2, i32* %5, align 4
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* @XmlReaderProperty_DtdProcessing, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @IXmlReader_SetProperty(i32* %152, i32 %153, i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @E_INVALIDARG, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %7, align 4
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %160)
  %162 = load i32*, i32** %4, align 8
  %163 = load i32, i32* @XmlReaderProperty_DtdProcessing, align 4
  %164 = call i32 @IXmlReader_SetProperty(i32* %162, i32 %163, i32 -1)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @E_INVALIDARG, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = load i32, i32* %7, align 4
  %170 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %169)
  %171 = load i32*, i32** %4, align 8
  %172 = call i32 @IXmlReader_SetInput(i32* %171, i32* null)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @S_OK, align 4
  %175 = icmp eq i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %7, align 4
  %178 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %177)
  %179 = load i32*, i32** %4, align 8
  %180 = load i32, i32* @XmlReadState_Initial, align 4
  %181 = load i32, i32* @XmlReadState_Closed, align 4
  %182 = call i32 @TEST_READER_STATE2(i32* %179, i32 %180, i32 %181)
  %183 = bitcast i32** %2 to i8**
  %184 = call i32 @testinput_createinstance(i8** %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @S_OK, align 4
  %187 = icmp eq i32 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* %7, align 4
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @S_OK, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %0
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @input_iids, i32 0, i32 0), align 8
  %195 = load i32*, i32** %4, align 8
  %196 = load i32*, i32** %2, align 8
  %197 = call i32 @IXmlReader_SetInput(i32* %195, i32* %196)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @E_NOINTERFACE, align 4
  %200 = icmp eq i32 %198, %199
  %201 = zext i1 %200 to i32
  %202 = load i32, i32* %7, align 4
  %203 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @setinput_full, align 4
  %205 = load i32, i32* @setinput_full_old, align 4
  %206 = load i32, i32* @FALSE, align 4
  %207 = call i32 @ok_iids(%struct.TYPE_3__* @input_iids, i32 %204, i32 %205, i32 %206)
  %208 = load i32*, i32** %2, align 8
  %209 = call i32 @IUnknown_Release(i32* %208)
  br label %210

210:                                              ; preds = %194, %0
  %211 = load i32*, i32** %4, align 8
  %212 = call i32 @IXmlReader_Release(i32* %211)
  ret void
}

declare dso_local i32 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IXmlReader_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @TEST_READER_STATE(i32*, i32) #1

declare dso_local i32 @IXmlReader_GetNodeType(i32*, i64*) #1

declare dso_local i32 @IXmlReader_GetProperty(i32*, i32, i32*) #1

declare dso_local i32 @IXmlReader_SetProperty(i32*, i32, i32) #1

declare dso_local i32 @IXmlResolver_Release(i32*) #1

declare dso_local i32 @IXmlReader_SetInput(i32*, i32*) #1

declare dso_local i32 @TEST_READER_STATE2(i32*, i32, i32) #1

declare dso_local i32 @testinput_createinstance(i8**) #1

declare dso_local i32 @ok_iids(%struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
