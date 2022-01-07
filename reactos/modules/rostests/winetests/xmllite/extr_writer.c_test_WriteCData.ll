; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_WriteCData.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_WriteCData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_WriteCData.closeW = internal constant [4 x i8] c"]]>\00", align 1
@test_WriteCData.close2W = internal constant [6 x i8] c"a]]>b\00", align 1
@test_WriteCData.aW = internal constant [2 x i8] c"a\00", align 1
@test_WriteCData.bW = internal constant [2 x i8] c"b\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@XmlWriterProperty_OmitXmlDeclaration = common dso_local global i32 0, align 4
@E_UNEXPECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"<b><![CDATA[a]]><![CDATA[]]><![CDATA[]]]]><![CDATA[>]]><![CDATA[a]]]]><![CDATA[>b]]>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WriteCData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WriteCData() #0 {
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
  %13 = load i32, i32* @XmlWriterProperty_OmitXmlDeclaration, align 4
  %14 = call i32 @writer_set_property(i32* %12, i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i64 @IXmlWriter_WriteCData(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteCData.aW, i64 0, i64 0))
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @E_UNEXPECTED, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32* @writer_set_output(i32* %23)
  store i32* %24, i32** %2, align 8
  %25 = load i32*, i32** %1, align 8
  %26 = call i64 @IXmlWriter_WriteStartElement(i32* %25, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteCData.bW, i64 0, i64 0), i32* null)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i64 @IXmlWriter_WriteCData(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteCData.aW, i64 0, i64 0))
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i64 @IXmlWriter_WriteCData(i32* %41, i8* null)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i64 @IXmlWriter_WriteCData(i32* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WriteCData.closeW, i64 0, i64 0))
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i64 @IXmlWriter_WriteCData(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_WriteCData.close2W, i64 0, i64 0))
  store i64 %58, i64* %3, align 8
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i64 @IXmlWriter_Flush(i32* %65)
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @S_OK, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @CHECK_OUTPUT(i32* %73, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @IXmlWriter_Release(i32* %75)
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @IStream_Release(i32* %77)
  ret void
}

declare dso_local i64 @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @writer_set_property(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteCData(i32*, i8*) #1

declare dso_local i32* @writer_set_output(i32*) #1

declare dso_local i64 @IXmlWriter_WriteStartElement(i32*, i32*, i8*, i32*) #1

declare dso_local i64 @IXmlWriter_Flush(i32*) #1

declare dso_local i32 @CHECK_OUTPUT(i32*, i8*) #1

declare dso_local i32 @IXmlWriter_Release(i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
