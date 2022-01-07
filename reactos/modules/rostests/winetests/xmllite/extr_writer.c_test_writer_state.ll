; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_writer_state.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_writer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_writer_state.aW = internal constant [2 x i8] c"a\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@E_UNEXPECTED = common dso_local global i64 0, align 8
@WR_E_INVALIDACTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_writer_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_writer_state() #0 {
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
  %13 = load i64, i64* @E_UNEXPECTED, align 8
  %14 = call i32 @check_writer_state(i32* %12, i64 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32* @writer_set_output(i32* %15)
  store i32* %16, i32** %2, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = call i64 @IXmlWriter_WriteEndElement(i32* %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %27 = call i32 @check_writer_state(i32* %25, i64 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @IStream_Release(i32* %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32* @writer_set_output(i32* %30)
  store i32* %31, i32** %2, align 8
  %32 = load i32*, i32** %1, align 8
  %33 = call i64 @IXmlWriter_WriteAttributeString(i32* %32, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writer_state.aW, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writer_state.aW, i64 0, i64 0))
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %42 = call i32 @check_writer_state(i32* %40, i64 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @IStream_Release(i32* %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32* @writer_set_output(i32* %45)
  store i32* %46, i32** %2, align 8
  %47 = load i32*, i32** %1, align 8
  %48 = call i64 @IXmlWriter_WriteEndDocument(i32* %47)
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %57 = call i32 @check_writer_state(i32* %55, i64 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @IStream_Release(i32* %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32* @writer_set_output(i32* %60)
  store i32* %61, i32** %2, align 8
  %62 = load i32*, i32** %1, align 8
  %63 = call i64 @IXmlWriter_WriteFullEndElement(i32* %62)
  store i64 %63, i64* %3, align 8
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** %1, align 8
  %71 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %72 = call i32 @check_writer_state(i32* %70, i64 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @IStream_Release(i32* %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32* @writer_set_output(i32* %75)
  store i32* %76, i32** %2, align 8
  %77 = load i32*, i32** %1, align 8
  %78 = call i64 @IXmlWriter_WriteCData(i32* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writer_state.aW, i64 0, i64 0))
  store i64 %78, i64* %3, align 8
  %79 = load i64, i64* %3, align 8
  %80 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %3, align 8
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %87 = call i32 @check_writer_state(i32* %85, i64 %86)
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @IStream_Release(i32* %88)
  %90 = load i32*, i32** %1, align 8
  %91 = call i32* @writer_set_output(i32* %90)
  store i32* %91, i32** %2, align 8
  %92 = load i32*, i32** %1, align 8
  %93 = call i64 @IXmlWriter_WriteName(i32* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writer_state.aW, i64 0, i64 0))
  store i64 %93, i64* %3, align 8
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %3, align 8
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %98)
  %100 = load i32*, i32** %1, align 8
  %101 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %102 = call i32 @check_writer_state(i32* %100, i64 %101)
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @IStream_Release(i32* %103)
  %105 = load i32*, i32** %1, align 8
  %106 = call i32* @writer_set_output(i32* %105)
  store i32* %106, i32** %2, align 8
  %107 = load i32*, i32** %1, align 8
  %108 = call i64 @IXmlWriter_WriteNmToken(i32* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writer_state.aW, i64 0, i64 0))
  store i64 %108, i64* %3, align 8
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %3, align 8
  %114 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %113)
  %115 = load i32*, i32** %1, align 8
  %116 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %117 = call i32 @check_writer_state(i32* %115, i64 %116)
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @IStream_Release(i32* %118)
  %120 = load i32*, i32** %1, align 8
  %121 = call i32* @writer_set_output(i32* %120)
  store i32* %121, i32** %2, align 8
  %122 = load i32*, i32** %1, align 8
  %123 = call i64 @IXmlWriter_WriteString(i32* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writer_state.aW, i64 0, i64 0))
  store i64 %123, i64* %3, align 8
  %124 = load i64, i64* %3, align 8
  %125 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %3, align 8
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  %130 = load i32*, i32** %1, align 8
  %131 = load i64, i64* @WR_E_INVALIDACTION, align 8
  %132 = call i32 @check_writer_state(i32* %130, i64 %131)
  %133 = load i32*, i32** %2, align 8
  %134 = call i32 @IStream_Release(i32* %133)
  %135 = load i32*, i32** %1, align 8
  %136 = call i32 @IXmlWriter_Release(i32* %135)
  ret void
}

declare dso_local i64 @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @check_writer_state(i32*, i64) #1

declare dso_local i32* @writer_set_output(i32*) #1

declare dso_local i64 @IXmlWriter_WriteEndElement(i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i64 @IXmlWriter_WriteAttributeString(i32*, i32*, i8*, i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteEndDocument(i32*) #1

declare dso_local i64 @IXmlWriter_WriteFullEndElement(i32*) #1

declare dso_local i64 @IXmlWriter_WriteCData(i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteName(i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteNmToken(i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteString(i32*, i8*) #1

declare dso_local i32 @IXmlWriter_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
