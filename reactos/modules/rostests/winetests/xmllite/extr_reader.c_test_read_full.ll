; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_read_full.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_read_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodes_test = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@misc_test = common dso_local global %struct.nodes_test zeroinitializer, align 8
@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"S_OK, got %08x\0A\00", align 1
@XmlNodeType_None = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_read_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_full() #0 {
  %1 = alloca %struct.nodes_test*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.nodes_test* @misc_test, %struct.nodes_test** %1, align 8
  %5 = bitcast i32** %2 to i8**
  %6 = call i64 @CreateXmlReader(i32* @IID_IXmlReader, i8** %5, i32* null)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load %struct.nodes_test*, %struct.nodes_test** %1, align 8
  %15 = getelementptr inbounds %struct.nodes_test, %struct.nodes_test* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @set_input_string(i32* %13, i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %39, %0
  %19 = load i32*, i32** %2, align 8
  %20 = load %struct.nodes_test*, %struct.nodes_test** %1, align 8
  %21 = getelementptr inbounds %struct.nodes_test, %struct.nodes_test* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @read_node(i32* %19, i64 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = load %struct.nodes_test*, %struct.nodes_test** %1, align 8
  %31 = getelementptr inbounds %struct.nodes_test, %struct.nodes_test* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @reader_value(i32* %29, i32 %37)
  br label %39

39:                                               ; preds = %18
  %40 = load %struct.nodes_test*, %struct.nodes_test** %1, align 8
  %41 = getelementptr inbounds %struct.nodes_test, %struct.nodes_test* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @XmlNodeType_None, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %18, label %51

51:                                               ; preds = %39
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @IXmlReader_Release(i32* %52)
  ret void
}

declare dso_local i64 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @set_input_string(i32*, i32) #1

declare dso_local i32 @read_node(i32*, i64) #1

declare dso_local i32 @reader_value(i32*, i32) #1

declare dso_local i32 @IXmlReader_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
