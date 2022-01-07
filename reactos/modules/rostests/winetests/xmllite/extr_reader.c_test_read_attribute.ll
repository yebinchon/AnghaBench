; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_read_attribute.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_read_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_entry = type { i64, i64, i32, i32, i64 }

@attributes_tests = common dso_local global %struct.test_entry* null, align 8
@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"S_OK, got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"got %08x for %s\0A\00", align 1
@XmlNodeType_None = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to get node type, %#x\0A\00", align 1
@XmlNodeType_Element = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"got %d for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_read_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_attribute() #0 {
  %1 = alloca %struct.test_entry*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = load %struct.test_entry*, %struct.test_entry** @attributes_tests, align 8
  store %struct.test_entry* %8, %struct.test_entry** %1, align 8
  %9 = bitcast i32** %2 to i8**
  %10 = call i64 @CreateXmlReader(i32* @IID_IXmlReader, i8** %9, i32* null)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %3, align 8
  %16 = call i32 (i32, i8*, i64, ...) @ok(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %142, %0
  %18 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %19 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %145

22:                                               ; preds = %17
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %25 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @set_input_string(i32* %23, i64 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @IXmlReader_Read(i32* %28, i32* null)
  store i64 %29, i64* %3, align 8
  %30 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %31 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %22
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %37 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %3, align 8
  %42 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %43 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @broken(i32 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %40, %34
  %50 = phi i1 [ true, %34 ], [ %48, %40 ]
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %54 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32, i8*, i64, ...) @ok(i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %52, i64 %55)
  br label %69

57:                                               ; preds = %22
  %58 = load i64, i64* %3, align 8
  %59 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %60 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %3, align 8
  %65 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %66 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i32, i8*, i64, ...) @ok(i32 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %67)
  br label %69

69:                                               ; preds = %57, %49
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %142

73:                                               ; preds = %69
  %74 = load i64, i64* @XmlNodeType_None, align 8
  store i64 %74, i64* %4, align 8
  %75 = load i32*, i32** %2, align 8
  %76 = call i64 @IXmlReader_GetNodeType(i32* %75, i64* %4)
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @S_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %3, align 8
  %82 = call i32 (i32, i8*, i64, ...) @ok(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @XmlNodeType_Element, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %4, align 8
  %88 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %89 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i32, i8*, i64, ...) @ok(i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %87, i64 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i64 @IXmlReader_MoveToFirstAttribute(i32* %92)
  store i64 %93, i64* %3, align 8
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* @S_OK, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %3, align 8
  %99 = call i32 (i32, i8*, i64, ...) @ok(i32 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %102 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @reader_name(i32* %100, i32 %103)
  store i64 1, i64* %7, align 8
  store i32* null, i32** %5, align 8
  %105 = load i32*, i32** %2, align 8
  %106 = call i64 @IXmlReader_GetQualifiedName(i32* %105, i32** %5, i64* %7)
  store i64 %106, i64* %3, align 8
  %107 = load i64, i64* %3, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %3, align 8
  %112 = call i32 (i32, i8*, i64, ...) @ok(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %111)
  %113 = load i64, i64* %7, align 8
  %114 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %115 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @strlen(i32 %116)
  %118 = icmp eq i64 %113, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %7, align 8
  %121 = call i32 (i32, i8*, i64, ...) @ok(i32 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %120)
  %122 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %123 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32* @a2w(i32 %124)
  store i32* %125, i32** %6, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @lstrcmpW(i32* %126, i32* %127)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = load i32*, i32** %5, align 8
  %133 = call i64 @wine_dbgstr_w(i32* %132)
  %134 = call i32 (i32, i8*, i64, ...) @ok(i32 %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 %133)
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @free_str(i32* %135)
  %137 = load i32*, i32** %2, align 8
  %138 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %139 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @reader_value(i32* %137, i32 %140)
  br label %142

142:                                              ; preds = %73, %69
  %143 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %144 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %143, i32 1
  store %struct.test_entry* %144, %struct.test_entry** %1, align 8
  br label %17

145:                                              ; preds = %17
  %146 = load i32*, i32** %2, align 8
  %147 = call i32 @IXmlReader_Release(i32* %146)
  ret void
}

declare dso_local i64 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @set_input_string(i32*, i64) #1

declare dso_local i64 @IXmlReader_Read(i32*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @IXmlReader_GetNodeType(i32*, i64*) #1

declare dso_local i64 @IXmlReader_MoveToFirstAttribute(i32*) #1

declare dso_local i32 @reader_name(i32*, i32) #1

declare dso_local i64 @IXmlReader_GetQualifiedName(i32*, i32**, i64*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32* @a2w(i32) #1

declare dso_local i32 @lstrcmpW(i32*, i32*) #1

declare dso_local i64 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @free_str(i32*) #1

declare dso_local i32 @reader_value(i32*, i32) #1

declare dso_local i32 @IXmlReader_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
