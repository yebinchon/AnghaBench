; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_docfrag.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_docfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_docfrag.all_types = internal constant [6 x i32] [i32 129, i32 130, i32 128, i32 133, i32 131, i32 132], align 16
@DIID_DispHTMLDocument = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"[object]\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"get_body failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"body != NULL\0A\00", align 1
@E_UNEXPECTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"get_location failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"location changed\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"BR\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"divid\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"get_all failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"owner_doc != doc_node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_docfrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_docfrag(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @create_docfrag(i32* %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @test_disp(i32* %14, i32* @DIID_DispHTMLDocument, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* inttoptr (i64 3735928559 to i32*), i32** %7, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @IHTMLDocument2_get_body(i32* %16, i32** %7)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %11, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* inttoptr (i64 3735928559 to i8*), i8** %10, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @IHTMLDocument2_get_location(i32* %29, i8** %10)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @E_UNEXPECTED, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %11, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %35)
  %37 = load i8*, i8** %10, align 8
  %38 = icmp eq i8* %37, inttoptr (i64 3735928559 to i8*)
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32*, i32** %2, align 8
  %42 = call i32* @test_create_elem(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @test_elem_source_index(i32* %43, i32 -1)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @test_node_append_child(i32* %45, i32* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @test_elem_source_index(i32* %48, i32 0)
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @IHTMLElement_Release(i32* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32* @get_elem_by_id(i32* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @test_node_append_child(i32* %55, i32* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @IHTMLElement_Release(i32* %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call i64 @IHTMLDocument2_get_all(i32* %60, i32** %9)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %11, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @test_elem_collection(i32* %68, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @test_docfrag.all_types, i64 0, i64 0), i32 6)
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @IHTMLElementCollection_Release(i32* %70)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32* @test_create_elem(i32* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store i32* %73, i32** %6, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32* @get_owner_doc(i32* %74)
  store i32* %75, i32** %4, align 8
  %76 = load i32*, i32** %2, align 8
  %77 = call i32* @get_doc_node(i32* %76)
  store i32* %77, i32** %5, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @iface_cmp(i32* %78, i32* %79)
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @IHTMLDocument2_Release(i32* %82)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @IHTMLDocument2_Release(i32* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @IHTMLElement_Release(i32* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @IHTMLDocument2_Release(i32* %88)
  ret void
}

declare dso_local i32* @create_docfrag(i32*) #1

declare dso_local i32 @test_disp(i32*, i32*, i8*) #1

declare dso_local i64 @IHTMLDocument2_get_body(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IHTMLDocument2_get_location(i32*, i8**) #1

declare dso_local i32* @test_create_elem(i32*, i8*) #1

declare dso_local i32 @test_elem_source_index(i32*, i32) #1

declare dso_local i32 @test_node_append_child(i32*, i32*) #1

declare dso_local i32 @IHTMLElement_Release(i32*) #1

declare dso_local i32* @get_elem_by_id(i32*, i8*, i32) #1

declare dso_local i64 @IHTMLDocument2_get_all(i32*, i32**) #1

declare dso_local i32 @test_elem_collection(i32*, i32*, i32) #1

declare dso_local i32 @IHTMLElementCollection_Release(i32*) #1

declare dso_local i32* @get_owner_doc(i32*) #1

declare dso_local i32* @get_doc_node(i32*) #1

declare dso_local i32 @iface_cmp(i32*, i32*) #1

declare dso_local i32 @IHTMLDocument2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
