; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/version/extr_version.c_print_vffi_debug.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/version/extr_version.c_print_vffi_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"structversion=%u.%u, \00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"fileversion=%u.%u.%u.%u (%s.major.minor.release), \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Usermode\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Kernelmode\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"fileversion=%u.%u.%u.%u, \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"productversion=%u.%u.%u.%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"flagmask=0x%x, flags=0x%x %s%s%s%s%s%s\0A\00", align 1
@VS_FF_DEBUG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"DEBUG,\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VS_FF_PRERELEASE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"PRERELEASE,\00", align 1
@VS_FF_PATCHED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"PATCHED,\00", align 1
@VS_FF_PRIVATEBUILD = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"PRIVATEBUILD,\00", align 1
@VS_FF_INFOINFERRED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"INFOINFERRED,\00", align 1
@VS_FF_SPECIALBUILD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"SPECIALBUILD,\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"OS=0x%x.0x%x \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"DOS,\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"OS/2-16,\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"OS/2-32,\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"NT,\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"UNKNOWN(0x%x),\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"BASE\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"WIN16\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"WIN32\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"PM16\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"PM32\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"UNKNOWN(0x%x)\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"filetype=APP\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"filetype=DLL\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c",PRINTER\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c" (subtype=0x%x)\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"filetype=DRV,\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"PRINTER\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"KEYBOARD\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"LANGUAGE\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"MOUSE\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"NETWORK\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"SYSTEM\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"INSTALLABLE\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"SOUND\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"INPUTMETHOD\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"VERSIONED_PRINTER\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"filetype=FONT,\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"RASTER\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"VECTOR\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"TRUETYPE\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"filetype=VXD\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"filetype=STATIC_LIB\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"filetype=Unknown(0x%x)\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"filedate=0x%x.0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @print_vffi_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_vffi_debug(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load i64, i64* @FALSE, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 143
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 142
  br i1 %15, label %16, label %50

16:                                               ; preds = %11, %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 149
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i64, i64* @TRUE, align 8
  store i64 %22, i64* %3, align 8
  br label %49

23:                                               ; preds = %16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 152
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp sle i32 %44, 3
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i64, i64* @TRUE, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %46, %41, %36, %28, %23
  br label %49

49:                                               ; preds = %48, %21
  br label %50

50:                                               ; preds = %49, %11
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @HIWORD(i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @LOWORD(i32 %57)
  %59 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %58)
  %60 = load i64, i64* %3, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %50
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @LOWORD(i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @HIWORD(i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @HIBYTE(i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @LOBYTE(i32 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @LOWORD(i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %84, label %85

84:                                               ; preds = %62
  br label %90

85:                                               ; preds = %62
  %86 = load i32, i32* %4, align 4
  %87 = icmp sle i32 %86, 2
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  br label %90

90:                                               ; preds = %85, %84
  %91 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %84 ], [ %89, %85 ]
  %92 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %75, i32 %77, i32 %81, i8* %91)
  br label %111

93:                                               ; preds = %50
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @HIWORD(i32 %96)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @LOWORD(i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @HIWORD(i32 %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @LOWORD(i32 %108)
  %110 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %97, i32 %101, i32 %105, i32 %109)
  br label %111

111:                                              ; preds = %93, %90
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @HIWORD(i32 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @LOWORD(i32 %118)
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @HIWORD(i32 %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @LOWORD(i32 %126)
  %128 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %115, i32 %119, i32 %123, i32 %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 11
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @VS_FF_DEBUG, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @VS_FF_PRERELEASE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @VS_FF_PATCHED, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @VS_FF_PRIVATEBUILD, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @VS_FF_INFOINFERRED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @VS_FF_SPECIALBUILD, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %183 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %131, i32 %134, i8* %142, i8* %150, i8* %158, i8* %166, i8* %174, i8* %182)
  %184 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @HIWORD(i32 %187)
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @LOWORD(i32 %191)
  %193 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %188, i32 %192)
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, -65536
  switch i32 %197, label %207 [
    i32 137, label %198
    i32 135, label %200
    i32 134, label %202
    i32 136, label %204
    i32 133, label %206
  ]

198:                                              ; preds = %111
  %199 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %213

200:                                              ; preds = %111
  %201 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %213

202:                                              ; preds = %111
  %203 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  br label %213

204:                                              ; preds = %111
  %205 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %213

206:                                              ; preds = %111
  br label %207

207:                                              ; preds = %111, %206
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = and i32 %210, -65536
  %212 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %207, %204, %202, %200, %198
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @LOWORD(i32 %216)
  switch i32 %217, label %228 [
    i32 132, label %218
    i32 129, label %220
    i32 128, label %222
    i32 131, label %224
    i32 130, label %226
  ]

218:                                              ; preds = %213
  %219 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  br label %234

220:                                              ; preds = %213
  %221 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  br label %234

222:                                              ; preds = %213
  %223 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  br label %234

224:                                              ; preds = %213
  %225 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  br label %234

226:                                              ; preds = %213
  %227 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  br label %234

228:                                              ; preds = %213
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @LOWORD(i32 %231)
  %233 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %228, %226, %224, %222, %220, %218
  %235 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  switch i32 %238, label %316 [
    i32 144, label %239
    i32 143, label %241
    i32 142, label %258
    i32 141, label %294
    i32 138, label %311
    i32 140, label %313
    i32 139, label %315
  ]

239:                                              ; preds = %234
  %240 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  br label %321

241:                                              ; preds = %234
  %242 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %241
  %248 = load i64, i64* %3, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %247
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i64 %255)
  br label %257

257:                                              ; preds = %252, %241
  br label %321

258:                                              ; preds = %234
  %259 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0))
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  switch i64 %262, label %288 [
    i64 152, label %263
    i64 156, label %265
    i64 155, label %267
    i64 159, label %269
    i64 154, label %271
    i64 153, label %273
    i64 150, label %275
    i64 157, label %277
    i64 151, label %279
    i64 160, label %281
    i64 158, label %283
    i64 149, label %285
    i64 145, label %287
  ]

263:                                              ; preds = %258
  %264 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0))
  br label %293

