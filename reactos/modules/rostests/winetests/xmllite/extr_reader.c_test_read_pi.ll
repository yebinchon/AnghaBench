; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_read_pi.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_test_read_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_entry = type { i64, i64, i32, i32, i64 }

@pi_tests = common dso_local global %struct.test_entry* null, align 8
@IID_IXmlReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"S_OK, got %08x\0A\00", align 1
@XmlNodeType_None = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"got %08x for %s\0A\00", align 1
@XmlNodeType_ProcessingInstruction = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"got %d for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_read_pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_pi() #0 {
  %1 = alloca %struct.test_entry*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = load %struct.test_entry*, %struct.test_entry** @pi_tests, align 8
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

17:                                               ; preds = %126, %0
  %18 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %19 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %129

22:                                               ; preds = %17
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %25 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @set_input_string(i32* %23, i64 %26)
  %28 = load i64, i64* @XmlNodeType_None, align 8
  store i64 %28, i64* %4, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = call i64 @IXmlReader_Read(i32* %29, i64* %4)
  store i64 %30, i64* %3, align 8
  %31 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %32 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %22
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %38 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %44 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @broken(i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %41, %35
  %51 = phi i1 [ true, %35 ], [ %49, %41 ]
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %3, align 8
  %54 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %55 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32, i8*, i64, ...) @ok(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %56)
  br label %70

58:                                               ; preds = %22
  %59 = load i64, i64* %3, align 8
  %60 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %61 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %3, align 8
  %66 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %67 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i8*, i64, ...) @ok(i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %68)
  br label %70

70:                                               ; preds = %58, %50
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %126

74:                                               ; preds = %70
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @XmlNodeType_ProcessingInstruction, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %81 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i32, i8*, i64, ...) @ok(i32 %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %79, i64 %82)
  %84 = load i32*, i32** %2, align 8
  %85 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %86 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @reader_name(i32* %84, i32 %87)
  store i64 0, i64* %7, align 8
  store i32* null, i32** %5, align 8
  %89 = load i32*, i32** %2, align 8
  %90 = call i64 @IXmlReader_GetQualifiedName(i32* %89, i32** %5, i64* %7)
  store i64 %90, i64* %3, align 8
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* @S_OK, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %3, align 8
  %96 = call i32 (i32, i8*, i64, ...) @ok(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %95)
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %99 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @strlen(i32 %100)
  %102 = icmp eq i64 %97, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %7, align 8
  %105 = call i32 (i32, i8*, i64, ...) @ok(i32 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %104)
  %106 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %107 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32* @a2w(i32 %108)
  store i32* %109, i32** %6, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @lstrcmpW(i32* %110, i32* %111)
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load i32*, i32** %5, align 8
  %117 = call i64 @wine_dbgstr_w(i32* %116)
  %118 = call i32 (i32, i8*, i64, ...) @ok(i32 %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %117)
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @free_str(i32* %119)
  %121 = load i32*, i32** %2, align 8
  %122 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %123 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @reader_value(i32* %121, i32 %124)
  br label %126

126:                                              ; preds = %74, %70
  %127 = load %struct.test_entry*, %struct.test_entry** %1, align 8
  %128 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %127, i32 1
  store %struct.test_entry* %128, %struct.test_entry** %1, align 8
  br label %17

129:                                              ; preds = %17
  %130 = load i32*, i32** %2, align 8
  %131 = call i32 @IXmlReader_Release(i32* %130)
  ret void
}

declare dso_local i64 @CreateXmlReader(i32*, i8**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @set_input_string(i32*, i64) #1

declare dso_local i64 @IXmlReader_Read(i32*, i64*) #1

declare dso_local i64 @broken(i32) #1

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
