; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_WriteRaw.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_WriteRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_WriteRaw.rawW = internal constant [4 x i8] c"a<:\00", align 1
@test_WriteRaw.aW = internal constant [2 x i8] c"a\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@E_UNEXPECTED = common dso_local global i64 0, align 8
@XmlStandalone_Yes = common dso_local global i32 0, align 4
@WR_E_INVALIDACTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"<?xml version=\221.0\22 encoding=\22UTF-8\22?>a<:a<:<!--a<:-->a<:<a>a</a>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WriteRaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WriteRaw() #0 {
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
  %13 = call i64 @IXmlWriter_WriteRaw(i32* %12, i8* null)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i64 @IXmlWriter_WriteRaw(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WriteRaw.rawW, i64 0, i64 0))
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @E_UNEXPECTED, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32* @writer_set_output(i32* %28)
  store i32* %29, i32** %2, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = call i64 @IXmlWriter_WriteRaw(i32* %30, i8* null)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i64 @IXmlWriter_WriteRaw(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WriteRaw.rawW, i64 0, i64 0))
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i64 @IXmlWriter_WriteRaw(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WriteRaw.rawW, i64 0, i64 0))
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i64 @IXmlWriter_WriteComment(i32* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WriteRaw.rawW, i64 0, i64 0))
  store i64 %55, i64* %3, align 8
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i64 @IXmlWriter_WriteRaw(i32* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WriteRaw.rawW, i64 0, i64 0))
  store i64 %63, i64* %3, align 8
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** %1, align 8
  %71 = call i64 @IXmlWriter_WriteElementString(i32* %70, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteRaw.aW, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteRaw.aW, i64 0, i64 0))
  store i64 %71, i64* %3, align 8
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = load i32, i32* @XmlStandalone_Yes, align 4
  %80 = call i64 @IXmlWriter_WriteStartDocument(i32* %78, i32 %79)
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load i32*, i32** %1, align 8
  %88 = call i64 @IXmlWriter_WriteComment(i32* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WriteRaw.rawW, i64 0, i64 0))
  store i64 %88, i64* %3, align 8
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %3, align 8
  %94 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %93)
  %95 = load i32*, i32** %1, align 8
  %96 = call i64 @IXmlWriter_WriteEndDocument(i32* %95)
  store i64 %96, i64* %3, align 8
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i64 @IXmlWriter_WriteRaw(i32* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WriteRaw.rawW, i64 0, i64 0))
  store i64 %104, i64* %3, align 8
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %3, align 8
  %110 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  %111 = load i32*, i32** %1, align 8
  %112 = call i64 @IXmlWriter_Flush(i32* %111)
  store i64 %112, i64* %3, align 8
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* @S_OK, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %3, align 8
  %118 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %117)
  %119 = load i32*, i32** %2, align 8
  %120 = call i32 @CHECK_OUTPUT(i32* %119, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32*, i32** %1, align 8
  %122 = call i32 @IXmlWriter_Release(i32* %121)
  %123 = load i32*, i32** %2, align 8
  %124 = call i32 @IStream_Release(i32* %123)
  ret void
}

declare dso_local i64 @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IXmlWriter_WriteRaw(i32*, i8*) #1

declare dso_local i32* @writer_set_output(i32*) #1

declare dso_local i64 @IXmlWriter_WriteComment(i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteElementString(i32*, i32*, i8*, i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteStartDocument(i32*, i32) #1

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
