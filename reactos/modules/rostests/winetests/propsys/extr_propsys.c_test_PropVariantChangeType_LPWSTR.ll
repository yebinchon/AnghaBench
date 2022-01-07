; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propsys.c_test_PropVariantChangeType_LPWSTR.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propsys.c_test_PropVariantChangeType_LPWSTR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }

@VT_NULL = common dso_local global i64 0, align 8
@VT_LPWSTR = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"hr=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@emptyW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@VT_LPSTR = common dso_local global i64 0, align 8
@topic = common dso_local global i32 0, align 4
@topicW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PropVariantChangeType_LPWSTR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PropVariantChangeType_LPWSTR() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @PropVariantInit(%struct.TYPE_8__* %1)
  %5 = load i64, i64* @VT_NULL, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i64 %5, i64* %6, align 8
  %7 = load i64, i64* @VT_LPWSTR, align 8
  %8 = call i64 @PropVariantChangeType(%struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 0, i64 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VT_LPWSTR, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @emptyW, align 4
  %27 = call i32 @lstrcmpW(i8* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @wine_dbgstr_w(i8* %33)
  %35 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = call i32 @PropVariantClear(%struct.TYPE_8__* %1)
  %37 = call i32 @PropVariantClear(%struct.TYPE_8__* %2)
  %38 = load i64, i64* @VT_LPSTR, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* @topic, align 4
  %41 = call i32 @strlen(i32 %40)
  %42 = add nsw i32 %41, 1
  %43 = call i8* @CoTaskMemAlloc(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* @topic, align 4
  %50 = call i32 @strcpy(i8* %48, i32 %49)
  %51 = load i64, i64* @VT_LPWSTR, align 8
  %52 = call i64 @PropVariantChangeType(%struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 0, i64 %51)
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VT_LPWSTR, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* @topicW, align 4
  %71 = call i32 @lstrcmpW(i8* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @wine_dbgstr_w(i8* %77)
  %79 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  %80 = call i32 @PropVariantClear(%struct.TYPE_8__* %1)
  %81 = call i32 @PropVariantClear(%struct.TYPE_8__* %2)
  %82 = load i64, i64* @VT_LPWSTR, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  %84 = load i32, i32* @topicW, align 4
  %85 = call i32 @lstrlenW(i32 %84)
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call i8* @CoTaskMemAlloc(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* @topicW, align 4
  %97 = call i32 @lstrcpyW(i8* %95, i32 %96)
  %98 = load i64, i64* @VT_LPWSTR, align 8
  %99 = call i64 @PropVariantChangeType(%struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 0, i64 %98)
  store i64 %99, i64* %3, align 8
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* @S_OK, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %3, align 8
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %104)
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @VT_LPWSTR, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %112)
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @topicW, align 4
  %118 = call i32 @lstrcmpW(i8* %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @wine_dbgstr_w(i8* %124)
  %126 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %125)
  %127 = call i32 @PropVariantClear(%struct.TYPE_8__* %1)
  %128 = call i32 @PropVariantClear(%struct.TYPE_8__* %2)
  ret void
}

declare dso_local i32 @PropVariantInit(%struct.TYPE_8__*) #1

declare dso_local i64 @PropVariantChangeType(%struct.TYPE_8__*, %struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @lstrcmpW(i8*, i32) #1

declare dso_local i64 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_8__*) #1

declare dso_local i8* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @lstrcpyW(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
