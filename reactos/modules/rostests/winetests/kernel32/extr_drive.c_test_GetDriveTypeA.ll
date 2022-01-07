; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_drive.c_test_GetDriveTypeA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_drive.c_test_GetDriveTypeA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_GetDriveTypeA.drive = private unnamed_addr constant [4 x i8] c"?:\\\00", align 1
@.str = private unnamed_addr constant [27 x i8] c"GetLogicalDrives error %d\0A\00", align 1
@DRIVE_UNKNOWN = common dso_local global i32 0, align 4
@DRIVE_RAMDISK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"not a valid drive %c: type %u\0A\00", align 1
@DRIVE_NO_ROOT_DIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"GetDriveTypeA should return DRIVE_NO_ROOT_DIR for inexistent drive %c: but not %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"No drives found, skipping drive spec format tests.\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"got %u for drive spec '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetDriveTypeA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetDriveTypeA() #0 {
  %1 = alloca [4 x i8], align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast [4 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_GetDriveTypeA.drive, i32 0, i32 0), i64 4, i1 false)
  store i8 0, i8* %2, align 1
  %6 = call i32 (...) @GetLogicalDrives()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 (...) @GetLastError()
  %11 = trunc i32 %10 to i8
  %12 = call i32 (i32, i8*, i8, ...) @ok(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 signext %11)
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 65, i8* %13, align 1
  br label %14

14:                                               ; preds = %59, %0
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sle i32 %17, 90
  br i1 %18, label %19, label %63

19:                                               ; preds = %14
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %21 = call i32 @GetDriveTypeA(i8* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @DRIVE_UNKNOWN, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DRIVE_RAMDISK, align 4
  %28 = icmp sle i32 %26, %27
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i1 [ false, %19 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (i32, i8*, i8, ...) @ok(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8 signext %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @DRIVE_NO_ROOT_DIR, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i32, i8*, i8, ...) @ok(i32 %43, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i8 signext %45, i32 %46)
  br label %56

48:                                               ; preds = %29
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @DRIVE_NO_ROOT_DIR, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %2, align 1
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i32, i32* %3, align 4
  %58 = ashr i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = add i8 %61, 1
  store i8 %62, i8* %60, align 1
  br label %14

63:                                               ; preds = %14
  %64 = load i8, i8* %2, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = call i32 @skip(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %132

68:                                               ; preds = %63
  %69 = load i8, i8* %2, align 1
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 %69, i8* %70, align 1
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  store i8 0, i8* %71, align 1
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %73 = call i32 @GetDriveTypeA(i8* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @DRIVE_NO_ROOT_DIR, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @DRIVE_RAMDISK, align 4
  %80 = icmp sle i32 %78, %79
  br label %81

81:                                               ; preds = %77, %68
  %82 = phi i1 [ false, %68 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %4, align 4
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %87 = call i32 (i32, i8*, i8, ...) @ok(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 signext %85, i8* %86)
  %88 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  store i8 63, i8* %88, align 1
  %89 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %90 = call i32 @GetDriveTypeA(i8* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @DRIVE_NO_ROOT_DIR, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %4, align 4
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %98 = call i32 (i32, i8*, i8, ...) @ok(i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 signext %96, i8* %97)
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  store i8 0, i8* %99, align 1
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %101 = call i32 @GetDriveTypeA(i8* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @DRIVE_NO_ROOT_DIR, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %4, align 4
  %107 = trunc i32 %106 to i8
  %108 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %109 = call i32 (i32, i8*, i8, ...) @ok(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 signext %107, i8* %108)
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 63, i8* %110, align 1
  %111 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %112 = call i32 @GetDriveTypeA(i8* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @DRIVE_NO_ROOT_DIR, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %4, align 4
  %118 = trunc i32 %117 to i8
  %119 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %120 = call i32 (i32, i8*, i8, ...) @ok(i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 signext %118, i8* %119)
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %121, align 1
  %122 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %123 = call i32 @GetDriveTypeA(i8* %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @DRIVE_NO_ROOT_DIR, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %4, align 4
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %131 = call i32 (i32, i8*, i8, ...) @ok(i32 %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 signext %129, i8* %130)
  br label %132

132:                                              ; preds = %81, %66
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetLogicalDrives(...) #2

declare dso_local i32 @ok(i32, i8*, i8 signext, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @GetDriveTypeA(i8*) #2

declare dso_local i32 @skip(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
