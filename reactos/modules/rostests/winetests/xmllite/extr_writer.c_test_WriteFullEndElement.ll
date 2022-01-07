; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_WriteFullEndElement.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_WriteFullEndElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_WriteFullEndElement.aW = internal constant [2 x i8] c"a\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@XmlWriterProperty_OmitXmlDeclaration = common dso_local global i32 0, align 4
@XmlWriterProperty_Indent = common dso_local global i32 0, align 4
@XmlStandalone_Omit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"<a></a>\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"<a>\0D\0A  <a></a>\0D\0A</a>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WriteFullEndElement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WriteFullEndElement() #0 {
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
  %13 = call i32* @writer_set_output(i32* %12)
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @XmlWriterProperty_OmitXmlDeclaration, align 4
  %16 = call i32 @writer_set_property(i32* %14, i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @XmlWriterProperty_Indent, align 4
  %19 = call i32 @writer_set_property(i32* %17, i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @XmlStandalone_Omit, align 4
  %22 = call i64 @IXmlWriter_WriteStartDocument(i32* %20, i32 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i64 @IXmlWriter_WriteStartElement(i32* %29, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteFullEndElement.aW, i64 0, i64 0), i32* null)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i64 @IXmlWriter_WriteFullEndElement(i32* %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i64 @IXmlWriter_WriteEndDocument(i32* %45)
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i64 @IXmlWriter_Flush(i32* %53)
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @CHECK_OUTPUT(i32* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @IStream_Release(i32* %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32* @writer_set_output(i32* %65)
  store i32* %66, i32** %2, align 8
  %67 = load i32*, i32** %1, align 8
  %68 = load i32, i32* @XmlWriterProperty_OmitXmlDeclaration, align 4
  %69 = call i32 @writer_set_property(i32* %67, i32 %68)
  %70 = load i32*, i32** %1, align 8
  %71 = load i32, i32* @XmlWriterProperty_Indent, align 4
  %72 = call i32 @writer_set_property(i32* %70, i32 %71)
  %73 = load i32*, i32** %1, align 8
  %74 = load i32, i32* @XmlStandalone_Omit, align 4
  %75 = call i64 @IXmlWriter_WriteStartDocument(i32* %73, i32 %74)
  store i64 %75, i64* %3, align 8
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  %82 = load i32*, i32** %1, align 8
  %83 = call i64 @IXmlWriter_WriteStartElement(i32* %82, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteFullEndElement.aW, i64 0, i64 0), i32* null)
  store i64 %83, i64* %3, align 8
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* @S_OK, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %3, align 8
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  %90 = load i32*, i32** %1, align 8
  %91 = call i64 @IXmlWriter_WriteStartElement(i32* %90, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteFullEndElement.aW, i64 0, i64 0), i32* null)
  store i64 %91, i64* %3, align 8
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* @S_OK, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %3, align 8
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %96)
  %98 = load i32*, i32** %1, align 8
  %99 = call i64 @IXmlWriter_WriteFullEndElement(i32* %98)
  store i64 %99, i64* %3, align 8
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* @S_OK, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %3, align 8
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %104)
  %106 = load i32*, i32** %1, align 8
  %107 = call i64 @IXmlWriter_WriteEndDocument(i32* %106)
  store i64 %107, i64* %3, align 8
  %108 = load i64, i64* %3, align 8
  %109 = load i64, i64* @S_OK, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %3, align 8
  %113 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %112)
  %114 = load i32*, i32** %1, align 8
  %115 = call i64 @IXmlWriter_Flush(i32* %114)
  store i64 %115, i64* %3, align 8
  %116 = load i64, i64* %3, align 8
  %117 = load i64, i64* @S_OK, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %3, align 8
  %121 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %120)
  %122 = load i32*, i32** %2, align 8
  %123 = call i32 @CHECK_OUTPUT(i32* %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32*, i32** %1, align 8
  %125 = call i32 @IXmlWriter_Release(i32* %124)
  %126 = load i32*, i32** %2, align 8
  %127 = call i32 @IStream_Release(i32* %126)
  ret void
}

declare dso_local i64 @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32* @writer_set_output(i32*) #1

declare dso_local i32 @writer_set_property(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteStartDocument(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteStartElement(i32*, i32*, i8*, i32*) #1

declare dso_local i64 @IXmlWriter_WriteFullEndElement(i32*) #1

declare dso_local i64 @IXmlWriter_WriteEndDocument(i32*) #1

declare dso_local i64 @IXmlWriter_Flush(i32*) #1

declare dso_local i32 @CHECK_OUTPUT(i32*, i8*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IXmlWriter_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
