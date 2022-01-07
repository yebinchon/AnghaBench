; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmllocation.c_test_hash.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmllocation.c_test_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.location_test = type { i64, i32 }

@E_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"%s: get_hash should have failed with E_POINTER (0x%08x), was: 0x%08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: get_hash failed: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: expected retrieved hash to be L\22%s\22, was: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.location_test*)* @test_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hash(i32* %0, %struct.location_test* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.location_test*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.location_test* %1, %struct.location_test** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @IHTMLLocation_get_hash(i32* %7, i32* null)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @E_POINTER, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load %struct.location_test*, %struct.location_test** %4, align 8
  %14 = getelementptr inbounds %struct.location_test, %struct.location_test* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* @E_POINTER, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %12, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %16, i64 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @IHTMLLocation_get_hash(i32* %19, i32* %6)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load %struct.location_test*, %struct.location_test** %4, align 8
  %26 = getelementptr inbounds %struct.location_test, %struct.location_test* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %27, i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.location_test*, %struct.location_test** %4, align 8
  %36 = getelementptr inbounds %struct.location_test, %struct.location_test* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @str_eq_wa(i32 %34, i64 %37)
  %39 = load %struct.location_test*, %struct.location_test** %4, align 8
  %40 = getelementptr inbounds %struct.location_test, %struct.location_test* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.location_test*, %struct.location_test** %4, align 8
  %43 = getelementptr inbounds %struct.location_test, %struct.location_test* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @wine_dbgstr_w(i32 %45)
  %47 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %41, i64 %44, i64 %46)
  br label %48

48:                                               ; preds = %33, %2
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @SysFreeString(i32 %49)
  ret void
}

declare dso_local i64 @IHTMLLocation_get_hash(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @str_eq_wa(i32, i64) #1

declare dso_local i64 @wine_dbgstr_w(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
