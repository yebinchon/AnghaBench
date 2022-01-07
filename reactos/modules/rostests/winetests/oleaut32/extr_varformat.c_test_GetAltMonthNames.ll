; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_varformat.c_test_GetAltMonthNames.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_varformat.c_test_GetAltMonthNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unexpected return value %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Got %p\0A\00", align 1
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@LANG_ARABIC = common dso_local global i32 0, align 4
@SUBLANG_ARABIC_EGYPT = common dso_local global i32 0, align 4
@LANG_RUSSIAN = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@LANG_POLISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetAltMonthNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetAltMonthNames() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %4 = call i32* @GetAltMonthNames(i32 0, i32** %1)
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** @S_OK, align 8
  %7 = icmp eq i32* %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %9)
  %11 = load i32*, i32** %1, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %16 = load i32, i32* @LANG_ENGLISH, align 4
  %17 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %18 = call i32 @MAKELANGID(i32 %16, i32 %17)
  %19 = load i32, i32* @SORT_DEFAULT, align 4
  %20 = call i32 @MAKELCID(i32 %18, i32 %19)
  %21 = call i32* @GetAltMonthNames(i32 %20, i32** %1)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** @S_OK, align 8
  %24 = icmp eq i32* %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %26)
  %28 = load i32*, i32** %1, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  store i32* null, i32** %1, align 8
  %33 = load i32, i32* @LANG_ARABIC, align 4
  %34 = load i32, i32* @SUBLANG_ARABIC_EGYPT, align 4
  %35 = call i32 @MAKELANGID(i32 %33, i32 %34)
  %36 = load i32, i32* @SORT_DEFAULT, align 4
  %37 = call i32 @MAKELCID(i32 %35, i32 %36)
  %38 = call i32* @GetAltMonthNames(i32 %37, i32** %1)
  store i32* %38, i32** %3, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32*, i32** @S_OK, align 8
  %41 = icmp eq i32* %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %43)
  %45 = load i32*, i32** %1, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %48)
  store i32* null, i32** %2, align 8
  %50 = load i32, i32* @LANG_ARABIC, align 4
  %51 = load i32, i32* @SUBLANG_ARABIC_EGYPT, align 4
  %52 = call i32 @MAKELANGID(i32 %50, i32 %51)
  %53 = load i32, i32* @SORT_DEFAULT, align 4
  %54 = call i32 @MAKELCID(i32 %52, i32 %53)
  %55 = call i32* @GetAltMonthNames(i32 %54, i32** %2)
  store i32* %55, i32** %3, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = load i32*, i32** @S_OK, align 8
  %58 = icmp eq i32* %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load i32*, i32** %1, align 8
  %64 = icmp eq i32* %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %66)
  store i32* null, i32** %1, align 8
  %68 = load i32, i32* @LANG_RUSSIAN, align 4
  %69 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %70 = call i32 @MAKELANGID(i32 %68, i32 %69)
  %71 = load i32, i32* @SORT_DEFAULT, align 4
  %72 = call i32 @MAKELCID(i32 %70, i32 %71)
  %73 = call i32* @GetAltMonthNames(i32 %72, i32** %1)
  store i32* %73, i32** %3, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = load i32*, i32** @S_OK, align 8
  %76 = icmp eq i32* %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %78)
  %80 = load i32*, i32** %1, align 8
  %81 = icmp ne i32* %80, null
  %82 = zext i1 %81 to i32
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %83)
  store i32* null, i32** %1, align 8
  %85 = load i32, i32* @LANG_POLISH, align 4
  %86 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %87 = call i32 @MAKELANGID(i32 %85, i32 %86)
  %88 = load i32, i32* @SORT_DEFAULT, align 4
  %89 = call i32 @MAKELCID(i32 %87, i32 %88)
  %90 = call i32* @GetAltMonthNames(i32 %89, i32** %1)
  store i32* %90, i32** %3, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = load i32*, i32** @S_OK, align 8
  %93 = icmp eq i32* %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %95)
  %97 = load i32*, i32** %1, align 8
  %98 = icmp ne i32* %97, null
  %99 = zext i1 %98 to i32
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %100)
  ret void
}

declare dso_local i32* @GetAltMonthNames(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
