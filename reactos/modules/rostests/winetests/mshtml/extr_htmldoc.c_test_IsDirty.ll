; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_IsDirty.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_IsDirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IPersistStreamInit = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"QueryInterface(IID_IPersistStreamInit failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"IsDirty() = %08x, expected %08x\0A\00", align 1
@IID_IPersistMoniker = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"QueryInterface(IID_IPersistMoniker failed: %08x\0A\00", align 1
@IID_IPersistFile = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"QueryInterface(IID_IPersistFile failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @test_IsDirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IsDirty(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32** %5 to i8**
  %11 = call i64 @IHTMLDocument2_QueryInterface(i32* %9, i32* @IID_IPersistStreamInit, i8** %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %8, align 8
  %17 = call i32 (i32, i8*, i64, ...) @ok(i32 %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @SUCCEEDED(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @IPersistStreamInit_IsDirty(i32* %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 (i32, i8*, i64, ...) @ok(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %28, i64 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @IPersistStreamInit_Release(i32* %31)
  br label %33

33:                                               ; preds = %21, %2
  %34 = load i32*, i32** %3, align 8
  %35 = bitcast i32** %6 to i8**
  %36 = call i64 @IHTMLDocument2_QueryInterface(i32* %34, i32* @IID_IPersistMoniker, i8** %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %8, align 8
  %42 = call i32 (i32, i8*, i64, ...) @ok(i32 %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @SUCCEEDED(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %33
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @IPersistMoniker_IsDirty(i32* %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 (i32, i8*, i64, ...) @ok(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @IPersistMoniker_Release(i32* %56)
  br label %58

58:                                               ; preds = %46, %33
  %59 = load i32*, i32** %3, align 8
  %60 = bitcast i32** %7 to i8**
  %61 = call i64 @IHTMLDocument2_QueryInterface(i32* %59, i32* @IID_IPersistFile, i8** %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %8, align 8
  %67 = call i32 (i32, i8*, i64, ...) @ok(i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @SUCCEEDED(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %58
  %72 = load i32*, i32** %7, align 8
  %73 = call i64 @IPersistFile_IsDirty(i32* %72)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %4, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i32 (i32, i8*, i64, ...) @ok(i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %78, i64 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @IPersistFile_Release(i32* %81)
  br label %83

83:                                               ; preds = %71, %58
  ret void
}

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IPersistStreamInit_IsDirty(i32*) #1

declare dso_local i32 @IPersistStreamInit_Release(i32*) #1

declare dso_local i64 @IPersistMoniker_IsDirty(i32*) #1

declare dso_local i32 @IPersistMoniker_Release(i32*) #1

declare dso_local i64 @IPersistFile_IsDirty(i32*) #1

declare dso_local i32 @IPersistFile_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
