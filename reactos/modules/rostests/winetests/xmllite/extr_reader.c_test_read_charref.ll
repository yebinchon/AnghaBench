; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_read_charref.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_read_charref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_read_charref.testA = internal constant [32 x i8] c"<a b=\22c\22>&#x1f3;&#x103;&gt;</a>\00", align 16
@test_read_charref.chardataW = internal constant [4 x i32] [i32 499, i32 259, i32 62, i32 0], align 16
@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"S_OK, got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@XmlNodeType_Element = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Unexpected node type %d\0A\00", align 1
@XmlNodeType_Text = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Text value : %s\0A\00", align 1
@XmlNodeType_EndElement = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@XmlNodeType_None = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_read_charref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_charref() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = bitcast i32** %2 to i8**
  %6 = call i64 @CreateXmlReader(i32* @IID_IXmlReader, i8** %5, i32* null)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @set_input_string(i32* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_read_charref.testA, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @IXmlReader_Read(i32* %15, i64* %3)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @XmlNodeType_Element, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i64 @IXmlReader_Read(i32* %29, i64* %3)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @XmlNodeType_Text, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i64 @IXmlReader_GetValue(i32* %43, i32** %1, i32* null)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @lstrcmpW(i32* %51, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_read_charref.chardataW, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i32*, i32** %1, align 8
  %57 = call i64 @wine_dbgstr_w(i32* %56)
  %58 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i64 @IXmlReader_Read(i32* %59, i64* %3)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @XmlNodeType_EndElement, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = call i64 @IXmlReader_Read(i32* %73, i64* %3)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @S_FALSE, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @XmlNodeType_None, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @IXmlReader_Release(i32* %87)
  ret void
}

declare dso_local i64 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @set_input_string(i32*, i8*) #1

declare dso_local i64 @IXmlReader_Read(i32*, i64*) #1

declare dso_local i64 @IXmlReader_GetValue(i32*, i32**, i32*) #1

declare dso_local i32 @lstrcmpW(i32*, i32*) #1

declare dso_local i64 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @IXmlReader_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
