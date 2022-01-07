; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_rosperf.c_PrintOSVersion.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_rosperf.c_PrintOSVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i32] [i32 82, i32 101, i32 97, i32 99, i32 116, i32 79, i32 83, i32 0], align 4
@.str.1 = private unnamed_addr constant [15 x i32] [i32 82, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 32, i32 111, i32 110, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [43 x i32] [i32 82, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 32, i32 111, i32 110, i32 32, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 32, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 50, i32 48, i32 48, i32 51, i32 44, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [33 x i32] [i32 82, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 32, i32 111, i32 110, i32 32, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 32, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 88, i32 80, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [35 x i32] [i32 82, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 32, i32 111, i32 110, i32 32, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 32, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 50, i32 48, i32 48, i32 48, i32 32, i32 0], align 4
@.str.5 = private unnamed_addr constant [33 x i32] [i32 82, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 32, i32 111, i32 110, i32 32, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 32, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 78, i32 84, i32 32, i32 0], align 4
@VER_NT_WORKSTATION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i32] [i32 87, i32 111, i32 114, i32 107, i32 115, i32 116, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 52, i32 46, i32 48, i32 32, i32 0], align 4
@VER_SUITE_PERSONAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i32] [i32 72, i32 111, i32 109, i32 101, i32 32, i32 69, i32 100, i32 105, i32 116, i32 105, i32 111, i32 110, i32 32, i32 0], align 4
@.str.8 = private unnamed_addr constant [14 x i32] [i32 80, i32 114, i32 111, i32 102, i32 101, i32 115, i32 115, i32 105, i32 111, i32 110, i32 97, i32 108, i32 32, i32 0], align 4
@VER_NT_SERVER = common dso_local global i32 0, align 4
@VER_NT_DOMAIN_CONTROLLER = common dso_local global i32 0, align 4
@VER_SUITE_DATACENTER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i32] [i32 68, i32 97, i32 116, i32 97, i32 99, i32 101, i32 110, i32 116, i32 101, i32 114, i32 32, i32 69, i32 100, i32 105, i32 116, i32 105, i32 111, i32 110, i32 32, i32 0], align 4
@VER_SUITE_ENTERPRISE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i32] [i32 69, i32 110, i32 116, i32 101, i32 114, i32 112, i32 114, i32 105, i32 115, i32 101, i32 32, i32 69, i32 100, i32 105, i32 116, i32 105, i32 111, i32 110, i32 32, i32 0], align 4
@VER_SUITE_BLADE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i32] [i32 87, i32 101, i32 98, i32 32, i32 69, i32 100, i32 105, i32 116, i32 105, i32 111, i32 110, i32 32, i32 0], align 4
@.str.12 = private unnamed_addr constant [18 x i32] [i32 83, i32 116, i32 97, i32 110, i32 100, i32 97, i32 114, i32 100, i32 32, i32 69, i32 100, i32 105, i32 116, i32 105, i32 111, i32 110, i32 32, i32 0], align 4
@.str.13 = private unnamed_addr constant [19 x i32] [i32 68, i32 97, i32 116, i32 97, i32 99, i32 101, i32 110, i32 116, i32 101, i32 114, i32 32, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 0], align 4
@.str.14 = private unnamed_addr constant [17 x i32] [i32 65, i32 100, i32 118, i32 97, i32 110, i32 99, i32 101, i32 100, i32 32, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 0], align 4
@.str.15 = private unnamed_addr constant [8 x i32] [i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 0], align 4
@.str.16 = private unnamed_addr constant [32 x i32] [i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 52, i32 46, i32 48, i32 44, i32 32, i32 69, i32 110, i32 116, i32 101, i32 114, i32 112, i32 114, i32 105, i32 115, i32 101, i32 32, i32 69, i32 100, i32 105, i32 116, i32 105, i32 111, i32 110, i32 32, i32 0], align 4
@.str.17 = private unnamed_addr constant [12 x i32] [i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 52, i32 46, i32 48, i32 32, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [48 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 92, i32 80, i32 114, i32 111, i32 100, i32 117, i32 99, i32 116, i32 79, i32 112, i32 116, i32 105, i32 111, i32 110, i32 115, i32 0], align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i32] [i32 80, i32 114, i32 111, i32 100, i32 117, i32 99, i32 116, i32 84, i32 121, i32 112, i32 101, i32 0], align 4
@.str.20 = private unnamed_addr constant [6 x i32] [i32 87, i32 73, i32 78, i32 78, i32 84, i32 0], align 4
@.str.21 = private unnamed_addr constant [13 x i32] [i32 87, i32 111, i32 114, i32 107, i32 115, i32 116, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 0], align 4
@.str.22 = private unnamed_addr constant [9 x i32] [i32 76, i32 65, i32 78, i32 77, i32 65, i32 78, i32 78, i32 84, i32 0], align 4
@.str.23 = private unnamed_addr constant [9 x i32] [i32 83, i32 69, i32 82, i32 86, i32 69, i32 82, i32 78, i32 84, i32 0], align 4
@.str.24 = private unnamed_addr constant [7 x i32] [i32 37, i32 100, i32 46, i32 37, i32 100, i32 32, i32 0], align 4
@.str.25 = private unnamed_addr constant [15 x i32] [i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 80, i32 97, i32 99, i32 107, i32 32, i32 54, i32 0], align 4
@.str.26 = private unnamed_addr constant [60 x i32] [i32 83, i32 79, i32 70, i32 84, i32 87, i32 65, i32 82, i32 69, i32 92, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 92, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 78, i32 84, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 92, i32 72, i32 111, i32 116, i32 102, i32 105, i32 120, i32 92, i32 81, i32 50, i32 52, i32 54, i32 48, i32 48, i32 57, i32 0], align 4
@.str.27 = private unnamed_addr constant [28 x i32] [i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 80, i32 97, i32 99, i32 107, i32 32, i32 54, i32 97, i32 32, i32 40, i32 66, i32 117, i32 105, i32 108, i32 100, i32 32, i32 37, i32 100, i32 41, i32 10, i32 0], align 4
@.str.28 = private unnamed_addr constant [15 x i32] [i32 37, i32 115, i32 32, i32 40, i32 66, i32 117, i32 105, i32 108, i32 100, i32 32, i32 37, i32 100, i32 41, i32 10, i32 0], align 4
@.str.29 = private unnamed_addr constant [33 x i32] [i32 82, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 32, i32 111, i32 110, i32 32, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 32, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 57, i32 53, i32 32, i32 0], align 4
@.str.30 = private unnamed_addr constant [5 x i32] [i32 79, i32 83, i32 82, i32 50, i32 0], align 4
@.str.31 = private unnamed_addr constant [33 x i32] [i32 82, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 32, i32 111, i32 110, i32 32, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 32, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 57, i32 56, i32 32, i32 0], align 4
@.str.32 = private unnamed_addr constant [3 x i32] [i32 83, i32 69, i32 0], align 4
@.str.33 = private unnamed_addr constant [48 x i32] [i32 82, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 32, i32 111, i32 110, i32 32, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 32, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 77, i32 105, i32 108, i32 108, i32 101, i32 110, i32 110, i32 105, i32 117, i32 109, i32 32, i32 69, i32 100, i32 105, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.34 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.35 = private unnamed_addr constant [29 x i32] [i32 82, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 32, i32 111, i32 110, i32 32, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 32, i32 87, i32 105, i32 110, i32 51, i32 50, i32 115, i32 10, i32 0], align 4
@BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PrintOSVersion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintOSVersion() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca [160 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = call i32 @ZeroMemory(%struct.TYPE_3__* %1, i32 40)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 40, i32* %10, align 8
  %11 = bitcast %struct.TYPE_3__* %1 to i32*
  %12 = call i64 @GetVersionExW(i32* %11)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 4, i32* %16, align 8
  %17 = bitcast %struct.TYPE_3__* %1 to i32*
  %18 = call i64 @GetVersionExW(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %353

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @wcslen(i8* %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %31 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sub i64 8, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ule i32 7, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %22
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @_wcsnicmp(i8* %42, i8* bitcast ([8 x i32]* @.str to i8*), i32 7)
  %44 = icmp eq i64 0, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 (i8*, ...) @wprintf(i8* bitcast ([15 x i32]* @.str.1 to i8*), i8* %46)
  br label %353

48:                                               ; preds = %41, %22
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %353 [
    i32 130, label %51
    i32 129, label %292
    i32 128, label %351
  ]

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 5, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 2, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 (i8*, ...) @wprintf(i8* bitcast ([43 x i32]* @.str.2 to i8*))
  br label %90

61:                                               ; preds = %55, %51
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 5, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 1, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @wprintf(i8* bitcast ([33 x i32]* @.str.3 to i8*))
  br label %89

71:                                               ; preds = %65, %61
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 5, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 0, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 (i8*, ...) @wprintf(i8* bitcast ([35 x i32]* @.str.4 to i8*))
  br label %88

81:                                               ; preds = %75, %71
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %83, 4
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 (i8*, ...) @wprintf(i8* bitcast ([33 x i32]* @.str.5 to i8*))
  br label %87

87:                                               ; preds = %85, %81
  br label %88

88:                                               ; preds = %87, %79
  br label %89

89:                                               ; preds = %88, %69
  br label %90

90:                                               ; preds = %89, %59
  %91 = load i64, i64* %2, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %205

93:                                               ; preds = %90
  %94 = load i32, i32* @VER_NT_WORKSTATION, align 4
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 4, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 (i8*, ...) @wprintf(i8* bitcast ([17 x i32]* @.str.6 to i8*))
  br label %115

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @VER_SUITE_PERSONAL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 0, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = call i32 (i8*, ...) @wprintf(i8* bitcast ([14 x i32]* @.str.7 to i8*))
  br label %114

112:                                              ; preds = %104
  %113 = call i32 (i8*, ...) @wprintf(i8* bitcast ([14 x i32]* @.str.8 to i8*))
  br label %114

114:                                              ; preds = %112, %110
  br label %115

115:                                              ; preds = %114, %102
  br label %204

116:                                              ; preds = %93
  %117 = load i32, i32* @VER_NT_SERVER, align 4
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @VER_NT_DOMAIN_CONTROLLER, align 4
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %203

126:                                              ; preds = %121, %116
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 5, %128
  br i1 %129, label %130, label %162

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 2, %132
  br i1 %133, label %134, label %162

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @VER_SUITE_DATACENTER, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 0, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = call i32 (i8*, ...) @wprintf(i8* bitcast ([20 x i32]* @.str.9 to i8*))
  br label %161

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @VER_SUITE_ENTERPRISE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 0, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = call i32 (i8*, ...) @wprintf(i8* bitcast ([20 x i32]* @.str.10 to i8*))
  br label %160

150:                                              ; preds = %142
  %151 = load i32, i32* @VER_SUITE_BLADE, align 4
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = call i32 (i8*, ...) @wprintf(i8* bitcast ([13 x i32]* @.str.11 to i8*))
  br label %159

157:                                              ; preds = %150
  %158 = call i32 (i8*, ...) @wprintf(i8* bitcast ([18 x i32]* @.str.12 to i8*))
  br label %159

159:                                              ; preds = %157, %155
  br label %160

160:                                              ; preds = %159, %148
  br label %161

161:                                              ; preds = %160, %140
  br label %202

162:                                              ; preds = %130, %126
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 5, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 0, %168
  br i1 %169, label %170, label %190

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @VER_SUITE_DATACENTER, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 0, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = call i32 (i8*, ...) @wprintf(i8* bitcast ([19 x i32]* @.str.13 to i8*))
  br label %189

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @VER_SUITE_ENTERPRISE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 0, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = call i32 (i8*, ...) @wprintf(i8* bitcast ([17 x i32]* @.str.14 to i8*))
  br label %188

186:                                              ; preds = %178
  %187 = call i32 (i8*, ...) @wprintf(i8* bitcast ([8 x i32]* @.str.15 to i8*))
  br label %188

188:                                              ; preds = %186, %184
  br label %189

189:                                              ; preds = %188, %176
  br label %201

190:                                              ; preds = %166, %162
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @VER_SUITE_ENTERPRISE, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 0, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = call i32 (i8*, ...) @wprintf(i8* bitcast ([32 x i32]* @.str.16 to i8*))
  br label %200

198:                                              ; preds = %190
  %199 = call i32 (i8*, ...) @wprintf(i8* bitcast ([12 x i32]* @.str.17 to i8*))
  br label %200

200:                                              ; preds = %198, %196
  br label %201

201:                                              ; preds = %200, %189
  br label %202

202:                                              ; preds = %201, %161
  br label %203

203:                                              ; preds = %202, %121
  br label %204

204:                                              ; preds = %203, %115
  br label %253

205:                                              ; preds = %90
  store i32 160, i32* %5, align 4
  %206 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %207 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %208 = call i32 @RegOpenKeyExW(i32 %206, i8* bitcast ([48 x i32]* @.str.18 to i8*), i32 0, i32 %207, i32* %3)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* @ERROR_SUCCESS, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  br label %353

213:                                              ; preds = %205
  %214 = load i32, i32* %3, align 4
  %215 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %216 = ptrtoint i8* %215 to i32
  %217 = call i32 @RegQueryValueExW(i32 %214, i8* bitcast ([12 x i32]* @.str.19 to i8*), i32* null, i32* null, i32 %216, i32* %5)
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* @ERROR_SUCCESS, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %224, label %221

221:                                              ; preds = %213
  %222 = load i32, i32* %5, align 4
  %223 = icmp slt i32 160, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %221, %213
  br label %353

225:                                              ; preds = %221
  %226 = load i32, i32* %3, align 4
  %227 = call i32 @RegCloseKey(i32 %226)
  %228 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %229 = call i32 @lstrcmpiW(i8* bitcast ([6 x i32]* @.str.20 to i8*), i8* %228)
  %230 = icmp eq i32 0, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = call i32 (i8*, ...) @wprintf(i8* bitcast ([13 x i32]* @.str.21 to i8*))
  br label %247

233:                                              ; preds = %225
  %234 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %235 = call i32 @lstrcmpiW(i8* bitcast ([9 x i32]* @.str.22 to i8*), i8* %234)
  %236 = icmp eq i32 0, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = call i32 (i8*, ...) @wprintf(i8* bitcast ([8 x i32]* @.str.15 to i8*))
  br label %246

239:                                              ; preds = %233
  %240 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %241 = call i32 @lstrcmpiW(i8* bitcast ([9 x i32]* @.str.23 to i8*), i8* %240)
  %242 = icmp eq i32 0, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = call i32 (i8*, ...) @wprintf(i8* bitcast ([17 x i32]* @.str.14 to i8*))
  br label %245

245:                                              ; preds = %243, %239
  br label %246

246:                                              ; preds = %245, %237
  br label %247

247:                                              ; preds = %246, %231
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 (i8*, ...) @wprintf(i8* bitcast ([7 x i32]* @.str.24 to i8*), i32 %249, i32 %251)
  br label %253

253:                                              ; preds = %247, %204
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 4, %255
  br i1 %256, label %257, label %284

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @lstrcmpiW(i8* %259, i8* bitcast ([15 x i32]* @.str.25 to i8*))
  %261 = icmp eq i32 0, %260
  br i1 %261, label %262, label %284

262:                                              ; preds = %257
  %263 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %264 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %265 = call i32 @RegOpenKeyExW(i32 %263, i8* bitcast ([60 x i32]* @.str.26 to i8*), i32 0, i32 %264, i32* %3)
  store i32 %265, i32* %6, align 4
  %266 = load i32, i32* @ERROR_SUCCESS, align 4
  %267 = load i32, i32* %6, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = and i32 %271, 65535
  %273 = call i32 (i8*, ...) @wprintf(i8* bitcast ([28 x i32]* @.str.27 to i8*), i32 %272)
  br label %281

274:                                              ; preds = %262
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  %278 = load i32, i32* %277, align 8
  %279 = and i32 %278, 65535
  %280 = call i32 (i8*, ...) @wprintf(i8* bitcast ([15 x i32]* @.str.28 to i8*), i8* %276, i32 %279)
  br label %281

281:                                              ; preds = %274, %269
  %282 = load i32, i32* %3, align 4
  %283 = call i32 @RegCloseKey(i32 %282)
  br label %291

284:                                              ; preds = %257, %253
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %286 = load i8*, i8** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  %289 = and i32 %288, 65535
  %290 = call i32 (i8*, ...) @wprintf(i8* bitcast ([15 x i32]* @.str.28 to i8*), i8* %286, i32 %289)
  br label %291

291:                                              ; preds = %284, %281
  br label %353

292:                                              ; preds = %48
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 4, %294
  br i1 %295, label %296, label %318

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = icmp eq i32 0, %298
  br i1 %299, label %300, label %318

300:                                              ; preds = %296
  %301 = call i32 (i8*, ...) @wprintf(i8* bitcast ([33 x i32]* @.str.29 to i8*))
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %303 = load i8*, i8** %302, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 1
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp eq i32 67, %306
  br i1 %307, label %315, label %308

308:                                              ; preds = %300
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 1
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 66, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %308, %300
  %316 = call i32 (i8*, ...) @wprintf(i8* bitcast ([5 x i32]* @.str.30 to i8*))
  br label %317

317:                                              ; preds = %315, %308
  br label %349

318:                                              ; preds = %296, %292
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 4, %320
  br i1 %321, label %322, label %337

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %324 = load i32, i32* %323, align 8
  %325 = icmp eq i32 10, %324
  br i1 %325, label %326, label %337

326:                                              ; preds = %322
  %327 = call i32 (i8*, ...) @wprintf(i8* bitcast ([33 x i32]* @.str.31 to i8*))
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %329 = load i8*, i8** %328, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 1
  %331 = load i8, i8* %330, align 1
  %332 = sext i8 %331 to i32
  %333 = icmp eq i32 65, %332
  br i1 %333, label %334, label %336

334:                                              ; preds = %326
  %335 = call i32 (i8*, ...) @wprintf(i8* bitcast ([3 x i32]* @.str.32 to i8*))
  br label %336

336:                                              ; preds = %334, %326
  br label %348

337:                                              ; preds = %322, %318
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = icmp eq i32 4, %339
  br i1 %340, label %341, label %347

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %343 = load i32, i32* %342, align 8
  %344 = icmp eq i32 90, %343
  br i1 %344, label %345, label %347

345:                                              ; preds = %341
  %346 = call i32 (i8*, ...) @wprintf(i8* bitcast ([48 x i32]* @.str.33 to i8*))
  br label %347

347:                                              ; preds = %345, %341, %337
  br label %348

348:                                              ; preds = %347, %336
  br label %349

349:                                              ; preds = %348, %317
  %350 = call i32 (i8*, ...) @wprintf(i8* bitcast ([2 x i32]* @.str.34 to i8*))
  br label %353

351:                                              ; preds = %48
  %352 = call i32 (i8*, ...) @wprintf(i8* bitcast ([29 x i32]* @.str.35 to i8*))
  br label %353

353:                                              ; preds = %20, %45, %212, %224, %48, %351, %349, %291
  ret void
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @GetVersionExW(i32*) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i64 @_wcsnicmp(i8*, i8*, i32) #1

declare dso_local i32 @wprintf(i8*, ...) #1

declare dso_local i32 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @lstrcmpiW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
