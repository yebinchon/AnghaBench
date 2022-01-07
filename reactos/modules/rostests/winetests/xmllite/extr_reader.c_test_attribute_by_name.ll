; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_attribute_by_name.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_attribute_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_attribute_by_name.xml = internal global i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [98 x i8] c"<a><elem xmlns=\22myns\22 a=\22value a\22 b=\22value b\22 xmlns:ns=\22ns uri\22 ns:c=\22value c\22 c=\22value c2\22/></a>\00", align 1
@test_attribute_by_name.xmlns_uriW = internal constant [30 x i8] c"http://www.w3.org/2000/xmlns/\00", align 16
@test_attribute_by_name.nsuriW = internal constant [7 x i8] c"ns uri\00", align 1
@test_attribute_by_name.xmlnsW = internal constant [6 x i8] c"xmlns\00", align 1
@test_attribute_by_name.mynsW = internal constant [5 x i8] c"myns\00", align 1
@test_attribute_by_name.nsW = internal constant [3 x i8] c"ns\00", align 1
@test_attribute_by_name.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@test_attribute_by_name.aW = internal constant [2 x i8] c"a\00", align 1
@test_attribute_by_name.bW = internal constant [2 x i8] c"b\00", align 1
@test_attribute_by_name.cW = internal constant [2 x i8] c"c\00", align 1
@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to create reader, hr %#x.\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Unexpected hr %#x.\0A\00", align 1
@XmlNodeType_Element = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"myns\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"value a\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"value b\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ns uri\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"value c2\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"value c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_attribute_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_attribute_by_name() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast i32** %1 to i8**
  %4 = call i64 @CreateXmlReader(i32* @IID_IXmlReader, i8** %3, i32* null)
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @S_OK, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = load i8*, i8** @test_attribute_by_name.xml, align 8
  %13 = call i32 @set_input_string(i32* %11, i8* %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i64 @IXmlReader_MoveToAttributeByName(i32* %14, i8* null, i8* null)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @E_INVALIDARG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %0
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @S_FALSE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @broken(i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %19, %0
  %27 = phi i1 [ true, %0 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i64 @IXmlReader_MoveToAttributeByName(i32* %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_attribute_by_name.emptyW, i64 0, i64 0), i8* null)
  store i64 %32, i64* %2, align 8
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @S_FALSE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* @XmlNodeType_Element, align 4
  %41 = call i32 @read_node(i32* %39, i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i64 @IXmlReader_MoveToAttributeByName(i32* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_attribute_by_name.emptyW, i64 0, i64 0), i8* null)
  store i64 %43, i64* %2, align 8
  %44 = load i64, i64* %2, align 8
  %45 = load i64, i64* @S_FALSE, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %2, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = load i32, i32* @XmlNodeType_Element, align 4
  %52 = call i32 @read_node(i32* %50, i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i64 @IXmlReader_MoveToAttributeByName(i32* %53, i8* null, i8* null)
  store i64 %54, i64* %2, align 8
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* @E_INVALIDARG, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %2, align 8
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i32*, i32** %1, align 8
  %62 = call i64 @IXmlReader_MoveToAttributeByName(i32* %61, i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @test_attribute_by_name.xmlns_uriW, i64 0, i64 0))
  store i64 %62, i64* %2, align 8
  %63 = load i64, i64* %2, align 8
  %64 = load i64, i64* @E_INVALIDARG, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %2, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = call i64 @IXmlReader_MoveToAttributeByName(i32* %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_attribute_by_name.emptyW, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @test_attribute_by_name.xmlns_uriW, i64 0, i64 0))
  store i64 %70, i64* %2, align 8
  %71 = load i64, i64* %2, align 8
  %72 = load i64, i64* @S_FALSE, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %2, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i64 @IXmlReader_MoveToAttributeByName(i32* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_attribute_by_name.xmlnsW, i64 0, i64 0), i8* null)
  store i64 %78, i64* %2, align 8
  %79 = load i64, i64* %2, align 8
  %80 = load i64, i64* @S_FALSE, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %2, align 8
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = call i64 @IXmlReader_MoveToAttributeByName(i32* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_attribute_by_name.xmlnsW, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @test_attribute_by_name.xmlns_uriW, i64 0, i64 0))
  store i64 %86, i64* %2, align 8
  %87 = load i64, i64* %2, align 8
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %2, align 8
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @reader_value(i32* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32*, i32** %1, align 8
  %96 = call i64 @IXmlReader_MoveToAttributeByName(i32* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_attribute_by_name.aW, i64 0, i64 0), i8* null)
  store i64 %96, i64* %2, align 8
  %97 = load i64, i64* %2, align 8
  %98 = load i64, i64* @S_OK, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %2, align 8
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @reader_value(i32* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32*, i32** %1, align 8
  %106 = call i64 @IXmlReader_MoveToAttributeByName(i32* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_attribute_by_name.bW, i64 0, i64 0), i8* null)
  store i64 %106, i64* %2, align 8
  %107 = load i64, i64* %2, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %2, align 8
  %112 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @reader_value(i32* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32*, i32** %1, align 8
  %116 = call i64 @IXmlReader_MoveToAttributeByName(i32* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_attribute_by_name.aW, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_attribute_by_name.mynsW, i64 0, i64 0))
  store i64 %116, i64* %2, align 8
  %117 = load i64, i64* %2, align 8
  %118 = load i64, i64* @S_FALSE, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %2, align 8
  %122 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %121)
  %123 = load i32*, i32** %1, align 8
  %124 = call i64 @IXmlReader_MoveToAttributeByName(i32* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_attribute_by_name.nsW, i64 0, i64 0), i8* null)
  store i64 %124, i64* %2, align 8
  %125 = load i64, i64* %2, align 8
  %126 = load i64, i64* @S_FALSE, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %2, align 8
  %130 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %129)
  %131 = load i32*, i32** %1, align 8
  %132 = call i64 @IXmlReader_MoveToAttributeByName(i32* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_attribute_by_name.nsW, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @test_attribute_by_name.xmlns_uriW, i64 0, i64 0))
  store i64 %132, i64* %2, align 8
  %133 = load i64, i64* %2, align 8
  %134 = load i64, i64* @S_OK, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %2, align 8
  %138 = call i32 @ok(i32 %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %137)
  %139 = load i32*, i32** %1, align 8
  %140 = call i32 @reader_value(i32* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %141 = load i32*, i32** %1, align 8
  %142 = call i64 @IXmlReader_MoveToAttributeByName(i32* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_attribute_by_name.bW, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_attribute_by_name.emptyW, i64 0, i64 0))
  store i64 %142, i64* %2, align 8
  %143 = load i64, i64* %2, align 8
  %144 = load i64, i64* @S_OK, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %2, align 8
  %148 = call i32 @ok(i32 %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %147)
  %149 = load i32*, i32** %1, align 8
  %150 = call i32 @reader_value(i32* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %151 = load i32*, i32** %1, align 8
  %152 = call i64 @IXmlReader_MoveToAttributeByName(i32* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_attribute_by_name.cW, i64 0, i64 0), i8* null)
  store i64 %152, i64* %2, align 8
  %153 = load i64, i64* %2, align 8
  %154 = load i64, i64* @S_OK, align 8
  %155 = icmp eq i64 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i64, i64* %2, align 8
  %158 = call i32 @ok(i32 %156, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %157)
  %159 = load i32*, i32** %1, align 8
  %160 = call i32 @reader_value(i32* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %161 = load i32*, i32** %1, align 8
  %162 = call i64 @IXmlReader_MoveToAttributeByName(i32* %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_attribute_by_name.cW, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_attribute_by_name.nsuriW, i64 0, i64 0))
  store i64 %162, i64* %2, align 8
  %163 = load i64, i64* %2, align 8
  %164 = load i64, i64* @S_OK, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %2, align 8
  %168 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %167)
  %169 = load i32*, i32** %1, align 8
  %170 = call i32 @reader_value(i32* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %171 = load i32*, i32** %1, align 8
  %172 = call i32 @IXmlReader_Release(i32* %171)
  ret void
}

declare dso_local i64 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @set_input_string(i32*, i8*) #1

declare dso_local i64 @IXmlReader_MoveToAttributeByName(i32*, i8*, i8*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @read_node(i32*, i32) #1

declare dso_local i32 @reader_value(i32*, i8*) #1

declare dso_local i32 @IXmlReader_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
