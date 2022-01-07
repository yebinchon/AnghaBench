; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_drive.c_test_GetDriveTypeW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_drive.c_test_GetDriveTypeW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_GetDriveTypeW.drive = private unnamed_addr constant [4 x i8] c"?:\\\00", align 1
@.str = private unnamed_addr constant [27 x i8] c"GetLogicalDrives error %d\0A\00", align 1
@DRIVE_UNKNOWN = common dso_local global i8 0, align 1
@DRIVE_RAMDISK = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"not a valid drive %c: type %u\0A\00", align 1
@DRIVE_NO_ROOT_DIR = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"GetDriveTypeW should return DRIVE_NO_ROOT_DIR for inexistent drive %c: but not %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"No drives found, skipping drive spec format tests.\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"got %u for drive spec '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetDriveTypeW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetDriveTypeW() #0 {
  %1 = alloca [4 x i8], align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = bitcast [4 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_GetDriveTypeW.drive, i32 0, i32 0), i64 4, i1 false)
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

14:                                               ; preds = %69, %0
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sle i32 %17, 90
  br i1 %18, label %19, label %73

19:                                               ; preds = %14
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %21 = call signext i8 @GetDriveTypeW(i8* %20)
  store i8 %21, i8* %4, align 1
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* @DRIVE_UNKNOWN, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i8, i8* %4, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* @DRIVE_RAMDISK, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %29, %31
  br label %33

33:                                               ; preds = %27, %19
  %34 = phi i1 [ false, %19 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = load i8, i8* %4, align 1
  %39 = sext i8 %38 to i32
  %40 = call i32 (i32, i8*, i8, ...) @ok(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8 signext %37, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %33
  %45 = load i8, i8* %4, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* @DRIVE_NO_ROOT_DIR, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = load i8, i8* %4, align 1
  %54 = sext i8 %53 to i32
  %55 = call i32 (i32, i8*, i8, ...) @ok(i32 %50, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i8 signext %52, i32 %54)
  br label %66

56:                                               ; preds = %33
  %57 = load i8, i8* %4, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* @DRIVE_NO_ROOT_DIR, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %2, align 1
  br label %65

65:                                               ; preds = %62, %56
  br label %66

66:                                               ; preds = %65, %44
  %67 = load i32, i32* %3, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = add i8 %71, 1
  store i8 %72, i8* %70, align 1
  br label %14

73:                                               ; preds = %14
  %74 = load i8, i8* %2, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = call i32 @skip(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %159

78:                                               ; preds = %73
  %79 = load i8, i8* %2, align 1
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 %79, i8* %80, align 1
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  store i8 0, i8* %81, align 1
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %83 = call signext i8 @GetDriveTypeW(i8* %82)
  store i8 %83, i8* %4, align 1
  %84 = load i8, i8* %4, align 1
  %85 = sext i8 %84 to i32
  %86 = load i8, i8* @DRIVE_NO_ROOT_DIR, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %78
  %90 = load i8, i8* %4, align 1
  %91 = sext i8 %90 to i32
  %92 = load i8, i8* @DRIVE_RAMDISK, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sle i32 %91, %93
  br label %95

95:                                               ; preds = %89, %78
  %96 = phi i1 [ false, %78 ], [ %94, %89 ]
  %97 = zext i1 %96 to i32
  %98 = load i8, i8* %4, align 1
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %100 = call signext i8 @wine_dbgstr_w(i8* %99)
  %101 = sext i8 %100 to i32
  %102 = call i32 (i32, i8*, i8, ...) @ok(i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 signext %98, i32 %101)
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  store i8 63, i8* %103, align 1
  %104 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %105 = call signext i8 @GetDriveTypeW(i8* %104)
  store i8 %105, i8* %4, align 1
  %106 = load i8, i8* %4, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* @DRIVE_NO_ROOT_DIR, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %107, %109
  %111 = zext i1 %110 to i32
  %112 = load i8, i8* %4, align 1
  %113 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %114 = call signext i8 @wine_dbgstr_w(i8* %113)
  %115 = sext i8 %114 to i32
  %116 = call i32 (i32, i8*, i8, ...) @ok(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 signext %112, i32 %115)
  %117 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  store i8 0, i8* %117, align 1
  %118 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %119 = call signext i8 @GetDriveTypeW(i8* %118)
  store i8 %119, i8* %4, align 1
  %120 = load i8, i8* %4, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8, i8* @DRIVE_NO_ROOT_DIR, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  %125 = zext i1 %124 to i32
  %126 = load i8, i8* %4, align 1
  %127 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %128 = call signext i8 @wine_dbgstr_w(i8* %127)
  %129 = sext i8 %128 to i32
  %130 = call i32 (i32, i8*, i8, ...) @ok(i32 %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 signext %126, i32 %129)
  %131 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 63, i8* %131, align 1
  %132 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %133 = call signext i8 @GetDriveTypeW(i8* %132)
  store i8 %133, i8* %4, align 1
  %134 = load i8, i8* %4, align 1
  %135 = sext i8 %134 to i32
  %136 = load i8, i8* @DRIVE_NO_ROOT_DIR, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %135, %137
  %139 = zext i1 %138 to i32
  %140 = load i8, i8* %4, align 1
  %141 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %142 = call signext i8 @wine_dbgstr_w(i8* %141)
  %143 = sext i8 %142 to i32
  %144 = call i32 (i32, i8*, i8, ...) @ok(i32 %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 signext %140, i32 %143)
  %145 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %145, align 1
  %146 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %147 = call signext i8 @GetDriveTypeW(i8* %146)
  store i8 %147, i8* %4, align 1
  %148 = load i8, i8* %4, align 1
  %149 = sext i8 %148 to i32
  %150 = load i8, i8* @DRIVE_NO_ROOT_DIR, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %149, %151
  %153 = zext i1 %152 to i32
  %154 = load i8, i8* %4, align 1
  %155 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %156 = call signext i8 @wine_dbgstr_w(i8* %155)
  %157 = sext i8 %156 to i32
  %158 = call i32 (i32, i8*, i8, ...) @ok(i32 %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 signext %154, i32 %157)
  br label %159

159:                                              ; preds = %95, %76
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetLogicalDrives(...) #2

declare dso_local i32 @ok(i32, i8*, i8 signext, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local signext i8 @GetDriveTypeW(i8*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local signext i8 @wine_dbgstr_w(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
