; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_read_cdata.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_read_cdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_entry = type { i32, i32, i32, i64 }

@cdata_tests = common dso_local global %struct.test_entry* null, align 8
@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"S_OK, got %08x\0A\00", align 1
@XmlNodeType_None = common dso_local global i64 0, align 8
@XmlNodeType_Element = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"got %08x for %s\0A\00", align 1
@XmlNodeType_CDATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"got %d for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_read_cdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_cdata() #0 {
  %1 = alloca %struct.test_entry*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = load %struct.test_entry*, %struct.test_entry** @cdata_tests, align 8
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

16:                                               ; preds = %149, %0
  %17 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %18 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %152

21:                                               ; preds = %16
  %22 = load i32*, i32** %2, align 8
  %23 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %24 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %23, i32 0, i32 3
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
  %38 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %39 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %45 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %51 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @broken(i32 %54)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %48, %42
  %58 = phi i1 [ true, %42 ], [ %56, %48 ]
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %62 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i32, i8*, i32, ...) @ok(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %63)
  br label %77

65:                                               ; preds = %37
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %68 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %66, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %74 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i32, i8*, i32, ...) @ok(i32 %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %72, i64 %75)
  br label %77

77:                                               ; preds = %65, %57
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @S_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %149

81:                                               ; preds = %77
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @XmlNodeType_CDATA, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %4, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %89 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i32, i8*, i32, ...) @ok(i32 %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %87, i64 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @reader_name(i32* %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i64* null, i64** %5, align 8
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @IXmlReader_GetLocalName(i32* %94, i64** %5, i32* null)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @S_OK, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %3, align 4
  %101 = call i32 (i32, i8*, i32, ...) @ok(i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i64*, i64** %5, align 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = load i64*, i64** %5, align 8
  %107 = call i32 @wine_dbgstr_w(i64* %106)
  %108 = call i32 (i32, i8*, i32, ...) @ok(i32 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  store i32 1, i32* %6, align 4
  store i64* null, i64** %5, align 8
  %109 = load i32*, i32** %2, align 8
  %110 = call i32 @IXmlReader_GetQualifiedName(i32* %109, i64** %5, i32* %6)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @S_OK, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %3, align 4
  %116 = call i32 (i32, i8*, i32, ...) @ok(i32 %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %6, align 4
  %121 = call i32 (i32, i8*, i32, ...) @ok(i32 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  %122 = load i64*, i64** %5, align 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = load i64*, i64** %5, align 8
  %127 = call i32 @wine_dbgstr_w(i64* %126)
  %128 = call i32 (i32, i8*, i32, ...) @ok(i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  store i64* null, i64** %5, align 8
  %129 = load i32*, i32** %2, align 8
  %130 = call i32 @IXmlReader_GetQualifiedName(i32* %129, i64** %5, i32* null)
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @S_OK, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %3, align 4
  %136 = call i32 (i32, i8*, i32, ...) @ok(i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  %137 = load i64*, i64** %5, align 8
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  %140 = zext i1 %139 to i32
  %141 = load i64*, i64** %5, align 8
  %142 = call i32 @wine_dbgstr_w(i64* %141)
  %143 = call i32 (i32, i8*, i32, ...) @ok(i32 %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  %144 = load i32*, i32** %2, align 8
  %145 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %146 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @reader_value(i32* %144, i32 %147)
  br label %149

149:                                              ; preds = %81, %77
  %150 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %151 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %150, i32 1
  store %struct.test_entry* %151, %struct.test_entry** %1, align 8
  br label %16

152:                                              ; preds = %16
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 @IXmlReader_Release(i32* %153)
  ret void
}

declare dso_local i32 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @set_input_string(i32*, i64) #1

declare dso_local i32 @IXmlReader_Read(i32*, i64*) #1

declare dso_local i64 @broken(i32) #1

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
