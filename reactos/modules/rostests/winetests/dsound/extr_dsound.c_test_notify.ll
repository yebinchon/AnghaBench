; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_test_notify.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_test_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"IDirectSoundBuffer_SetCurrentPosition failed %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"IDirectSoundBuffer_Play failed %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"IDirectSoundBuffer_Stop failed %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"expected %d. got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32, i64)* @test_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_notify(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @IDirectSoundBuffer_SetCurrentPosition(i32 %12, i32 0)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @DS_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %10, align 8
  %19 = call i32 (i32, i8*, i64, ...) @ok(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @DS_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %5, align 8
  br label %66

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @IDirectSoundBuffer_Play(i32 %26, i32 0, i32 0, i32 0)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @DS_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %10, align 8
  %33 = call i32 (i32, i8*, i64, ...) @ok(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @DS_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %5, align 8
  br label %66

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @IDirectSoundBuffer_Stop(i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @DS_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %10, align 8
  %47 = call i32 (i32, i8*, i64, ...) @ok(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @DS_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %5, align 8
  br label %66

53:                                               ; preds = %39
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i64 @WaitForMultipleObjects(i64 %54, i32 %55, i32 %56, i32 0)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 (i32, i8*, i64, ...) @ok(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %62, i64 %63)
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %53, %51, %37, %23
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i64 @IDirectSoundBuffer_SetCurrentPosition(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @IDirectSoundBuffer_Play(i32, i32, i32, i32) #1

declare dso_local i64 @IDirectSoundBuffer_Stop(i32) #1

declare dso_local i64 @WaitForMultipleObjects(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
