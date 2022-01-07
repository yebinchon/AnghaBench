; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_find_prop_in_property.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_find_prop_in_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"SELECT * FROM `_Property`\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"MsiDatabaseOpenView failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MsiViewExecute failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"wrong size %u\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32)* @find_prop_in_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_prop_in_property(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @MsiDatabaseOpenViewA(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %15, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @MsiViewExecute(i32 %28, i32 0)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @lstrlenA(i32 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %4
  br label %41

41:                                               ; preds = %96, %40
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  br i1 %50, label %51, label %99

51:                                               ; preds = %49
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @MsiViewFetch(i32 %52, i32* %10)
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %99

58:                                               ; preds = %51
  %59 = load i32, i32* @MAX_PATH, align 4
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @MsiRecordGetStringA(i32 %60, i32 1, i32* %20, i32* %14)
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* @ERROR_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @lstrcmpA(i32* %20, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @MAX_PATH, align 4
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @MsiRecordGetStringA(i32 %71, i32 2, i32* %20, i32* %14)
  store i64 %72, i64* %15, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* @ERROR_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @memcmp(i32* %20, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %20, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %14, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  %94 = load i64, i64* @TRUE, align 8
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %87, %81, %76, %69
  br label %96

96:                                               ; preds = %95, %65, %58
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @MsiCloseHandle(i32 %97)
  br label %41

99:                                               ; preds = %57, %49
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @MsiViewClose(i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @MsiCloseHandle(i32 %102)
  %104 = load i64, i64* %11, align 8
  %105 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %105)
  ret i64 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @MsiDatabaseOpenViewA(i32, i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @MsiViewExecute(i32, i32) #2

declare dso_local i32 @lstrlenA(i32) #2

declare dso_local i64 @MsiViewFetch(i32, i32*) #2

declare dso_local i64 @MsiRecordGetStringA(i32, i32, i32*, i32*) #2

declare dso_local i32 @lstrcmpA(i32*, i32) #2

declare dso_local i32 @memcmp(i32*, i32, i32) #2

declare dso_local i32 @MsiCloseHandle(i32) #2

declare dso_local i32 @MsiViewClose(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
