; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_GdipGetFontCollectionFamilyList.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_GdipGetFontCollectionFamilyList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to get system collection, status %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to get family count, status %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unexpected empty collection.\0A\00", align 1
@InvalidParameter = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Unexpected status %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Unexpected list count %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to get family list, status %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Expected family instance.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Unexpected family instance.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipGetFontCollectionFamilyList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipGetFontCollectionFamilyList() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32 @GdipNewInstalledFontCollection(i32** %3)
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @Ok, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %6, align 4
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i64 0, i64* %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @GdipGetFontCollectionFamilyCount(i32* %14, i64* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @GdipGetFontCollectionFamilyList(i32* null, i32 0, i32** null, i64* null)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @InvalidParameter, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  store i64 123, i64* %4, align 8
  %33 = call i32 @GdipGetFontCollectionFamilyList(i32* null, i32 0, i32** null, i64* %4)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @InvalidParameter, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %40, 123
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %4, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @GdipGetFontCollectionFamilyList(i32* %45, i32 0, i32** null, i64* null)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @InvalidParameter, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  store i64 123, i64* %4, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @GdipGetFontCollectionFamilyList(i32* %53, i32 0, i32** null, i64* %4)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @InvalidParameter, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i64, i64* %4, align 8
  %62 = icmp eq i64 %61, 123
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %4, align 8
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %64)
  store i64 123, i64* %4, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @GdipGetFontCollectionFamilyList(i32* %66, i32 1, i32** null, i64* %4)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @InvalidParameter, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i64, i64* %4, align 8
  %75 = icmp eq i64 %74, 123
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %4, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %77)
  store i32* null, i32** %1, align 8
  store i64 0, i64* %4, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @GdipGetFontCollectionFamilyList(i32* %79, i32 1, i32** %1, i64* %4)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @Ok, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load i64, i64* %4, align 8
  %88 = icmp eq i64 %87, 1
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %4, align 8
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %90)
  %92 = load i32*, i32** %1, align 8
  %93 = icmp ne i32* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  store i64 0, i64* %4, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @GdipGetFontCollectionFamilyList(i32* %96, i32 1, i32** %2, i64* %4)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @Ok, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i64, i64* %4, align 8
  %105 = icmp eq i64 %104, 1
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %4, align 8
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %107)
  %109 = load i32*, i32** %2, align 8
  %110 = load i32*, i32** %1, align 8
  %111 = icmp ne i32* %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %114 = load i32*, i32** %1, align 8
  %115 = call i32 @GdipDeleteFontFamily(i32* %114)
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @GdipDeleteFontFamily(i32* %116)
  ret void
}

declare dso_local i32 @GdipNewInstalledFontCollection(i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GdipGetFontCollectionFamilyCount(i32*, i64*) #1

declare dso_local i32 @GdipGetFontCollectionFamilyList(i32*, i32, i32**, i64*) #1

declare dso_local i32 @GdipDeleteFontFamily(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
