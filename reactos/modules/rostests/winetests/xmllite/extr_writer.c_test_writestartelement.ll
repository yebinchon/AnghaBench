; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_writestartelement.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_writestartelement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_writestartelement.valueW = internal constant [6 x i8] c"value\00", align 1
@test_writestartelement.aW = internal constant [2 x i8] c"a\00", align 1
@test_writestartelement.bW = internal constant [2 x i8] c"b\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@E_UNEXPECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@XmlStandalone_Yes = common dso_local global i32 0, align 4
@WR_E_INVALIDACTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"<a\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"<a><b>value</b><b />\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_writestartelement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_writestartelement() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i32** %1 to i8**
  %5 = call i64 @CreateXmlWriter(i32* @IID_IXmlWriter, i8** %4, i32* null)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i64 @IXmlWriter_WriteStartElement(i32* %12, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writestartelement.aW, i64 0, i64 0), i8* null)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @E_UNEXPECTED, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32* @writer_set_output(i32* %20)
  store i32* %21, i32** %2, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = call i64 @IXmlWriter_WriteStartElement(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writestartelement.aW, i64 0, i64 0), i8* null, i8* null)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @E_INVALIDARG, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i64 @IXmlWriter_WriteStartElement(i32* %30, i8* null, i8* null, i8* null)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @E_INVALIDARG, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i64 @IXmlWriter_WriteStartElement(i32* %38, i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writestartelement.aW, i64 0, i64 0))
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @E_INVALIDARG, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i64 @IXmlWriter_WriteStartElement(i32* %46, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writestartelement.aW, i64 0, i64 0), i8* null)
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* @XmlStandalone_Yes, align 4
  %56 = call i64 @IXmlWriter_WriteStartDocument(i32* %54, i32 %55)
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i64 @IXmlWriter_Flush(i32* %63)
  store i64 %64, i64* %3, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @CHECK_OUTPUT(i32* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32*, i32** %1, align 8
  %74 = load i32, i32* @XmlStandalone_Yes, align 4
  %75 = call i64 @IXmlWriter_WriteStartDocument(i32* %73, i32 %74)
  store i64 %75, i64* %3, align 8
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  %82 = load i32*, i32** %1, align 8
  %83 = call i64 @IXmlWriter_WriteStartElement(i32* %82, i8* null, i8* null, i8* null)
  store i64 %83, i64* %3, align 8
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* @E_INVALIDARG, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %3, align 8
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  %90 = load i32*, i32** %1, align 8
  %91 = call i64 @IXmlWriter_WriteProcessingInstruction(i32* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writestartelement.aW, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writestartelement.aW, i64 0, i64 0))
  store i64 %91, i64* %3, align 8
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %3, align 8
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %96)
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @IStream_Release(i32* %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @IXmlWriter_Release(i32* %100)
  %102 = bitcast i32** %1 to i8**
  %103 = call i64 @CreateXmlWriter(i32* @IID_IXmlWriter, i8** %102, i32* null)
  store i64 %103, i64* %3, align 8
  %104 = load i64, i64* %3, align 8
  %105 = load i64, i64* @S_OK, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i64, i64* %3, align 8
  %109 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %108)
  %110 = load i32*, i32** %1, align 8
  %111 = call i64 @IXmlWriter_WriteElementString(i32* %110, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writestartelement.bW, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_writestartelement.valueW, i64 0, i64 0))
  store i64 %111, i64* %3, align 8
  %112 = load i64, i64* %3, align 8
  %113 = load i64, i64* @E_UNEXPECTED, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i64, i64* %3, align 8
  %117 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %116)
  %118 = load i32*, i32** %1, align 8
  %119 = call i32* @writer_set_output(i32* %118)
  store i32* %119, i32** %2, align 8
  %120 = load i32*, i32** %1, align 8
  %121 = call i64 @IXmlWriter_WriteStartElement(i32* %120, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writestartelement.aW, i64 0, i64 0), i8* null)
  store i64 %121, i64* %3, align 8
  %122 = load i64, i64* %3, align 8
  %123 = load i64, i64* @S_OK, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %3, align 8
  %127 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %126)
  %128 = load i32*, i32** %1, align 8
  %129 = call i64 @IXmlWriter_WriteElementString(i32* %128, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writestartelement.bW, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_writestartelement.valueW, i64 0, i64 0))
  store i64 %129, i64* %3, align 8
  %130 = load i64, i64* %3, align 8
  %131 = load i64, i64* @S_OK, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i64, i64* %3, align 8
  %135 = call i32 @ok(i32 %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  %136 = load i32*, i32** %1, align 8
  %137 = call i64 @IXmlWriter_WriteElementString(i32* %136, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writestartelement.bW, i64 0, i64 0), i32* null, i8* null)
  store i64 %137, i64* %3, align 8
  %138 = load i64, i64* %3, align 8
  %139 = load i64, i64* @S_OK, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i64, i64* %3, align 8
  %143 = call i32 @ok(i32 %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %142)
  %144 = load i32*, i32** %1, align 8
  %145 = call i64 @IXmlWriter_Flush(i32* %144)
  store i64 %145, i64* %3, align 8
  %146 = load i64, i64* %3, align 8
  %147 = load i64, i64* @S_OK, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i64, i64* %3, align 8
  %151 = call i32 @ok(i32 %149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %150)
  %152 = load i32*, i32** %2, align 8
  %153 = call i32 @CHECK_OUTPUT(i32* %152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %154 = load i32*, i32** %2, align 8
  %155 = call i32 @IStream_Release(i32* %154)
  %156 = load i32*, i32** %1, align 8
  %157 = call i32 @IXmlWriter_Release(i32* %156)
  ret void
}

declare dso_local i64 @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IXmlWriter_WriteStartElement(i32*, i8*, i8*, i8*) #1

declare dso_local i32* @writer_set_output(i32*) #1

declare dso_local i64 @IXmlWriter_WriteStartDocument(i32*, i32) #1

declare dso_local i64 @IXmlWriter_Flush(i32*) #1

declare dso_local i32 @CHECK_OUTPUT(i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteProcessingInstruction(i32*, i8*, i8*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IXmlWriter_Release(i32*) #1

declare dso_local i64 @IXmlWriter_WriteElementString(i32*, i32*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
