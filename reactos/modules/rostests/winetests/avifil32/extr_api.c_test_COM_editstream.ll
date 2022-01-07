; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/avifil32/extr_api.c_test_COM_editstream.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/avifil32/extr_api.c_test_COM_editstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"AVIEditStream create failed: %08x, expected S_OK\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"refcount == %u, expected 2\0A\00", align 1
@IID_IAVIEditStream = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"QueryInterface for IID_IAVIEditStream failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"refcount == %u, expected 4\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"QueryInterface for IID_IUnknown failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"refcount == %u, expected 5\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_COM_editstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_COM_editstream() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @CreateEditableStream(i32** %2, i32* null)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @S_OK, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @IAVIStream_AddRef(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 2
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = bitcast i32** %1 to i8**
  %22 = call i32 @IAVIStream_QueryInterface(i32* %20, i32* @IID_IAVIEditStream, i8** %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @S_OK, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @IAVIEditStream_AddRef(i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 4
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @IAVIEditStream_Release(i32* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32*, i32** %1, align 8
  %39 = bitcast i32** %3 to i8**
  %40 = call i32 @IAVIEditStream_QueryInterface(i32* %38, i32* @IID_IUnknown, i8** %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @S_OK, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @IUnknown_AddRef(i32* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 5
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @IUnknown_Release(i32* %54)
  br label %56

56:                                               ; preds = %60, %0
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @IAVIEditStream_Release(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %56

61:                                               ; preds = %56
  ret void
}

declare dso_local i32 @CreateEditableStream(i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IAVIStream_AddRef(i32*) #1

declare dso_local i32 @IAVIStream_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IAVIEditStream_AddRef(i32*) #1

declare dso_local i32 @IAVIEditStream_Release(i32*) #1

declare dso_local i32 @IAVIEditStream_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
