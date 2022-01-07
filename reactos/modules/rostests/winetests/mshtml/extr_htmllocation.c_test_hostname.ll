; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmllocation.c_test_hostname.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmllocation.c_test_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.location_test = type { i8*, i32 }

@E_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"%s: get_hostname should have failed with E_POINTER (0x%08x), was: 0x%08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: get_hostname failed: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"%s: expected retrieved hostname to be L\22%s\22, was: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: get_domain failed: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"%s: expected retrieved domain to be L\22%s\22, was: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.location_test*)* @test_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hostname(i32* %0, i32* %1, %struct.location_test* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.location_test*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.location_test* %2, %struct.location_test** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @IHTMLLocation_get_hostname(i32* %9, i32* null)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @E_POINTER, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load %struct.location_test*, %struct.location_test** %6, align 8
  %16 = getelementptr inbounds %struct.location_test, %struct.location_test* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* @E_POINTER, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %14, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %18, i64 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @IHTMLLocation_get_hostname(i32* %21, i32* %8)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load %struct.location_test*, %struct.location_test** %6, align 8
  %28 = getelementptr inbounds %struct.location_test, %struct.location_test* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %29, i64 %30)
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %3
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.location_test*, %struct.location_test** %6, align 8
  %38 = getelementptr inbounds %struct.location_test, %struct.location_test* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @str_eq_wa(i32 %36, i8* %39)
  %41 = load %struct.location_test*, %struct.location_test** %6, align 8
  %42 = getelementptr inbounds %struct.location_test, %struct.location_test* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.location_test*, %struct.location_test** %6, align 8
  %45 = getelementptr inbounds %struct.location_test, %struct.location_test* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @wine_dbgstr_w(i32 %48)
  %50 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %40, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %43, i64 %47, i64 %49)
  br label %51

51:                                               ; preds = %35, %3
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @SysFreeString(i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @IHTMLDocument2_get_domain(i32* %54, i32* %8)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load %struct.location_test*, %struct.location_test** %6, align 8
  %61 = getelementptr inbounds %struct.location_test, %struct.location_test* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %62, i64 %63)
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %51
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.location_test*, %struct.location_test** %6, align 8
  %71 = getelementptr inbounds %struct.location_test, %struct.location_test* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.location_test*, %struct.location_test** %6, align 8
  %76 = getelementptr inbounds %struct.location_test, %struct.location_test* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  br label %79

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi i8* [ %77, %74 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %78 ]
  %81 = call i32 @str_eq_wa(i32 %69, i8* %80)
  %82 = load %struct.location_test*, %struct.location_test** %6, align 8
  %83 = getelementptr inbounds %struct.location_test, %struct.location_test* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.location_test*, %struct.location_test** %6, align 8
  %86 = getelementptr inbounds %struct.location_test, %struct.location_test* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @wine_dbgstr_w(i32 %89)
  %91 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %81, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %84, i64 %88, i64 %90)
  br label %92

92:                                               ; preds = %79, %51
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @SysFreeString(i32 %93)
  ret void
}

declare dso_local i64 @IHTMLLocation_get_hostname(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @str_eq_wa(i32, i8*) #1

declare dso_local i64 @wine_dbgstr_w(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @IHTMLDocument2_get_domain(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
