; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_query_dos_deviceA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_query_dos_deviceA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_query_dos_deviceA.drivestr = private unnamed_addr constant [3 x i8] c"a:\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"QueryDosDeviceA(no buffer): returned %u, le=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"QueryDosDeviceA failed to return list, last error %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"QueryDosDeviceA failed to return current mapping for %s, last error %u\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"HARDDISK\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"RAMDISK\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [65 x i8] c"expected at least one devicename to contain HARDDISK or RAMDISK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_dos_deviceA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_dos_deviceA() #0 {
  %1 = alloca [3 x i8], align 1
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [2000 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast [3 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.test_query_dos_deviceA.drivestr, i32 0, i32 0), i64 3, i1 false)
  store i32 32768, i32* %7, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %8, align 4
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = call i32 @QueryDosDeviceA(i8* null, i8* null, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %0
  %16 = call i64 (...) @GetLastError()
  %17 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %0
  %20 = phi i1 [ false, %0 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %5, align 4
  %23 = call i64 (...) @GetLastError()
  %24 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %23)
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @HeapAlloc(i32 %25, i32 0, i32 %26)
  store i8* %27, i8** %3, align 8
  %28 = call i32 @SetLastError(i32 -559038737)
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @QueryDosDeviceA(i8* null, i8* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = call i64 (...) @GetLastError()
  %36 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %37 = icmp ne i64 %35, %36
  br label %38

38:                                               ; preds = %34, %19
  %39 = phi i1 [ false, %19 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %38
  %46 = call i64 (...) @GetLastError()
  %47 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %45
  %50 = load i8*, i8** %3, align 8
  store i8* %50, i8** %2, align 8
  br label %51

51:                                               ; preds = %78, %49
  %52 = load i8*, i8** %2, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %79

56:                                               ; preds = %51
  %57 = load i8*, i8** %2, align 8
  %58 = getelementptr inbounds [2000 x i8], [2000 x i8]* %4, i64 0, i64 0
  %59 = call i32 @QueryDosDeviceA(i8* %57, i8* %58, i32 2000)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i8*, i8** %2, align 8
  %62 = call i64 (...) @GetLastError()
  %63 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i8* %61, i64 %62)
  %64 = load i8*, i8** %2, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = add nsw i64 %65, 1
  %67 = load i8*, i8** %2, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = load i8*, i8** %2, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = icmp sle i64 %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %56
  br label %79

78:                                               ; preds = %56
  br label %51

79:                                               ; preds = %77, %55
  br label %80

80:                                               ; preds = %79, %45, %38
  br label %81

81:                                               ; preds = %132, %80
  %82 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sle i32 %84, 122
  br i1 %85, label %86, label %136

86:                                               ; preds = %81
  %87 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %89, 1
  %91 = call i32 @QueryDosDeviceA(i8* %87, i8* %88, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %86
  %95 = call i64 (...) @GetLastError()
  %96 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %97 = icmp eq i64 %95, %96
  br label %98

98:                                               ; preds = %94, %86
  %99 = phi i1 [ true, %86 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  %101 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %102 = call i64 (...) @GetLastError()
  %103 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i8* %101, i64 %102)
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %98
  %107 = load i8*, i8** %3, align 8
  store i8* %107, i8** %2, align 8
  br label %108

108:                                              ; preds = %117, %106
  %109 = load i8*, i8** %2, align 8
  %110 = load i8, i8* %109, align 1
  %111 = icmp ne i8 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i8*, i8** %2, align 8
  %114 = load i8, i8* %113, align 1
  %115 = call signext i8 @toupper(i8 signext %114)
  %116 = load i8*, i8** %2, align 8
  store i8 %115, i8* %116, align 1
  br label %117

117:                                              ; preds = %112
  %118 = load i8*, i8** %2, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %2, align 8
  br label %108

120:                                              ; preds = %108
  %121 = load i8*, i8** %3, align 8
  %122 = call i64 @strstr(i8* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i8*, i8** %3, align 8
  %126 = call i64 @strstr(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124, %120
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %128, %124
  br label %131

131:                                              ; preds = %130, %98
  br label %132

132:                                              ; preds = %131
  %133 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = add i8 %134, 1
  store i8 %135, i8* %133, align 1
  br label %81

136:                                              ; preds = %81
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  %139 = call i32 (...) @GetProcessHeap()
  %140 = load i8*, i8** %3, align 8
  %141 = call i32 @HeapFree(i32 %139, i32 0, i8* %140)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @QueryDosDeviceA(i8*, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local signext i8 @toupper(i8 signext) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
