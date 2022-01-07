; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_max_element_depth.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_max_element_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_max_element_depth.xml = internal global i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [40 x i8] c"<a><b attrb=\22_b\22><c><d></d></c></b></a>\00", align 1
@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"S_OK, got %08x\0A\00", align 1
@XmlReaderProperty_MaxElementDepth = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@XmlReadState_Interactive = common dso_local global i32 0, align 4
@SC_E_MAXELEMENTDEPTH = common dso_local global i32 0, align 4
@XmlReadState_Error = common dso_local global i32 0, align 4
@XmlNodeType_None = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"got node type %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Unexpected node number %u\0A\00", align 1
@XmlReadState_EndOfFile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_max_element_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_max_element_depth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast i32** %3 to i8**
  %6 = call i32 @CreateXmlReader(i32* @IID_IXmlReader, i8** %5, i32* null)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @S_OK, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i8*, i8** @test_max_element_depth.xml, align 8
  %15 = call i32 @set_input_string(i32* %13, i8* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @XmlReaderProperty_MaxElementDepth, align 4
  %18 = call i32 @IXmlReader_SetProperty(i32* %16, i32 %17, i32 2)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @S_OK, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @TEST_DEPTH(i32* %25, i32 0)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @IXmlReader_Read(i32* %27, i32* null)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @S_OK, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @TEST_DEPTH(i32* %35, i32 0)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @IXmlReader_Read(i32* %37, i32* null)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @S_OK, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @TEST_DEPTH(i32* %45, i32 1)
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @XmlReadState_Interactive, align 4
  %49 = call i32 @TEST_READER_STATE(i32* %47, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @IXmlReader_Read(i32* %50, i32* null)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SC_E_MAXELEMENTDEPTH, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @TEST_DEPTH2(i32* %58, i32 0, i32 2)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @XmlReadState_Error, align 4
  %62 = call i32 @TEST_READER_STATE(i32* %60, i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* @XmlReaderProperty_MaxElementDepth, align 4
  %65 = call i32 @IXmlReader_SetProperty(i32* %63, i32 %64, i32 10)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @S_OK, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @IXmlReader_Read(i32* %72, i32* null)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @SC_E_MAXELEMENTDEPTH, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @TEST_DEPTH2(i32* %80, i32 0, i32 2)
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* @XmlReadState_Error, align 4
  %84 = call i32 @TEST_READER_STATE(i32* %82, i32 %83)
  %85 = load i32*, i32** %3, align 8
  %86 = load i8*, i8** @test_max_element_depth.xml, align 8
  %87 = call i32 @set_input_string(i32* %85, i8* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* @XmlReaderProperty_MaxElementDepth, align 4
  %90 = call i32 @IXmlReader_SetProperty(i32* %88, i32 %89, i32 2)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @S_OK, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @TEST_DEPTH(i32* %97, i32 0)
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @IXmlReader_Read(i32* %99, i32* null)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @S_OK, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @TEST_DEPTH(i32* %107, i32 0)
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @IXmlReader_Read(i32* %109, i32* null)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @S_OK, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @TEST_DEPTH(i32* %117, i32 1)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @IXmlReader_MoveToFirstAttribute(i32* %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @S_OK, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @ok(i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @TEST_DEPTH(i32* %127, i32 2)
  %129 = load i32*, i32** %3, align 8
  %130 = load i32, i32* @XmlReadState_Interactive, align 4
  %131 = call i32 @TEST_READER_STATE(i32* %129, i32 %130)
  store i32 123, i32* %1, align 4
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @IXmlReader_Read(i32* %132, i32* %1)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @SC_E_MAXELEMENTDEPTH, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @ok(i32 %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %1, align 4
  %141 = load i32, i32* @XmlNodeType_None, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %1, align 4
  %145 = call i32 @ok(i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  store i32 123, i32* %1, align 4
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @IXmlReader_Read(i32* %146, i32* %1)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @SC_E_MAXELEMENTDEPTH, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @ok(i32 %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %1, align 4
  %155 = load i32, i32* @XmlNodeType_None, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %1, align 4
  %159 = call i32 @ok(i32 %157, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 @TEST_DEPTH2(i32* %160, i32 0, i32 2)
  %162 = load i32*, i32** %3, align 8
  %163 = load i32, i32* @XmlReadState_Error, align 4
  %164 = call i32 @TEST_READER_STATE(i32* %162, i32 %163)
  %165 = load i32*, i32** %3, align 8
  %166 = load i8*, i8** @test_max_element_depth.xml, align 8
  %167 = call i32 @set_input_string(i32* %165, i8* %166)
  %168 = load i32*, i32** %3, align 8
  %169 = load i32, i32* @XmlReaderProperty_MaxElementDepth, align 4
  %170 = call i32 @IXmlReader_SetProperty(i32* %168, i32 %169, i32 0)
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @S_OK, align 4
  %173 = icmp eq i32 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @ok(i32 %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %182, %0
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @IXmlReader_Read(i32* %178, i32* null)
  %180 = load i32, i32* @S_OK, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i32, i32* %2, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %2, align 4
  br label %177

185:                                              ; preds = %177
  %186 = load i32, i32* %2, align 4
  %187 = icmp eq i32 %186, 8
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* %2, align 4
  %190 = call i32 @ok(i32 %188, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  %191 = load i32*, i32** %3, align 8
  %192 = load i32, i32* @XmlReadState_EndOfFile, align 4
  %193 = call i32 @TEST_READER_STATE(i32* %191, i32 %192)
  %194 = load i32*, i32** %3, align 8
  %195 = call i32 @IXmlReader_Release(i32* %194)
  ret void
}

declare dso_local i32 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @set_input_string(i32*, i8*) #1

declare dso_local i32 @IXmlReader_SetProperty(i32*, i32, i32) #1

declare dso_local i32 @TEST_DEPTH(i32*, i32) #1

declare dso_local i32 @IXmlReader_Read(i32*, i32*) #1

declare dso_local i32 @TEST_READER_STATE(i32*, i32) #1

declare dso_local i32 @TEST_DEPTH2(i32*, i32, i32) #1

declare dso_local i32 @IXmlReader_MoveToFirstAttribute(i32*) #1

declare dso_local i32 @IXmlReader_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
