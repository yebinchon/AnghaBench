; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetFontResourceInfoW.c_Test_GetFontResourceInfoW_case2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetFontResourceInfoW.c_Test_GetFontResourceInfoW_case2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32** }

@Test_GetFontResourceInfoW_case2.Data = internal global [100 x %struct.TYPE_6__] zeroinitializer, align 16
@.str = private unnamed_addr constant [41 x i8] c"face name #%d mismatched: \22%S\22 and \22%S\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*)* @Test_GetFontResourceInfoW_case2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_GetFontResourceInfoW_case2(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i64 2, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i64, i64* %8, align 8
  %11 = call i64 @GetFontResourceInfoW(i32 %9, i64* %7, %struct.TYPE_6__* null, i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @ok_int(i64 %12, i32 1)
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @ok_int(i64 %14, i32 %20)
  store i64 1024, i64* %7, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @GetFontResourceInfoW(i32 %22, i64* %7, %struct.TYPE_6__* null, i64 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @ok_int(i64 %25, i32 0)
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @ok_int(i64 %27, i32 1024)
  store i64 0, i64* %7, align 8
  %29 = call i32 @ZeroMemory(%struct.TYPE_6__* getelementptr inbounds ([100 x %struct.TYPE_6__], [100 x %struct.TYPE_6__]* @Test_GetFontResourceInfoW_case2.Data, i64 0, i64 0), i32 800)
  %30 = load i32, i32* %3, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @GetFontResourceInfoW(i32 %30, i64* %7, %struct.TYPE_6__* getelementptr inbounds ([100 x %struct.TYPE_6__], [100 x %struct.TYPE_6__]* @Test_GetFontResourceInfoW_case2.Data, i64 0, i64 0), i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @ok_int(i64 %33, i32 1)
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @ok_int(i64 %35, i32 %41)
  store i64 800, i64* %7, align 8
  %43 = call i32 @ZeroMemory(%struct.TYPE_6__* getelementptr inbounds ([100 x %struct.TYPE_6__], [100 x %struct.TYPE_6__]* @Test_GetFontResourceInfoW_case2.Data, i64 0, i64 0), i32 800)
  %44 = load i32, i32* %3, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @GetFontResourceInfoW(i32 %44, i64* %7, %struct.TYPE_6__* getelementptr inbounds ([100 x %struct.TYPE_6__], [100 x %struct.TYPE_6__]* @Test_GetFontResourceInfoW_case2.Data, i64 0, i64 0), i64 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @ok_int(i64 %47, i32 1)
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @ok_int(i64 %49, i32 %55)
  store i64 0, i64* %6, align 8
  br label %57

57:                                               ; preds = %91, %2
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %58, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %57
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds [100 x %struct.TYPE_6__], [100 x %struct.TYPE_6__]* @Test_GetFontResourceInfoW_case2.Data, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32**, i32*** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i32*, i32** %71, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = call i64 @lstrcmpiW(i32* %68, i32* %74)
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %6, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds [100 x %struct.TYPE_6__], [100 x %struct.TYPE_6__]* @Test_GetFontResourceInfoW_case2.Data, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32**, i32*** %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %79, i32* %83, i32* %89)
  br label %91

91:                                               ; preds = %64
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %57

94:                                               ; preds = %57
  ret void
}

declare dso_local i64 @GetFontResourceInfoW(i32, i64*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @ok_int(i64, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32*, i32*) #1

declare dso_local i64 @lstrcmpiW(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
