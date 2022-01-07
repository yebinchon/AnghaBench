; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_reader_position.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_reader_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_reader_position.xml = internal global i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [42 x i8] c"<c:a xmlns:c=\22nsdef c\22 b=\22attr b\22>\0A</c:a>\00", align 1
@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"S_OK, got %08x\0A\00", align 1
@XmlReadState_Closed = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Expected E_INVALIDARG, got %08x\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"got %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@XmlReadState_Initial = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@XmlNodeType_Element = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"got type %d\0A\00", align 1
@XmlNodeType_Whitespace = common dso_local global i32 0, align 4
@XmlNodeType_EndElement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reader_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reader_position() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32** %1 to i8**
  %6 = call i32 @CreateXmlReader(i32* @IID_IXmlReader, i8** %5, i32* null)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @S_OK, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @XmlReadState_Closed, align 4
  %15 = call i32 @TEST_READER_STATE(i32* %13, i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @IXmlReader_GetLineNumber(i32* %16, i32* null)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @E_INVALIDARG, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @IXmlReader_GetLinePosition(i32* %24, i32* null)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @E_INVALIDARG, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store i32 123, i32* %3, align 4
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @IXmlReader_GetLinePosition(i32* %32, i32* %3)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @S_FALSE, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  store i32 123, i32* %3, align 4
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @IXmlReader_GetLineNumber(i32* %45, i32* %3)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @S_FALSE, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = load i8*, i8** @test_reader_position.xml, align 8
  %60 = call i32 @set_input_string(i32* %58, i8* %59)
  %61 = load i32*, i32** %1, align 8
  %62 = load i32, i32* @XmlReadState_Initial, align 4
  %63 = call i32 @TEST_READER_STATE(i32* %61, i32 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @TEST_READER_POSITION(i32* %64, i32 0, i32 0)
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @IXmlReader_Read(i32* %66, i32* %2)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @S_OK, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @XmlNodeType_Element, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @TEST_READER_POSITION2(i32* %80, i32 1, i32 2, i32 -1, i32 34)
  %82 = load i32*, i32** %1, align 8
  %83 = call i32 @next_attribute(i32* %82)
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @TEST_READER_POSITION2(i32* %84, i32 1, i32 6, i32 -1, i32 34)
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @next_attribute(i32* %86)
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @TEST_READER_POSITION2(i32* %88, i32 1, i32 24, i32 -1, i32 34)
  %90 = load i32*, i32** %1, align 8
  %91 = call i32 @move_to_element(i32* %90)
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @TEST_READER_POSITION2(i32* %92, i32 1, i32 2, i32 -1, i32 34)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @IXmlReader_Read(i32* %94, i32* %2)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @S_OK, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @XmlNodeType_Whitespace, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  %108 = load i32*, i32** %1, align 8
  %109 = call i32 @TEST_READER_POSITION2(i32* %108, i32 1, i32 35, i32 2, i32 6)
  %110 = load i32*, i32** %1, align 8
  %111 = call i32 @IXmlReader_Read(i32* %110, i32* %2)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @S_OK, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* @XmlNodeType_EndElement, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %2, align 4
  %123 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  %124 = load i32*, i32** %1, align 8
  %125 = call i32 @TEST_READER_POSITION2(i32* %124, i32 2, i32 3, i32 2, i32 6)
  %126 = load i32*, i32** %1, align 8
  %127 = call i32 @IXmlReader_SetInput(i32* %126, i32* null)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @S_OK, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  %134 = load i32*, i32** %1, align 8
  %135 = load i32, i32* @XmlReadState_Initial, align 4
  %136 = load i32, i32* @XmlReadState_Closed, align 4
  %137 = call i32 @TEST_READER_STATE2(i32* %134, i32 %135, i32 %136)
  %138 = load i32*, i32** %1, align 8
  %139 = call i32 @TEST_READER_POSITION(i32* %138, i32 0, i32 0)
  %140 = load i32*, i32** %1, align 8
  %141 = call i32 @IXmlReader_Release(i32* %140)
  ret void
}

declare dso_local i32 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @TEST_READER_STATE(i32*, i32) #1

declare dso_local i32 @IXmlReader_GetLineNumber(i32*, i32*) #1

declare dso_local i32 @IXmlReader_GetLinePosition(i32*, i32*) #1

declare dso_local i32 @set_input_string(i32*, i8*) #1

declare dso_local i32 @TEST_READER_POSITION(i32*, i32, i32) #1

declare dso_local i32 @IXmlReader_Read(i32*, i32*) #1

declare dso_local i32 @TEST_READER_POSITION2(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @next_attribute(i32*) #1

declare dso_local i32 @move_to_element(i32*) #1

declare dso_local i32 @IXmlReader_SetInput(i32*, i32*) #1

declare dso_local i32 @TEST_READER_STATE2(i32*, i32, i32) #1

declare dso_local i32 @IXmlReader_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
