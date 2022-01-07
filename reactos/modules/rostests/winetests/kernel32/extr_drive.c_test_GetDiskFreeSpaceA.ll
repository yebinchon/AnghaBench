; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_drive.c_test_GetDiskFreeSpaceA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_drive.c_test_GetDiskFreeSpaceA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@__const.test_GetDiskFreeSpaceA.drive = private unnamed_addr constant [4 x i8] c"?:\\\00", align 1
@.str = private unnamed_addr constant [28 x i8] c"GetDiskFreeSpaceA error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERROR_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@ERROR_INVALID_NAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"GetDiskFreeSpaceA(\22\22): ret=%d GetLastError=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"GetLogicalDrives error %d\0A\00", align 1
@DRIVE_REMOVABLE = common dso_local global i64 0, align 8
@DRIVE_NO_ROOT_DIR = common dso_local global i64 0, align 8
@ERROR_INVALID_DRIVE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [47 x i8] c"GetDiskFreeSpaceA(%s): ret=%d GetLastError=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"GetDiskFreeSpaceA(%s) failed with %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"total clusters is %d > 65535\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"GetDiskFreeSpaceExA(%s) failed with %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [90 x i8] c"GetDiskFreeSpaceA should report at least as much bytes on disk %s as GetDiskFreeSpaceExA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetDiskFreeSpaceA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetDiskFreeSpaceA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = bitcast [4 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_GetDiskFreeSpaceA.drive, i32 0, i32 0), i64 4, i1 false)
  %13 = call i32 @GetDiskFreeSpaceA(i8* null, i32* %2, i32* %3, i32* %4, i32* %5)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i64 (...) @GetLastError()
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = call i32 @GetDiskFreeSpaceA(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* %2, i32* %3, i32* %4, i32* %5)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %0
  %21 = call i64 (...) @GetLastError()
  %22 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = call i64 (...) @GetLastError()
  %26 = load i64, i64* @ERROR_INVALID_NAME, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ true, %20 ], [ %27, %24 ]
  br label %30

30:                                               ; preds = %28, %0
  %31 = phi i1 [ false, %0 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %1, align 4
  %34 = call i64 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %33, i64 %34)
  %36 = call i32 @GetDiskFreeSpaceA(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %2, i32* %3, i32* %4, i32* %5)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i64 (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = call i32 @GetDiskFreeSpaceA(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %2, i32* %3, i32* %4, i32* %5)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i64 (...) @GetLastError()
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = call i32 (...) @GetLogicalDrives()
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 (...) @GetLastError()
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %48)
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 65, i8* %50, align 1
  br label %51

51:                                               ; preds = %148, %30
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 90
  br i1 %55, label %56, label %152

56:                                               ; preds = %51
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %58 = call i64 @GetDriveTypeA(i8* %57)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @DRIVE_REMOVABLE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %145

62:                                               ; preds = %56
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @DRIVE_NO_ROOT_DIR, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %145

66:                                               ; preds = %62
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %68 = call i32 @GetDiskFreeSpaceA(i8* %67, i32* %2, i32* %3, i32* %4, i32* %5)
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %1, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %72
  %76 = call i64 (...) @GetLastError()
  %77 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = call i64 (...) @GetLastError()
  %81 = load i64, i64* @ERROR_INVALID_DRIVE, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i1 [ true, %75 ], [ %82, %79 ]
  br label %85

85:                                               ; preds = %83, %72
  %86 = phi i1 [ false, %72 ], [ %84, %83 ]
  %87 = zext i1 %86 to i32
  %88 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %89 = load i32, i32* %1, align 4
  %90 = call i64 (...) @GetLastError()
  %91 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %88, i32 %89, i64 %90)
  br label %144

92:                                               ; preds = %66
  %93 = load i32, i32* %1, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %97 = call i64 (...) @GetLastError()
  %98 = call i32 @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %96, i64 %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = call i32 (...) @GetVersion()
  %101 = and i32 %100, -2147483648
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, i32* %5, align 4
  %105 = icmp sle i32 %104, 65535
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %107)
  br label %143

109:                                              ; preds = %99
  br i1 true, label %110, label %142

110:                                              ; preds = %109
  %111 = load i32, i32* %2, align 4
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %3, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %5, align 4
  %118 = mul nsw i32 %116, %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %121 = call i32 @pGetDiskFreeSpaceExA(i8* %120, %struct.TYPE_4__* %11, %struct.TYPE_4__* %9, i32* null)
  store i32 %121, i32* %1, align 4
  %122 = load i32, i32* %1, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %110
  %125 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %126 = call i64 (...) @GetLastError()
  %127 = call i32 @trace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %125, i64 %126)
  br label %128

128:                                              ; preds = %124, %110
  %129 = load i32, i32* %3, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp sle i32 %133, %135
  br label %137

137:                                              ; preds = %131, %128
  %138 = phi i1 [ true, %128 ], [ %136, %131 ]
  %139 = zext i1 %138 to i32
  %140 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.10, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %137, %109
  br label %143

143:                                              ; preds = %142, %103
  br label %144

144:                                              ; preds = %143, %85
  br label %145

145:                                              ; preds = %144, %62, %56
  %146 = load i32, i32* %7, align 4
  %147 = ashr i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = add i8 %150, 1
  store i8 %151, i8* %149, align 1
  br label %51

152:                                              ; preds = %51
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetDiskFreeSpaceA(i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @GetLogicalDrives(...) #2

declare dso_local i64 @GetDriveTypeA(i8*) #2

declare dso_local i32 @trace(i8*, i8*, i64) #2

declare dso_local i32 @GetVersion(...) #2

declare dso_local i32 @pGetDiskFreeSpaceExA(i8*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
