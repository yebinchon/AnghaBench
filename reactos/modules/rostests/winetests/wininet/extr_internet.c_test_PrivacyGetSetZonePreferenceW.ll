; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_PrivacyGetSetZonePreferenceW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_PrivacyGetSetZonePreferenceW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"expected ret == 0, got %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"template %u\0A\00", align 1
@PRIVACY_TEMPLATE_ADVANCED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"expected template == 5, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PrivacyGetSetZonePreferenceW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PrivacyGetSetZonePreferenceW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i32], align 16
  store i32 0, i32* %6, align 4
  store i32 3, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @pPrivacyGetZonePreferenceW(i32 %8, i32 %9, i32* null, i32* null, i32* null)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @pPrivacyGetZonePreferenceW(i32 %16, i32 %17, i32* %5, i32* null, i32* null)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PRIVACY_TEMPLATE_ADVANCED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %0
  store i32 256, i32* %6, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %3, align 4
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %33 = call i32 @pPrivacyGetZonePreferenceW(i32 %30, i32 %31, i32* %5, i32* %32, i32* %6)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %29, %0
  store i32 5, i32* %4, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @pPrivacySetZonePreferenceW(i32 %40, i32 %41, i32 %42, i32* null)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 0, i32* %4, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @pPrivacyGetZonePreferenceW(i32 %49, i32 %50, i32* %4, i32* null, i32* null)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 5
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i32 5, i32* %4, align 4
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %39
  %68 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  br label %70

69:                                               ; preds = %39
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32* [ %68, %67 ], [ null, %69 ]
  %72 = call i32 @pPrivacySetZonePreferenceW(i32 %62, i32 %63, i32 %64, i32* %71)
  store i32 %72, i32* %1, align 4
  %73 = load i32, i32* %1, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %1, align 4
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %76)
  ret void
}

declare dso_local i32 @pPrivacyGetZonePreferenceW(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @pPrivacySetZonePreferenceW(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
