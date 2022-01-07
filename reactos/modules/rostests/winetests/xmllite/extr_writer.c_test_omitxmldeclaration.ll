; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_omitxmldeclaration.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_omitxmldeclaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_omitxmldeclaration.prologversion = internal constant [22 x i8] c"<?xml version=\221.0\22?>\00", align 16
@test_omitxmldeclaration.versionW = internal constant [14 x i8] c"version=\221.0\22\00", align 1
@test_omitxmldeclaration.xmlW = internal constant [4 x i8] c"xml\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@XmlWriterProperty_OmitXmlDeclaration = common dso_local global i32 0, align 4
@XmlStandalone_Yes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@WR_E_INVALIDACTION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_omitxmldeclaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_omitxmldeclaration() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = bitcast i32** %1 to i8**
  %7 = call i8* @CreateXmlWriter(i32* @IID_IXmlWriter, i8** %6, i32* null)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** @S_OK, align 8
  %10 = icmp eq i8* %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32* @writer_set_output(i32* %14)
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* @XmlWriterProperty_OmitXmlDeclaration, align 4
  %18 = call i32 @writer_set_property(i32* %16, i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @XmlStandalone_Yes, align 4
  %21 = call i8* @IXmlWriter_WriteStartDocument(i32* %19, i32 %20)
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** @S_OK, align 8
  %24 = icmp eq i8* %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i8* @IXmlWriter_Flush(i32* %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** @S_OK, align 8
  %32 = icmp eq i8* %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i8* @GetHGlobalFromStream(i32* %36, i32* %2)
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** @S_OK, align 8
  %40 = icmp eq i8* %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* %2, align 4
  %45 = call i8* @GlobalLock(i32 %44)
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @GlobalUnlock(i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* @XmlStandalone_Yes, align 4
  %56 = call i8* @IXmlWriter_WriteStartDocument(i32* %54, i32 %55)
  store i8* %56, i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** @WR_E_INVALIDACTION, align 8
  %59 = icmp eq i8* %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @IStream_Release(i32* %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32* @writer_set_output(i32* %65)
  store i32* %66, i32** %3, align 8
  %67 = load i32*, i32** %1, align 8
  %68 = call i8* @IXmlWriter_WriteProcessingInstruction(i32* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_omitxmldeclaration.xmlW, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_omitxmldeclaration.versionW, i64 0, i64 0))
  store i8* %68, i8** %4, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = load i8*, i8** @S_OK, align 8
  %71 = icmp eq i8* %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i8* @IXmlWriter_Flush(i32* %75)
  store i8* %76, i8** %4, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** @S_OK, align 8
  %79 = icmp eq i8* %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @CHECK_OUTPUT(i32* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_omitxmldeclaration.prologversion, i64 0, i64 0))
  %85 = load i32*, i32** %1, align 8
  %86 = load i32, i32* @XmlStandalone_Yes, align 4
  %87 = call i8* @IXmlWriter_WriteStartDocument(i32* %85, i32 %86)
  store i8* %87, i8** %4, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load i8*, i8** @S_OK, align 8
  %90 = icmp eq i8* %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  %94 = load i32*, i32** %1, align 8
  %95 = call i8* @IXmlWriter_Flush(i32* %94)
  store i8* %95, i8** %4, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = load i8*, i8** @S_OK, align 8
  %98 = icmp eq i8* %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %100)
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @CHECK_OUTPUT(i32* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_omitxmldeclaration.prologversion, i64 0, i64 0))
  %104 = load i32*, i32** %1, align 8
  %105 = load i32, i32* @XmlStandalone_Yes, align 4
  %106 = call i8* @IXmlWriter_WriteStartDocument(i32* %104, i32 %105)
  store i8* %106, i8** %4, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = load i8*, i8** @WR_E_INVALIDACTION, align 8
  %109 = icmp eq i8* %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i8*, i8** %4, align 8
  %112 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i8* @IXmlWriter_Flush(i32* %113)
  store i8* %114, i8** %4, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = load i8*, i8** @S_OK, align 8
  %117 = icmp eq i8* %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 @ok(i32 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %119)
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @CHECK_OUTPUT(i32* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_omitxmldeclaration.prologversion, i64 0, i64 0))
  %123 = load i32*, i32** %1, align 8
  %124 = call i8* @IXmlWriter_WriteProcessingInstruction(i32* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_omitxmldeclaration.xmlW, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_omitxmldeclaration.versionW, i64 0, i64 0))
  store i8* %124, i8** %4, align 8
  %125 = load i8*, i8** %4, align 8
  %126 = load i8*, i8** @WR_E_INVALIDACTION, align 8
  %127 = icmp eq i8* %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %129)
  %131 = load i32*, i32** %1, align 8
  %132 = call i8* @IXmlWriter_Flush(i32* %131)
  store i8* %132, i8** %4, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = load i8*, i8** @S_OK, align 8
  %135 = icmp eq i8* %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @ok(i32 %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %137)
  %139 = load i32*, i32** %3, align 8
  %140 = call i32 @IStream_Release(i32* %139)
  %141 = load i32*, i32** %1, align 8
  %142 = call i32 @IXmlWriter_Release(i32* %141)
  ret void
}

declare dso_local i8* @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i8*) #1

declare dso_local i32* @writer_set_output(i32*) #1

declare dso_local i32 @writer_set_property(i32*, i32) #1

declare dso_local i8* @IXmlWriter_WriteStartDocument(i32*, i32) #1

declare dso_local i8* @IXmlWriter_Flush(i32*) #1

declare dso_local i8* @GetHGlobalFromStream(i32*, i32*) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i8* @IXmlWriter_WriteProcessingInstruction(i32*, i8*, i8*) #1

declare dso_local i32 @CHECK_OUTPUT(i32*, i8*) #1

declare dso_local i32 @IXmlWriter_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
