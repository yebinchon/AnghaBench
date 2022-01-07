; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_read_text.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_read_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_entry = type { i32, i32, i64 }

@text_tests = common dso_local global %struct.test_entry* null, align 8
@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"S_OK, got %08x\0A\00", align 1
@XmlNodeType_None = common dso_local global i64 0, align 8
@XmlNodeType_Element = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"got %08x for %s\0A\00", align 1
@XmlNodeType_Text = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"got %d for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_read_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_text() #0 {
  %1 = alloca %struct.test_entry*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = load %struct.test_entry*, %struct.test_entry** @text_tests, align 8
  store %struct.test_entry* %7, %struct.test_entry** %1, align 8
  %8 = bitcast i32** %2 to i8**
  %9 = call i32 @CreateXmlReader(i32* @IID_IXmlReader, i8** %8, i32* null)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @S_OK, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i32, i8*, i32, ...) @ok(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %120, %0
  %17 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %18 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %123

21:                                               ; preds = %16
  %22 = load i32*, i32** %2, align 8
  %23 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %24 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @set_input_string(i32* %22, i64 %25)
  %27 = load i64, i64* @XmlNodeType_None, align 8
  store i64 %27, i64* %4, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @IXmlReader_Read(i32* %28, i64* %4)
  store i32 %29, i32* %3, align 4
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @XmlNodeType_Element, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load i64, i64* @XmlNodeType_None, align 8
  store i64 %34, i64* %4, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @IXmlReader_Read(i32* %35, i64* %4)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %21
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %40 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %38, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %46 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %44, i64 %47)
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @S_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %120

52:                                               ; preds = %37
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @XmlNodeType_Text, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %4, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %60 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i32, i8*, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %58, i64 %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @reader_name(i32* %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i64* null, i64** %5, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @IXmlReader_GetLocalName(i32* %65, i64** %5, i32* null)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @S_OK, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %3, align 4
  %72 = call i32 (i32, i8*, i32, ...) @ok(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i64*, i64** %5, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = load i64*, i64** %5, align 8
  %78 = call i32 @wine_dbgstr_w(i64* %77)
  %79 = call i32 (i32, i8*, i32, ...) @ok(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  store i32 1, i32* %6, align 4
  store i64* null, i64** %5, align 8
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @IXmlReader_GetQualifiedName(i32* %80, i64** %5, i32* %6)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @S_OK, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %3, align 4
  %87 = call i32 (i32, i8*, i32, ...) @ok(i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %6, align 4
  %92 = call i32 (i32, i8*, i32, ...) @ok(i32 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  %93 = load i64*, i64** %5, align 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = load i64*, i64** %5, align 8
  %98 = call i32 @wine_dbgstr_w(i64* %97)
  %99 = call i32 (i32, i8*, i32, ...) @ok(i32 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  store i64* null, i64** %5, align 8
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @IXmlReader_GetQualifiedName(i32* %100, i64** %5, i32* null)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @S_OK, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %3, align 4
  %107 = call i32 (i32, i8*, i32, ...) @ok(i32 %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load i64*, i64** %5, align 8
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load i64*, i64** %5, align 8
  %113 = call i32 @wine_dbgstr_w(i64* %112)
  %114 = call i32 (i32, i8*, i32, ...) @ok(i32 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %117 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @reader_value(i32* %115, i32 %118)
  br label %120

120:                                              ; preds = %52, %37
  %121 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %122 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %121, i32 1
  store %struct.test_entry* %122, %struct.test_entry** %1, align 8
  br label %16

123:                                              ; preds = %16
  %124 = load i32*, i32** %2, align 8
  %125 = call i32 @IXmlReader_Release(i32* %124)
  ret void
}

declare dso_local i32 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @set_input_string(i32*, i64) #1

declare dso_local i32 @IXmlReader_Read(i32*, i64*) #1

declare dso_local i32 @reader_name(i32*, i8*) #1

declare dso_local i32 @IXmlReader_GetLocalName(i32*, i64**, i32*) #1

declare dso_local i32 @wine_dbgstr_w(i64*) #1

declare dso_local i32 @IXmlReader_GetQualifiedName(i32*, i64**, i32*) #1

declare dso_local i32 @reader_value(i32*, i32) #1

declare dso_local i32 @IXmlReader_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
