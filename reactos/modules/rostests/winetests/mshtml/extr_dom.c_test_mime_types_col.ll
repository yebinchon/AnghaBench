; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_mime_types_col.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_mime_types_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"get_mimeTypes failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"col != col2\0A\00", align 1
@IID_IHTMLMimeTypesCollection = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"[object]\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"get_length failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"length = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ref=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_mime_types_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mime_types_col(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @IOmNavigator_get_mimeTypes(i32* %8, i32** %3)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %7, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @IOmNavigator_get_mimeTypes(i32* %16, i32** %4)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %7, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @iface_cmp(i32* %24, i32* %25)
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @IHTMLMimeTypesCollection_Release(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @test_disp(i32* %30, i32* @IID_IHTMLMimeTypesCollection, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i64 3735928559, i64* %5, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @IHTMLMimeTypesCollection_get_length(i32* %32, i64* %5)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %7, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %5, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @IHTMLMimeTypesCollection_Release(i32* %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %6, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %52)
  ret void
}

declare dso_local i64 @IOmNavigator_get_mimeTypes(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @iface_cmp(i32*, i32*) #1

declare dso_local i64 @IHTMLMimeTypesCollection_Release(i32*) #1

declare dso_local i32 @test_disp(i32*, i32*, i8*) #1

declare dso_local i64 @IHTMLMimeTypesCollection_get_length(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
