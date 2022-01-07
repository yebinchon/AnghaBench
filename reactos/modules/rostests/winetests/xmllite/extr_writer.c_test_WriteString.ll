; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_WriteString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_WriteString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_WriteString.markupW = internal constant [6 x i8] c"<&\22>=\00", align 1
@test_WriteString.aW = internal constant [2 x i8] c"a\00", align 1
@test_WriteString.bW = internal constant [2 x i8] c"b\00", align 1
@test_WriteString.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@XmlWriterProperty_OmitXmlDeclaration = common dso_local global i32 0, align 4
@E_UNEXPECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"<b>a&lt;&amp;\22&gt;=\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"<b\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"<b>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WriteString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WriteString() #0 {
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
  %16 = call i64 @IXmlWriter_WriteString(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteString.aW, i64 0, i64 0))
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @E_UNEXPECTED, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i64 @IXmlWriter_WriteString(i32* %23, i8* null)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i64 @IXmlWriter_WriteString(i32* %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_WriteString.emptyW, i64 0, i64 0))
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @E_UNEXPECTED, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32* @writer_set_output(i32* %39)
  store i32* %40, i32** %2, align 8
  %41 = load i32*, i32** %1, align 8
  %42 = call i64 @IXmlWriter_WriteStartElement(i32* %41, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteString.bW, i64 0, i64 0), i32* null)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i64 @IXmlWriter_WriteString(i32* %49, i8* null)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i64 @IXmlWriter_WriteString(i32* %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_WriteString.emptyW, i64 0, i64 0))
  store i64 %58, i64* %3, align 8
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i64 @IXmlWriter_WriteString(i32* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteString.aW, i64 0, i64 0))
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @S_OK, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %1, align 8
  %74 = call i64 @IXmlWriter_WriteString(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_WriteString.markupW, i64 0, i64 0))
  store i64 %74, i64* %3, align 8
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i64 @IXmlWriter_Flush(i32* %81)
  store i64 %82, i64* %3, align 8
  %83 = load i64, i64* %3, align 8
  %84 = load i64, i64* @S_OK, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %3, align 8
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @CHECK_OUTPUT(i32* %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @IStream_Release(i32* %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32* @writer_set_output(i32* %93)
  store i32* %94, i32** %2, align 8
  %95 = load i32*, i32** %1, align 8
  %96 = call i64 @IXmlWriter_WriteStartElement(i32* %95, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_WriteString.bW, i64 0, i64 0), i32* null)
  store i64 %96, i64* %3, align 8
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* @S_OK, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i64 @IXmlWriter_WriteString(i32* %103, i8* null)
  store i64 %104, i64* %3, align 8
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* @S_OK, align 8
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
  %120 = call i32 @CHECK_OUTPUT(i32* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i32*, i32** %1, align 8
  %122 = call i64 @IXmlWriter_WriteString(i32* %121, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_WriteString.emptyW, i64 0, i64 0))
  store i64 %122, i64* %3, align 8
  %123 = load i64, i64* %3, align 8
  %124 = load i64, i64* @S_OK, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %3, align 8
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %127)
  %129 = load i32*, i32** %1, align 8
  %130 = call i64 @IXmlWriter_Flush(i32* %129)
  store i64 %130, i64* %3, align 8
  %131 = load i64, i64* %3, align 8
  %132 = load i64, i64* @S_OK, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i64, i64* %3, align 8
  %136 = call i32 @ok(i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %135)
  %137 = load i32*, i32** %2, align 8
  %138 = call i32 @CHECK_OUTPUT(i32* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %139 = load i32*, i32** %1, align 8
  %140 = call i32 @IXmlWriter_Release(i32* %139)
  %141 = load i32*, i32** %2, align 8
  %142 = call i32 @IStream_Release(i32* %141)
  ret void
}

declare dso_local i64 @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @writer_set_property(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteString(i32*, i8*) #1

declare dso_local i32* @writer_set_output(i32*) #1

declare dso_local i64 @IXmlWriter_WriteStartElement(i32*, i32*, i8*, i32*) #1

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