265:                                              ; preds = %258
  %266 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0))
  br label %293

267:                                              ; preds = %258
  %268 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0))
  br label %293

269:                                              ; preds = %258
  %270 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0))
  br label %293

271:                                              ; preds = %258
  %272 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0))
  br label %293

273:                                              ; preds = %258
  %274 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0))
  br label %293

275:                                              ; preds = %258
  %276 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0))
  br label %293

277:                                              ; preds = %258
  %278 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0))
  br label %293

279:                                              ; preds = %258
  %280 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0))
  br label %293

281:                                              ; preds = %258
  %282 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  br label %293

283:                                              ; preds = %258
  %284 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0))
  br label %293

285:                                              ; preds = %258
  %286 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0))
  br label %293

287:                                              ; preds = %258
  br label %288

288:                                              ; preds = %258, %287
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 %291)
  br label %293

293:                                              ; preds = %288, %285, %283, %281, %279, %277, %275, %273, %271, %269, %267, %265, %263
  br label %321

294:                                              ; preds = %234
  %295 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0))
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  switch i64 %298, label %305 [
    i64 148, label %299
    i64 146, label %301
    i64 147, label %303
  ]

299:                                              ; preds = %294
  %300 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0))
  br label %310

301:                                              ; preds = %294
  %302 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0))
  br label %310

303:                                              ; preds = %294
  %304 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0))
  br label %310

305:                                              ; preds = %294
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 %308)
  br label %310

310:                                              ; preds = %305, %303, %301, %299
  br label %321

311:                                              ; preds = %234
  %312 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0))
  br label %321

313:                                              ; preds = %234
  %314 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i64 0, i64 0))
  br label %321

315:                                              ; preds = %234
  br label %316

316:                                              ; preds = %234, %315
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i64 0, i64 0), i32 %319)
  br label %321

321:                                              ; preds = %316, %313, %311, %310, %293, %257, %239
  %322 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0))
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 9
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 10
  %328 = load i32, i32* %327, align 8
  %329 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i64 0, i64 0), i32 %325, i32 %328)
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @HIBYTE(i32) #1

declare dso_local i32 @LOBYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
