; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_indentation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_indentation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_indentation.commentW = internal constant [8 x i8] c"comment\00", align 1
@test_indentation.aW = internal constant [2 x i8] c"a\00", align 1
@test_indentation.bW = internal constant [2 x i8] c"b\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@XmlWriterProperty_OmitXmlDeclaration = common dso_local global i32 0, align 4
@XmlWriterProperty_Indent = common dso_local global i32 0, align 4
@XmlStandalone_Omit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"<a>\0D\0A  <!--comment-->\0D\0A  <b />\0D\0A</a>\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unexpected hr %#x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"<a>\0D\0A  <b />\0D\0A  <b />\0D\0A</a>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_indentation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_indentation() #0 {
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
  %30 = call i64 @IXmlWriter_WriteStartElement(i32* %29, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_indentation.aW, i64 0, i64 0), i32* null)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i64 @IXmlWriter_WriteComment(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_indentation.commentW, i64 0, i64 0))
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i64 @IXmlWriter_WriteStartElement(i32* %45, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_indentation.bW, i64 0, i64 0), i32* null)
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i64 @IXmlWriter_WriteEndDocument(i32* %53)
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i32*, i32** %1, align 8
  %62 = call i64 @IXmlWriter_Flush(i32* %61)
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @CHECK_OUTPUT(i32* %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @IStream_Release(i32* %71)
  %73 = load i32*, i32** %1, align 8
  %74 = call i32* @writer_set_output(i32* %73)
  store i32* %74, i32** %2, align 8
  %75 = load i32*, i32** %1, align 8
  %76 = call i64 @IXmlWriter_WriteStartElement(i32* %75, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_indentation.aW, i64 0, i64 0), i32* null)
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @S_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %3, align 8
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i64 @IXmlWriter_WriteElementString(i32* %83, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_indentation.bW, i64 0, i64 0), i32* null, i32* null)
  store i64 %84, i64* %3, align 8
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* @S_OK, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  %91 = load i32*, i32** %1, align 8
  %92 = call i64 @IXmlWriter_WriteElementString(i32* %91, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_indentation.bW, i64 0, i64 0), i32* null, i32* null)
  store i64 %92, i64* %3, align 8
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* @S_OK, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i64, i64* %3, align 8
  %98 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %97)
  %99 = load i32*, i32** %1, align 8
  %100 = call i64 @IXmlWriter_WriteEndElement(i32* %99)
  store i64 %100, i64* %3, align 8
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* @S_OK, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %3, align 8
  %106 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %105)
  %107 = load i32*, i32** %1, align 8
  %108 = call i64 @IXmlWriter_Flush(i32* %107)
  store i64 %108, i64* %3, align 8
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @S_OK, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %3, align 8
  %114 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @CHECK_OUTPUT(i32* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 @IStream_Release(i32* %117)
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @IXmlWriter_Release(i32* %119)
  ret void
}

declare dso_local i64 @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32* @writer_set_output(i32*) #1

declare dso_local i32 @writer_set_property(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteStartDocument(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteStartElement(i32*, i32*, i8*, i32*) #1

declare dso_local i64 @IXmlWriter_WriteComment(i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteEndDocument(i32*) #1

declare dso_local i64 @IXmlWriter_Flush(i32*) #1

declare dso_local i32 @CHECK_OUTPUT(i32*, i8*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i64 @IXmlWriter_WriteElementString(i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @IXmlWriter_WriteEndElement(i32*) #1

declare dso_local i32 @IXmlWriter_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
