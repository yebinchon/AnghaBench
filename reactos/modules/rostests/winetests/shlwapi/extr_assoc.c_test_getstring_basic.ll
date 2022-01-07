; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_assoc.c_test_getstring_basic.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_assoc.c_test_getstring_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASSOCSTR_EXECUTABLE = common dso_local global i32 0, align 4
@dotHtml = common dso_local global i32 0, align 4
@open = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"failed to get initial len\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to allocate memory\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@ASSOCSTR_FRIENDLYAPPNAME = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unexpected result : %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getstring_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getstring_basic() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @ASSOCSTR_EXECUTABLE, align 4
  %8 = load i32, i32* @dotHtml, align 4
  %9 = load i32, i32* @open, align 4
  %10 = call i64 @pAssocQueryStringW(i32 0, i32 %7, i32 %8, i32 %9, i32* null, i32* %4)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* @S_FALSE, align 8
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @expect_hr(i64 %11, i64 %12)
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @S_FALSE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 @skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %120

19:                                               ; preds = %0
  %20 = call i32 (...) @GetProcessHeap()
  %21 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32* @HeapAlloc(i32 %20, i32 %21, i32 %25)
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = call i32 @skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %120

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @ASSOCSTR_EXECUTABLE, align 4
  %34 = load i32, i32* @dotHtml, align 4
  %35 = load i32, i32* @open, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @pAssocQueryStringW(i32 0, i32 %33, i32 %34, i32 %35, i32* %36, i32* %5)
  store i64 %37, i64* %1, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = load i64, i64* %1, align 8
  %40 = call i32 @expect_hr(i64 %38, i64 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @lstrlenW(i32* %41)
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @expect(i32 %47, i32 %48)
  %50 = load i32, i32* @ASSOCSTR_FRIENDLYAPPNAME, align 4
  %51 = load i32, i32* @dotHtml, align 4
  %52 = load i32, i32* @open, align 4
  %53 = call i64 @pAssocQueryStringW(i32 0, i32 %50, i32 %51, i32 %52, i32* null, i32* %4)
  store i64 %53, i64* %1, align 8
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* @S_FALSE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %31
  %58 = load i64, i64* %1, align 8
  %59 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %60 = call i64 @HRESULT_FROM_WIN32(i32 %59)
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %1, align 8
  %64 = load i32, i32* @ERROR_NOT_FOUND, align 4
  %65 = call i64 @HRESULT_FROM_WIN32(i32 %64)
  %66 = icmp eq i64 %63, %65
  br label %67

67:                                               ; preds = %62, %57, %31
  %68 = phi i1 [ true, %57 ], [ true, %31 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %1, align 8
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %1, align 8
  %73 = load i64, i64* @S_FALSE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = call i32 (...) @GetProcessHeap()
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @HeapFree(i32 %76, i32 0, i32* %77)
  %79 = call i32 @skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %120

80:                                               ; preds = %67
  %81 = call i32 (...) @GetProcessHeap()
  %82 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32* @HeapAlloc(i32 %81, i32 %82, i32 %86)
  store i32* %87, i32** %2, align 8
  %88 = load i32*, i32** %2, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %80
  %91 = call i32 (...) @GetProcessHeap()
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @HeapFree(i32 %91, i32 0, i32* %92)
  %94 = call i32 @skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %120

95:                                               ; preds = %80
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* @ASSOCSTR_FRIENDLYAPPNAME, align 4
  %98 = load i32, i32* @dotHtml, align 4
  %99 = load i32, i32* @open, align 4
  %100 = load i32*, i32** %2, align 8
  %101 = call i64 @pAssocQueryStringW(i32 0, i32 %97, i32 %98, i32 %99, i32* %100, i32* %5)
  store i64 %101, i64* %1, align 8
  %102 = load i64, i64* @S_OK, align 8
  %103 = load i64, i64* %1, align 8
  %104 = call i32 @expect_hr(i64 %102, i64 %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @lstrlenW(i32* %105)
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @expect(i32 %108, i32 %109)
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @expect(i32 %111, i32 %112)
  %114 = call i32 (...) @GetProcessHeap()
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @HeapFree(i32 %114, i32 0, i32* %115)
  %117 = call i32 (...) @GetProcessHeap()
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @HeapFree(i32 %117, i32 0, i32* %118)
  br label %120

120:                                              ; preds = %95, %90, %75, %29, %17
  ret void
}

declare dso_local i64 @pAssocQueryStringW(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @expect_hr(i64, i64) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
