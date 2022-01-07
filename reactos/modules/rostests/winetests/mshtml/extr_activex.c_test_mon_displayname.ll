; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_activex.c_test_mon_displayname.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_activex.c_test_mon_displayname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"GetDisplayName failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"display_name = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"IsSystemMoniker failed: %08x\0A\00", align 1
@MKSYS_URLMONIKER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"mksys = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @test_mon_displayname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mon_displayname(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @IMoniker_GetDisplayName(i32* %10, i32* null, i32* null, i32* %7)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcmp_wa(i32 %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strcmp_wa(i32 %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @broken(i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %3
  %37 = phi i1 [ true, %3 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @wine_dbgstr_w(i32 %39)
  %41 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @CoTaskMemFree(i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @IMoniker_IsSystemMoniker(i32* %44, i64* %8)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @MKSYS_URLMONIKER, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  ret void
}

declare dso_local i64 @IMoniker_GetDisplayName(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @strcmp_wa(i32, i8*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @wine_dbgstr_w(i32) #1

declare dso_local i32 @CoTaskMemFree(i32) #1

declare dso_local i64 @IMoniker_IsSystemMoniker(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
