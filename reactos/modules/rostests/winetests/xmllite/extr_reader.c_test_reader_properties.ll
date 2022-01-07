; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_reader_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_reader_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"S_OK, got %08x\0A\00", align 1
@XmlReaderProperty_MaxElementDepth = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"GetProperty failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unexpected default max depth value %ld\0A\00", align 1
@XmlReaderProperty_MultiLanguage = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"SetProperty failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unexpected max depth value %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reader_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reader_properties() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32** %1 to i8**
  %5 = call i32 @CreateXmlReader(i32* @IID_IXmlReader, i8** %4, i32* null)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @S_OK, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* %2, align 4
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @XmlReaderProperty_MaxElementDepth, align 4
  %14 = call i32 @IXmlReader_GetProperty(i32* %12, i32 %13, i32* %2)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @S_OK, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 256
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* @XmlReaderProperty_MultiLanguage, align 4
  %28 = call i32 @IXmlReader_SetProperty(i32* %26, i32 %27, i32 0)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @S_OK, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = load i32, i32* @XmlReaderProperty_MaxElementDepth, align 4
  %37 = call i32 @IXmlReader_SetProperty(i32* %35, i32 %36, i32 0)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @S_OK, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  store i32 256, i32* %2, align 4
  %44 = load i32*, i32** %1, align 8
  %45 = load i32, i32* @XmlReaderProperty_MaxElementDepth, align 4
  %46 = call i32 @IXmlReader_GetProperty(i32* %44, i32 %45, i32* %2)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @S_OK, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @IXmlReader_Release(i32* %58)
  ret void
}

declare dso_local i32 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IXmlReader_GetProperty(i32*, i32, i32*) #1

declare dso_local i32 @IXmlReader_SetProperty(i32*, i32, i32) #1

declare dso_local i32 @IXmlReader_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
