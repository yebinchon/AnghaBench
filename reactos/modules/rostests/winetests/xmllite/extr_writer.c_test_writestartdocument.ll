; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_writestartdocument.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_writestartdocument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_writestartdocument.fullprolog = internal constant [56 x i8] c"<?xml version=\221.0\22 encoding=\22UTF-8\22 standalone=\22yes\22?>\00", align 16
@test_writestartdocument.prologversion2 = internal global i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [42 x i8] c"<?xml version=\221.0\22 encoding=\22uS-asCii\22?>\00", align 1
@test_writestartdocument.prologversion = internal constant [22 x i8] c"<?xml version=\221.0\22?>\00", align 16
@test_writestartdocument.versionW = internal constant [14 x i8] c"version=\221.0\22\00", align 1
@test_writestartdocument.usasciiW = internal constant [9 x i8] c"uS-asCii\00", align 1
@test_writestartdocument.xmlW = internal constant [4 x i8] c"xml\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@XmlStandalone_Yes = common dso_local global i32 0, align 4
@E_UNEXPECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@WR_E_INVALIDACTION = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@XmlStandalone_Omit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_writestartdocument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_writestartdocument() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = bitcast i32** %2 to i8**
  %6 = call i64 @CreateXmlWriter(i32* @IID_IXmlWriter, i8** %5, i32* null)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @XmlStandalone_Yes, align 4
  %15 = call i64 @IXmlWriter_WriteStartDocument(i32* %13, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @E_UNEXPECTED, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @IXmlWriter_WriteProcessingInstruction(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_writestartdocument.xmlW, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_writestartdocument.versionW, i64 0, i64 0))
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @E_UNEXPECTED, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @IXmlWriter_Flush(i32* %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32* @writer_set_output(i32* %38)
  store i32* %39, i32** %3, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = call i64 @IXmlWriter_Flush(i32* %40)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* @XmlStandalone_Yes, align 4
  %50 = call i64 @IXmlWriter_WriteStartDocument(i32* %48, i32 %49)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i64 @IXmlWriter_Flush(i32* %57)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @CHECK_OUTPUT(i32* %65, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @test_writestartdocument.fullprolog, i64 0, i64 0))
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* @XmlStandalone_Yes, align 4
  %69 = call i64 @IXmlWriter_WriteStartDocument(i32* %67, i32 %68)
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @IStream_Release(i32* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32* @writer_set_output(i32* %78)
  store i32* %79, i32** %3, align 8
  %80 = load i32*, i32** %2, align 8
  %81 = call i64 @IXmlWriter_WriteProcessingInstruction(i32* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_writestartdocument.xmlW, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_writestartdocument.versionW, i64 0, i64 0))
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @S_OK, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  %88 = load i32*, i32** %2, align 8
  %89 = load i32, i32* @XmlStandalone_Yes, align 4
  %90 = call i64 @IXmlWriter_WriteStartDocument(i32* %88, i32 %89)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* @S_OK, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %95)
  %97 = load i32*, i32** %2, align 8
  %98 = load i32, i32* @XmlStandalone_Yes, align 4
  %99 = call i64 @IXmlWriter_WriteStartDocument(i32* %97, i32 %98)
  store i64 %99, i64* %4, align 8
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %4, align 8
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %104)
  %106 = load i32*, i32** %2, align 8
  %107 = call i64 @IXmlWriter_WriteProcessingInstruction(i32* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_writestartdocument.xmlW, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_writestartdocument.versionW, i64 0, i64 0))
  store i64 %107, i64* %4, align 8
  %108 = load i64, i64* %4, align 8
  %109 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %4, align 8
  %113 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %112)
  %114 = load i32*, i32** %2, align 8
  %115 = call i64 @IXmlWriter_Flush(i32* %114)
  store i64 %115, i64* %4, align 8
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* @S_OK, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %4, align 8
  %121 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %120)
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @CHECK_OUTPUT(i32* %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_writestartdocument.prologversion, i64 0, i64 0))
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @IStream_Release(i32* %124)
  %126 = load i32*, i32** %2, align 8
  %127 = call i32 @IXmlWriter_Release(i32* %126)
  %128 = load i32, i32* @TRUE, align 4
  %129 = call i64 @CreateStreamOnHGlobal(i32* null, i32 %128, i32** %3)
  store i64 %129, i64* %4, align 8
  %130 = load i64, i64* %4, align 8
  %131 = load i64, i64* @S_OK, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i64, i64* %4, align 8
  %135 = call i32 @ok(i32 %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %134)
  store i32* null, i32** %1, align 8
  %136 = load i32*, i32** %3, align 8
  %137 = call i64 @CreateXmlWriterOutputWithEncodingName(i32* %136, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_writestartdocument.usasciiW, i64 0, i64 0), i32** %1)
  store i64 %137, i64* %4, align 8
  %138 = load i64, i64* %4, align 8
  %139 = load i64, i64* @S_OK, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i64, i64* %4, align 8
  %143 = call i32 @ok(i32 %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %142)
  %144 = bitcast i32** %2 to i8**
  %145 = call i64 @CreateXmlWriter(i32* @IID_IXmlWriter, i8** %144, i32* null)
  store i64 %145, i64* %4, align 8
  %146 = load i64, i64* %4, align 8
  %147 = load i64, i64* @S_OK, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i64, i64* %4, align 8
  %151 = call i32 @ok(i32 %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %150)
  %152 = load i32*, i32** %2, align 8
  %153 = load i32*, i32** %1, align 8
  %154 = call i64 @IXmlWriter_SetOutput(i32* %152, i32* %153)
  store i64 %154, i64* %4, align 8
  %155 = load i64, i64* %4, align 8
  %156 = load i64, i64* @S_OK, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i64, i64* %4, align 8
  %160 = call i32 @ok(i32 %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %159)
  %161 = load i32*, i32** %2, align 8
  %162 = load i32, i32* @XmlStandalone_Omit, align 4
  %163 = call i64 @IXmlWriter_WriteStartDocument(i32* %161, i32 %162)
  store i64 %163, i64* %4, align 8
  %164 = load i64, i64* %4, align 8
  %165 = load i64, i64* @S_OK, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i64, i64* %4, align 8
  %169 = call i32 @ok(i32 %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %168)
  %170 = load i32*, i32** %2, align 8
  %171 = call i64 @IXmlWriter_Flush(i32* %170)
  store i64 %171, i64* %4, align 8
  %172 = load i64, i64* %4, align 8
  %173 = load i64, i64* @S_OK, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i64, i64* %4, align 8
  %177 = call i32 @ok(i32 %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %176)
  %178 = load i32*, i32** %3, align 8
  %179 = load i8*, i8** @test_writestartdocument.prologversion2, align 8
  %180 = call i32 @CHECK_OUTPUT(i32* %178, i8* %179)
  %181 = load i32*, i32** %3, align 8
  %182 = call i32 @IStream_Release(i32* %181)
  %183 = load i32*, i32** %2, align 8
  %184 = call i32 @IXmlWriter_Release(i32* %183)
  %185 = load i32*, i32** %1, align 8
  %186 = call i32 @IUnknown_Release(i32* %185)
  ret void
}

declare dso_local i64 @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IXmlWriter_WriteStartDocument(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteProcessingInstruction(i32*, i8*, i8*) #1

declare dso_local i64 @IXmlWriter_Flush(i32*) #1

declare dso_local i32* @writer_set_output(i32*) #1

declare dso_local i32 @CHECK_OUTPUT(i32*, i8*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IXmlWriter_Release(i32*) #1

declare dso_local i64 @CreateStreamOnHGlobal(i32*, i32, i32**) #1

declare dso_local i64 @CreateXmlWriterOutputWithEncodingName(i32*, i32*, i8*, i32**) #1

declare dso_local i64 @IXmlWriter_SetOutput(i32*, i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
