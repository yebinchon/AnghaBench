; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_writeenddocument.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_writeenddocument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_writeenddocument.aW = internal constant [2 x i8] c"a\00", align 1
@test_writeenddocument.bW = internal constant [2 x i8] c"b\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@E_UNEXPECTED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@WR_E_INVALIDACTION = common dso_local global i8* null, align 8
@XmlStandalone_Omit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"<a><b /></a>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_writeenddocument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_writeenddocument() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
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
  %15 = call i8* @IXmlWriter_WriteEndDocument(i32* %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** @E_UNEXPECTED, align 8
  %18 = icmp eq i8* %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32* @writer_set_output(i32* %22)
  store i32* %23, i32** %2, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = call i8* @IXmlWriter_WriteEndDocument(i32* %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** @WR_E_INVALIDACTION, align 8
  %28 = icmp eq i8* %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i8* @IXmlWriter_WriteEndDocument(i32* %32)
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** @WR_E_INVALIDACTION, align 8
  %36 = icmp eq i8* %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @XmlStandalone_Omit, align 4
  %42 = call i8* @IXmlWriter_WriteStartDocument(i32* %40, i32 %41)
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** @WR_E_INVALIDACTION, align 8
  %45 = icmp eq i8* %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i8* @IXmlWriter_WriteStartElement(i32* %49, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writeenddocument.aW, i64 0, i64 0), i32* null)
  store i8* %50, i8** %4, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** @WR_E_INVALIDACTION, align 8
  %53 = icmp eq i8* %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i32*, i32** %1, align 8
  %58 = load i32*, i32** %2, align 8
  %59 = call i8* @IXmlWriter_SetOutput(i32* %57, i32* %58)
  store i8* %59, i8** %4, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** @S_OK, align 8
  %62 = icmp eq i8* %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load i32*, i32** %1, align 8
  %67 = call i8* @IXmlWriter_WriteStartElement(i32* %66, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writeenddocument.aW, i64 0, i64 0), i32* null)
  store i8* %67, i8** %4, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** @S_OK, align 8
  %70 = icmp eq i8* %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load i32*, i32** %1, align 8
  %75 = call i8* @IXmlWriter_WriteStartElement(i32* %74, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writeenddocument.bW, i64 0, i64 0), i32* null)
  store i8* %75, i8** %4, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** @S_OK, align 8
  %78 = icmp eq i8* %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  %82 = load i32*, i32** %1, align 8
  %83 = call i8* @IXmlWriter_WriteEndDocument(i32* %82)
  store i8* %83, i8** %4, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** @S_OK, align 8
  %86 = icmp eq i8* %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = load i32*, i32** %2, align 8
  %91 = call i8* @GetHGlobalFromStream(i32* %90, i32* %3)
  store i8* %91, i8** %4, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = load i8*, i8** @S_OK, align 8
  %94 = icmp eq i8* %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* %3, align 4
  %99 = call i8* @GlobalLock(i32 %98)
  store i8* %99, i8** %5, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = icmp eq i8* %100, null
  %102 = zext i1 %101 to i32
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %103)
  %105 = load i32*, i32** %1, align 8
  %106 = call i8* @IXmlWriter_Flush(i32* %105)
  store i8* %106, i8** %4, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = load i8*, i8** @S_OK, align 8
  %109 = icmp eq i8* %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i8*, i8** %4, align 8
  %112 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %111)
  %113 = load i32*, i32** %2, align 8
  %114 = call i32 @CHECK_OUTPUT(i32* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32*, i32** %1, align 8
  %116 = call i32 @IXmlWriter_Release(i32* %115)
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 @IStream_Release(i32* %117)
  ret void
}

declare dso_local i8* @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i8*) #1

declare dso_local i8* @IXmlWriter_WriteEndDocument(i32*) #1

declare dso_local i32* @writer_set_output(i32*) #1

declare dso_local i8* @IXmlWriter_WriteStartDocument(i32*, i32) #1

declare dso_local i8* @IXmlWriter_WriteStartElement(i32*, i32*, i8*, i32*) #1

declare dso_local i8* @IXmlWriter_SetOutput(i32*, i32*) #1

declare dso_local i8* @GetHGlobalFromStream(i32*, i32*) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i8* @IXmlWriter_Flush(i32*) #1

declare dso_local i32 @CHECK_OUTPUT(i32*, i8*) #1

declare dso_local i32 @IXmlWriter_Release(i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
