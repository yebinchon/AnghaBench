; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_writer_create.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_writer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IStream = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unexpected interface pointer\0A\00", align 1
@XmlWriterProperty_ByteOrderMark = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"got %ld\0A\00", align 1
@XmlWriterProperty_Indent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@XmlWriterProperty_OmitXmlDeclaration = common dso_local global i32 0, align 4
@XmlConformanceLevel_Auto = common dso_local global i64 0, align 8
@XmlWriterProperty_ConformanceLevel = common dso_local global i32 0, align 4
@XmlConformanceLevel_Document = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_writer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_writer_create() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = bitcast i32** %4 to i8**
  %6 = call i64 @CreateXmlWriter(i32* @IID_IStream, i8** %5, i32* null)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @E_NOINTERFACE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %1, align 8
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = bitcast i32** %4 to i8**
  %14 = call i64 @CreateXmlWriter(i32* @IID_IUnknown, i8** %13, i32* null)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %1, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = bitcast i32** %2 to i8**
  %23 = call i64 @IUnknown_QueryInterface(i32* %21, i32* @IID_IXmlWriter, i8** %22)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %1, align 8
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = icmp eq i32* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @IUnknown_Release(i32* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @IXmlWriter_Release(i32* %37)
  %39 = bitcast i32** %2 to i8**
  %40 = call i64 @CreateXmlWriter(i32* @IID_IXmlWriter, i8** %39, i32* null)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %1, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  store i64 0, i64* %3, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @XmlWriterProperty_ByteOrderMark, align 4
  %49 = call i64 @IXmlWriter_GetProperty(i32* %47, i32 %48, i64* %3)
  store i64 %49, i64* %1, align 8
  %50 = load i64, i64* %1, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %1, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @TRUE, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %3, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* @TRUE, align 8
  store i64 %62, i64* %3, align 8
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @XmlWriterProperty_Indent, align 4
  %65 = call i64 @IXmlWriter_GetProperty(i32* %63, i32 %64, i64* %3)
  store i64 %65, i64* %1, align 8
  %66 = load i64, i64* %1, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %1, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* @FALSE, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %3, align 8
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  %78 = load i64, i64* @TRUE, align 8
  store i64 %78, i64* %3, align 8
  %79 = load i32*, i32** %2, align 8
  %80 = load i32, i32* @XmlWriterProperty_OmitXmlDeclaration, align 4
  %81 = call i64 @IXmlWriter_GetProperty(i32* %79, i32 %80, i64* %3)
  store i64 %81, i64* %1, align 8
  %82 = load i64, i64* %1, align 8
  %83 = load i64, i64* @S_OK, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %1, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  %88 = load i64, i64* %3, align 8
  %89 = load i64, i64* @FALSE, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %3, align 8
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %92)
  %94 = load i64, i64* @XmlConformanceLevel_Auto, align 8
  store i64 %94, i64* %3, align 8
  %95 = load i32*, i32** %2, align 8
  %96 = load i32, i32* @XmlWriterProperty_ConformanceLevel, align 4
  %97 = call i64 @IXmlWriter_GetProperty(i32* %95, i32 %96, i64* %3)
  store i64 %97, i64* %1, align 8
  %98 = load i64, i64* %1, align 8
  %99 = load i64, i64* @S_OK, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %1, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  %104 = load i64, i64* %3, align 8
  %105 = load i64, i64* @XmlConformanceLevel_Document, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i64, i64* %3, align 8
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %108)
  %110 = load i32*, i32** %2, align 8
  %111 = call i32 @IXmlWriter_Release(i32* %110)
  ret void
}

declare dso_local i64 @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IXmlWriter_Release(i32*) #1

declare dso_local i64 @IXmlWriter_GetProperty(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
