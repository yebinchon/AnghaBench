; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_readvaluechunk.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_readvaluechunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"S_OK, got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"<!-- comment1 --><!-- comment2 -->\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@XmlNodeType_Comment = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"type = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"omment1 \00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"got %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"c = %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"buffer overflow\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" comment2 \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"buf = %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_readvaluechunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_readvaluechunk() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca [64 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32** %1 to i8**
  %8 = call i32 @CreateXmlReader(i32* @IID_IXmlReader, i8** %7, i32* null)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @S_OK, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @set_input_string(i32* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @IXmlReader_Read(i32* %17, i64* %2)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @S_OK, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @XmlNodeType_Comment, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %2, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @read_value_char(i32* %31, i8 signext 32)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @read_value_char(i32* %33, i8 signext 99)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @reader_value(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @IXmlReader_ReadValueChunk(i32* %37, i32* %4, i32 1, i32* %6)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @S_FALSE, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  store i32 -559038737, i32* %6, align 4
  %55 = load i32*, i32** %1, align 8
  %56 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %57 = call i32 @IXmlReader_ReadValueChunk(i32* %55, i32* %56, i32 0, i32* %6)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @S_OK, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %1, align 8
  %71 = call i32 @reader_value(i32* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32*, i32** %1, align 8
  %73 = load i64, i64* @XmlNodeType_Comment, align 8
  %74 = call i32 @read_node(i32* %72, i64 %73)
  store i32 -559038737, i32* %6, align 4
  %75 = load i32*, i32** %1, align 8
  %76 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %77 = call i32 @IXmlReader_ReadValueChunk(i32* %75, i32* %76, i32 0, i32* %6)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @S_OK, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  store i32 -559038737, i32* %6, align 4
  %90 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %91 = call i32 @memset(i32* %90, i32 204, i32 256)
  %92 = load i32*, i32** %1, align 8
  %93 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %94 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %95 = call i32 @ARRAY_SIZE(i32* %94)
  %96 = call i32 @IXmlReader_ReadValueChunk(i32* %92, i32* %93, i32 %95, i32* %6)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @S_OK, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %5, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 10
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 52428
  %113 = zext i1 %112 to i32
  %114 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %116
  store i32 0, i32* %117, align 4
  %118 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %119 = call i32 @strcmp_wa(i32* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %124 = call i32 @wine_dbgstr_w(i32* %123)
  %125 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %124)
  store i32 -559038737, i32* %6, align 4
  %126 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %127 = call i32 @memset(i32* %126, i32 204, i32 256)
  %128 = load i32*, i32** %1, align 8
  %129 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %130 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %131 = call i32 @ARRAY_SIZE(i32* %130)
  %132 = call i32 @IXmlReader_ReadValueChunk(i32* %128, i32* %129, i32 %131, i32* %6)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @S_FALSE, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %5, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %6, align 4
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  %145 = load i32*, i32** %1, align 8
  %146 = call i32 @reader_value(i32* %145, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  store i32 -559038737, i32* %6, align 4
  store i32 65535, i32* %4, align 4
  %147 = load i32*, i32** %1, align 8
  %148 = call i32 @IXmlReader_ReadValueChunk(i32* %147, i32* %4, i32 1, i32* %6)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @S_FALSE, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %5, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %6, align 4
  %156 = icmp eq i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %6, align 4
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %4, align 4
  %161 = icmp eq i32 %160, 65535
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %4, align 4
  %164 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  %165 = load i32*, i32** %1, align 8
  %166 = call i32 @reader_value(i32* %165, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %167 = load i32*, i32** %1, align 8
  %168 = call i32 @IXmlReader_Release(i32* %167)
  ret void
}

declare dso_local i32 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @set_input_string(i32*, i8*) #1

declare dso_local i32 @IXmlReader_Read(i32*, i64*) #1

declare dso_local i32 @read_value_char(i32*, i8 signext) #1

declare dso_local i32 @reader_value(i32*, i8*) #1

declare dso_local i32 @IXmlReader_ReadValueChunk(i32*, i32*, i32, i32*) #1

declare dso_local i32 @read_node(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strcmp_wa(i32*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @IXmlReader_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
