; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_xmlhttprequest.c_test_header.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_xmlhttprequest.c_test_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HEADER_TYPE = type { i8*, i32 }

@xhr = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"getAllResponseHeader failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"all_header == NULL\0A\00", align 1
@CP_UTF8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"getResponseHeader failed, got %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"text == NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Expect %s: %s, got %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"AllResponseHeaders(%s) don't have expected substr(%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.HEADER_TYPE*, i32)* @test_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_header(%struct.HEADER_TYPE* %0, i32 %1) #0 {
  %3 = alloca %struct.HEADER_TYPE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4096 x i8], align 16
  %11 = alloca [512 x i8], align 16
  store %struct.HEADER_TYPE* %0, %struct.HEADER_TYPE** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %8, align 8
  %12 = load i32, i32* @xhr, align 4
  %13 = call i64 @IHTMLXMLHttpRequest_getAllResponseHeaders(i32 %12, i32** %8)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %9, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @CP_UTF8, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %27 = call i32 @WideCharToMultiByte(i32 %24, i32 0, i32* %25, i32 -1, i8* %26, i32 4096, i32* null, i32* null)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @SysFreeString(i32* %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %111, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %114

34:                                               ; preds = %30
  store i32* null, i32** %7, align 8
  %35 = load %struct.HEADER_TYPE*, %struct.HEADER_TYPE** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.HEADER_TYPE, %struct.HEADER_TYPE* %35, i64 %37
  %39 = getelementptr inbounds %struct.HEADER_TYPE, %struct.HEADER_TYPE* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32* @a2bstr(i32 %40)
  store i32* %41, i32** %6, align 8
  %42 = load i32, i32* @xhr, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @IHTMLXMLHttpRequest_getResponseHeader(i32 %42, i32* %43, i32** %7)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %9, align 8
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ne i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.HEADER_TYPE*, %struct.HEADER_TYPE** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.HEADER_TYPE, %struct.HEADER_TYPE* %56, i64 %58
  %60 = getelementptr inbounds %struct.HEADER_TYPE, %struct.HEADER_TYPE* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strcmp_wa(i32* %55, i8* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.HEADER_TYPE*, %struct.HEADER_TYPE** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.HEADER_TYPE, %struct.HEADER_TYPE* %66, i64 %68
  %70 = getelementptr inbounds %struct.HEADER_TYPE, %struct.HEADER_TYPE* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.HEADER_TYPE*, %struct.HEADER_TYPE** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.HEADER_TYPE, %struct.HEADER_TYPE* %72, i64 %74
  %76 = getelementptr inbounds %struct.HEADER_TYPE, %struct.HEADER_TYPE* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @wine_dbgstr_w(i32* %78)
  %80 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %71, i8* %77, i32 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @SysFreeString(i32* %81)
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @SysFreeString(i32* %83)
  %85 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %86 = load %struct.HEADER_TYPE*, %struct.HEADER_TYPE** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.HEADER_TYPE, %struct.HEADER_TYPE* %86, i64 %88
  %90 = getelementptr inbounds %struct.HEADER_TYPE, %struct.HEADER_TYPE* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @strcpy(i8* %85, i32 %91)
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %94 = call i32 @strcat(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %96 = load %struct.HEADER_TYPE*, %struct.HEADER_TYPE** %3, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.HEADER_TYPE, %struct.HEADER_TYPE* %96, i64 %98
  %100 = getelementptr inbounds %struct.HEADER_TYPE, %struct.HEADER_TYPE* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcat(i8* %95, i8* %101)
  %103 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %104 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %105 = call i32* @strstr(i8* %103, i8* %104)
  %106 = icmp ne i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %109 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %110 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %108, i8* %109)
  br label %111

111:                                              ; preds = %34
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %30

114:                                              ; preds = %30
  ret void
}

declare dso_local i64 @IHTMLXMLHttpRequest_getAllResponseHeaders(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32* @a2bstr(i32) #1

declare dso_local i64 @IHTMLXMLHttpRequest_getResponseHeader(i32, i32*, i32**) #1

declare dso_local i32 @strcmp_wa(i32*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
