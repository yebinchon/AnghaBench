; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_writeendelement.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_writeendelement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_writeendelement.aW = internal constant [2 x i8] c"a\00", align 1
@test_writeendelement.bW = internal constant [2 x i8] c"b\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"<a><b /></a>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_writeendelement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_writeendelement() #0 {
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
  %15 = call i64 @IXmlWriter_WriteStartElement(i32* %14, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writeendelement.aW, i64 0, i64 0), i32* null)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i64 @IXmlWriter_WriteStartElement(i32* %22, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_writeendelement.bW, i64 0, i64 0), i32* null)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i64 @IXmlWriter_WriteEndElement(i32* %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i64 @IXmlWriter_WriteEndElement(i32* %38)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i64 @IXmlWriter_Flush(i32* %46)
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @CHECK_OUTPUT(i32* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @IXmlWriter_Release(i32* %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @IStream_Release(i32* %58)
  ret void
}

declare dso_local i64 @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32* @writer_set_output(i32*) #1

declare dso_local i64 @IXmlWriter_WriteStartElement(i32*, i32*, i8*, i32*) #1

declare dso_local i64 @IXmlWriter_WriteEndElement(i32*) #1

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
