; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_endoffile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_endoffile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"S_OK, got %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"<a/>\00", align 1
@XmlNodeType_None = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"got %#x\0A\00", align 1
@XmlNodeType_Element = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Unexpected type %d\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<a/>text\00", align 1
@WC_E_SYNTAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_endoffile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_endoffile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i32** %1 to i8**
  %5 = call i64 @CreateXmlReader(i32* @IID_IXmlReader, i8** %4, i32* null)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @test_eof_state(i32* %12, i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @set_input_string(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @test_eof_state(i32* %17, i32 %18)
  %20 = load i64, i64* @XmlNodeType_None, align 8
  store i64 %20, i64* %2, align 8
  %21 = load i32*, i32** %1, align 8
  %22 = call i64 @IXmlReader_Read(i32* %21, i64* %2)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* @XmlNodeType_Element, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @test_eof_state(i32* %35, i32 %36)
  %38 = load i64, i64* @XmlNodeType_Element, align 8
  store i64 %38, i64* %2, align 8
  %39 = load i32*, i32** %1, align 8
  %40 = call i64 @IXmlReader_Read(i32* %39, i64* %2)
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @S_FALSE, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load i64, i64* %2, align 8
  %48 = load i64, i64* @XmlNodeType_None, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %2, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @test_eof_state(i32* %53, i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i64 @IXmlReader_SetInput(i32* %56, i32* null)
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = load i32, i32* @FALSE, align 4
  %66 = call i32 @test_eof_state(i32* %64, i32 %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @IXmlReader_Release(i32* %67)
  %69 = bitcast i32** %1 to i8**
  %70 = call i64 @CreateXmlReader(i32* @IID_IXmlReader, i8** %69, i32* null)
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @set_input_string(i32* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i64, i64* @XmlNodeType_None, align 8
  store i64 %79, i64* %2, align 8
  %80 = load i32*, i32** %1, align 8
  %81 = call i64 @IXmlReader_Read(i32* %80, i64* %2)
  store i64 %81, i64* %3, align 8
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @S_OK, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %3, align 8
  %87 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  %88 = load i64, i64* %2, align 8
  %89 = load i64, i64* @XmlNodeType_Element, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %2, align 8
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = load i32, i32* @FALSE, align 4
  %96 = call i32 @test_eof_state(i32* %94, i32 %95)
  %97 = load i64, i64* @XmlNodeType_Element, align 8
  store i64 %97, i64* %2, align 8
  %98 = load i32*, i32** %1, align 8
  %99 = call i64 @IXmlReader_Read(i32* %98, i64* %2)
  store i64 %99, i64* %3, align 8
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* @WC_E_SYNTAX, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %3, align 8
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %104)
  %106 = load i64, i64* %2, align 8
  %107 = load i64, i64* @XmlNodeType_None, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %2, align 8
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %110)
  %112 = load i32*, i32** %1, align 8
  %113 = load i32, i32* @FALSE, align 4
  %114 = call i32 @test_eof_state(i32* %112, i32 %113)
  %115 = load i32*, i32** %1, align 8
  %116 = call i64 @IXmlReader_SetInput(i32* %115, i32* null)
  store i64 %116, i64* %3, align 8
  %117 = load i64, i64* %3, align 8
  %118 = load i64, i64* @S_OK, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %3, align 8
  %122 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %121)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @IXmlReader_Release(i32* %123)
  ret void
}

declare dso_local i64 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @test_eof_state(i32*, i32) #1

declare dso_local i32 @set_input_string(i32*, i8*) #1

declare dso_local i64 @IXmlReader_Read(i32*, i64*) #1

declare dso_local i64 @IXmlReader_SetInput(i32*, i32*) #1

declare dso_local i32 @IXmlReader_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
