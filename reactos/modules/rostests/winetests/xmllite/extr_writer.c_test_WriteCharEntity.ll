; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_WriteCharEntity.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_WriteCharEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_WriteCharEntity.aW = internal constant [2 x i8] c"a\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@XmlWriterProperty_OmitXmlDeclaration = common dso_local global i32 0, align 4
@XmlStandalone_Omit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"<a>&#x100;<a /></a>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WriteCharEntity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WriteCharEntity() #0 {
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
  %18 = load i32, i32* @XmlStandalone_Omit, align 4
  %19 = call i64 @IXmlWriter_WriteStartDocument(i32* %17, i32 %18)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i64 @IXmlWriter_WriteStartElement(i32* %26, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteCharEntity.aW, i64 0, i64 0), i32* null)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i64 @IXmlWriter_WriteCharEntity(i32* %34, i32 256)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i64 @IXmlWriter_WriteStartElement(i32* %42, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteCharEntity.aW, i64 0, i64 0), i32* null)
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i64 @IXmlWriter_WriteEndDocument(i32* %50)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = call i64 @IXmlWriter_Flush(i32* %58)
  store i64 %59, i64* %3, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @S_OK, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @CHECK_OUTPUT(i32* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @IXmlWriter_Release(i32* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @IStream_Release(i32* %70)
  ret void
}

declare dso_local i64 @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32* @writer_set_output(i32*) #1

declare dso_local i32 @writer_set_property(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteStartDocument(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteStartElement(i32*, i32*, i8*, i32*) #1

declare dso_local i64 @IXmlWriter_WriteCharEntity(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteEndDocument(i32*) #1

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
