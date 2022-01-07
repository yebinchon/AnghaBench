; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propsys.c_test_PropVariantToStringAlloc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propsys.c_test_PropVariantToStringAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@VT_NULL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"returned %x\0A\00", align 1
@emptyW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@VT_LPSTR = common dso_local global i32 0, align 4
@topic = common dso_local global i32 0, align 4
@topicW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PropVariantToStringAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PropVariantToStringAlloc() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @VT_NULL, align 4
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  %6 = call i64 @PropVariantToStringAlloc(%struct.TYPE_6__* %1, i32** %2)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @emptyW, align 4
  %15 = call i32 @lstrcmpW(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @wine_dbgstr_w(i32* %19)
  %21 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @CoTaskMemFree(i32* %22)
  %24 = load i32, i32* @VT_LPSTR, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @topic, align 4
  %27 = call i64 @strlen(i32 %26)
  %28 = add nsw i64 %27, 1
  %29 = call i32 @CoTaskMemAlloc(i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @topic, align 4
  %36 = call i32 @strcpy(i32 %34, i32 %35)
  %37 = call i64 @PropVariantToStringAlloc(%struct.TYPE_6__* %1, i32** %2)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @topicW, align 4
  %46 = call i32 @lstrcmpW(i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load i32*, i32** %2, align 8
  %51 = call i64 @wine_dbgstr_w(i32* %50)
  %52 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @CoTaskMemFree(i32* %53)
  %55 = call i32 @PropVariantClear(%struct.TYPE_6__* %1)
  ret void
}

declare dso_local i64 @PropVariantToStringAlloc(%struct.TYPE_6__*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @lstrcmpW(i32*, i32) #1

declare dso_local i64 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @CoTaskMemAlloc(i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
