; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/sfc/extr_SfcIsFileProtected.c_Test_ProtectedFiles.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/sfc/extr_SfcIsFileProtected.c_Test_ProtectedFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i64 }
%struct.TYPE_9__ = type { i64, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@tests = common dso_local global %struct.TYPE_10__* null, align 8
@g_WinVersion = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"[%lu,0x%04lx]: Failed: %S\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"[%lu,0x%04lx]: Succeeded: %S\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_ProtectedFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_ProtectedFiles() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = mul nsw i32 %5, 3
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca %struct.TYPE_10__, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  store i64 0, i64* %1, align 8
  br label %10

10:                                               ; preds = %71, %0
  %11 = load i64, i64* %1, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tests, align 8
  %13 = call i64 @_countof(%struct.TYPE_10__* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %74

15:                                               ; preds = %10
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tests, align 8
  %17 = load i64, i64* %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tests, align 8
  %24 = load i64, i64* %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @_countof(%struct.TYPE_10__* %9)
  %29 = call i32 @ExpandEnvironmentStringsW(i32 %27, %struct.TYPE_10__* %9, i64 %28)
  br label %38

30:                                               ; preds = %15
  %31 = call i64 @_countof(%struct.TYPE_10__* %9)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tests, align 8
  %33 = load i64, i64* %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @StringCchCopyW(%struct.TYPE_10__* %9, i64 %31, i32 %36)
  br label %38

38:                                               ; preds = %30, %22
  %39 = call i32 @SfcIsFileProtected(i32* null, %struct.TYPE_10__* %9)
  store i32 %39, i32* %2, align 4
  %40 = load i64, i64* @g_WinVersion, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tests, align 8
  %42 = load i64, i64* %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %40, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %38
  %49 = load i64, i64* @g_WinVersion, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tests, align 8
  %51 = load i64, i64* %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %49, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i32, i32* %2, align 4
  %59 = load i64, i64* %1, align 8
  %60 = load i64, i64* @g_WinVersion, align 8
  %61 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %60, %struct.TYPE_10__* %9)
  br label %70

62:                                               ; preds = %48, %38
  %63 = load i32, i32* %2, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %1, align 8
  %68 = load i64, i64* @g_WinVersion, align 8
  %69 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %67, i64 %68, %struct.TYPE_10__* %9)
  br label %70

70:                                               ; preds = %62, %57
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %1, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %1, align 8
  br label %10

74:                                               ; preds = %10
  %75 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %75)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @_countof(%struct.TYPE_10__*) #2

declare dso_local i32 @ExpandEnvironmentStringsW(i32, %struct.TYPE_10__*, i64) #2

declare dso_local i32 @StringCchCopyW(%struct.TYPE_10__*, i64, i32) #2

declare dso_local i32 @SfcIsFileProtected(i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @ok(i32, i8*, i64, i64, %struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
