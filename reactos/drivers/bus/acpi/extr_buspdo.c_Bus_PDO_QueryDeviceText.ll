; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_buspdo.c_Bus_PDO_QueryDeviceText.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_buspdo.c_Bus_PDO_QueryDeviceText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [7 x i32] [i32 80, i32 78, i32 80, i32 48, i32 48, i32 48, i32 0], align 4
@.str.1 = private unnamed_addr constant [34 x i32] [i32 80, i32 114, i32 111, i32 103, i32 114, i32 97, i32 109, i32 109, i32 97, i32 98, i32 108, i32 101, i32 32, i32 105, i32 110, i32 116, i32 101, i32 114, i32 114, i32 117, i32 112, i32 116, i32 32, i32 99, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 108, i32 101, i32 114, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 80, i32 78, i32 80, i32 48, i32 49, i32 48, i32 0], align 4
@.str.3 = private unnamed_addr constant [13 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 32, i32 116, i32 105, i32 109, i32 101, i32 114, i32 0], align 4
@.str.4 = private unnamed_addr constant [7 x i32] [i32 80, i32 78, i32 80, i32 48, i32 50, i32 48, i32 0], align 4
@.str.5 = private unnamed_addr constant [15 x i32] [i32 68, i32 77, i32 65, i32 32, i32 99, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 108, i32 101, i32 114, i32 0], align 4
@.str.6 = private unnamed_addr constant [6 x i32] [i32 80, i32 78, i32 80, i32 48, i32 51, i32 0], align 4
@.str.7 = private unnamed_addr constant [9 x i32] [i32 75, i32 101, i32 121, i32 98, i32 111, i32 97, i32 114, i32 100, i32 0], align 4
@.str.8 = private unnamed_addr constant [7 x i32] [i32 80, i32 78, i32 80, i32 48, i32 52, i32 48, i32 0], align 4
@.str.9 = private unnamed_addr constant [14 x i32] [i32 80, i32 97, i32 114, i32 97, i32 108, i32 108, i32 101, i32 108, i32 32, i32 112, i32 111, i32 114, i32 116, i32 0], align 4
@.str.10 = private unnamed_addr constant [6 x i32] [i32 80, i32 78, i32 80, i32 48, i32 53, i32 0], align 4
@.str.11 = private unnamed_addr constant [12 x i32] [i32 83, i32 101, i32 114, i32 105, i32 97, i32 108, i32 32, i32 112, i32 111, i32 114, i32 116, i32 0], align 4
@.str.12 = private unnamed_addr constant [6 x i32] [i32 80, i32 78, i32 80, i32 48, i32 54, i32 0], align 4
@.str.13 = private unnamed_addr constant [16 x i32] [i32 68, i32 105, i32 115, i32 107, i32 32, i32 99, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 108, i32 101, i32 114, i32 0], align 4
@.str.14 = private unnamed_addr constant [6 x i32] [i32 80, i32 78, i32 80, i32 48, i32 55, i32 0], align 4
@.str.15 = private unnamed_addr constant [6 x i32] [i32 80, i32 78, i32 80, i32 48, i32 57, i32 0], align 4
@.str.16 = private unnamed_addr constant [16 x i32] [i32 68, i32 105, i32 115, i32 112, i32 108, i32 97, i32 121, i32 32, i32 97, i32 100, i32 97, i32 112, i32 116, i32 101, i32 114, i32 0], align 4
@.str.17 = private unnamed_addr constant [7 x i32] [i32 80, i32 78, i32 80, i32 48, i32 65, i32 48, i32 0], align 4
@.str.18 = private unnamed_addr constant [15 x i32] [i32 66, i32 117, i32 115, i32 32, i32 99, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 108, i32 101, i32 114, i32 0], align 4
@.str.19 = private unnamed_addr constant [7 x i32] [i32 80, i32 78, i32 80, i32 48, i32 69, i32 48, i32 0], align 4
@.str.20 = private unnamed_addr constant [18 x i32] [i32 80, i32 67, i32 77, i32 67, i32 73, i32 65, i32 32, i32 99, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 108, i32 101, i32 114, i32 0], align 4
@.str.21 = private unnamed_addr constant [6 x i32] [i32 80, i32 78, i32 80, i32 48, i32 70, i32 0], align 4
@.str.22 = private unnamed_addr constant [13 x i32] [i32 77, i32 111, i32 117, i32 115, i32 101, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 0], align 4
@.str.23 = private unnamed_addr constant [5 x i32] [i32 80, i32 78, i32 80, i32 56, i32 0], align 4
@.str.24 = private unnamed_addr constant [16 x i32] [i32 78, i32 101, i32 116, i32 119, i32 111, i32 114, i32 107, i32 32, i32 97, i32 100, i32 97, i32 112, i32 116, i32 101, i32 114, i32 0], align 4
@.str.25 = private unnamed_addr constant [6 x i32] [i32 80, i32 78, i32 80, i32 65, i32 48, i32 0], align 4
@.str.26 = private unnamed_addr constant [16 x i32] [i32 83, i32 67, i32 83, i32 73, i32 32, i32 99, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 108, i32 101, i32 114, i32 0], align 4
@.str.27 = private unnamed_addr constant [6 x i32] [i32 80, i32 78, i32 80, i32 66, i32 48, i32 0], align 4
@.str.28 = private unnamed_addr constant [18 x i32] [i32 77, i32 117, i32 108, i32 116, i32 105, i32 109, i32 101, i32 100, i32 105, i32 97, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 0], align 4
@.str.29 = private unnamed_addr constant [7 x i32] [i32 80, i32 78, i32 80, i32 67, i32 48, i32 48, i32 0], align 4
@.str.30 = private unnamed_addr constant [6 x i32] [i32 77, i32 111, i32 100, i32 101, i32 109, i32 0], align 4
@.str.31 = private unnamed_addr constant [8 x i32] [i32 80, i32 78, i32 80, i32 48, i32 67, i32 48, i32 67, i32 0], align 4
@.str.32 = private unnamed_addr constant [13 x i32] [i32 80, i32 111, i32 119, i32 101, i32 114, i32 32, i32 66, i32 117, i32 116, i32 116, i32 111, i32 110, i32 0], align 4
@.str.33 = private unnamed_addr constant [8 x i32] [i32 80, i32 78, i32 80, i32 48, i32 67, i32 48, i32 69, i32 0], align 4
@.str.34 = private unnamed_addr constant [13 x i32] [i32 83, i32 108, i32 101, i32 101, i32 112, i32 32, i32 66, i32 117, i32 116, i32 116, i32 111, i32 110, i32 0], align 4
@.str.35 = private unnamed_addr constant [8 x i32] [i32 80, i32 78, i32 80, i32 48, i32 67, i32 48, i32 68, i32 0], align 4
@.str.36 = private unnamed_addr constant [11 x i32] [i32 76, i32 105, i32 100, i32 32, i32 83, i32 119, i32 105, i32 116, i32 99, i32 104, i32 0], align 4
@.str.37 = private unnamed_addr constant [8 x i32] [i32 80, i32 78, i32 80, i32 48, i32 67, i32 48, i32 57, i32 0], align 4
@.str.38 = private unnamed_addr constant [25 x i32] [i32 65, i32 67, i32 80, i32 73, i32 32, i32 69, i32 109, i32 98, i32 101, i32 100, i32 100, i32 101, i32 100, i32 32, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 108, i32 101, i32 114, i32 0], align 4
@.str.39 = private unnamed_addr constant [8 x i32] [i32 80, i32 78, i32 80, i32 48, i32 67, i32 48, i32 66, i32 0], align 4
@.str.40 = private unnamed_addr constant [9 x i32] [i32 65, i32 67, i32 80, i32 73, i32 32, i32 70, i32 97, i32 110, i32 0], align 4
@.str.41 = private unnamed_addr constant [8 x i32] [i32 80, i32 78, i32 80, i32 48, i32 65, i32 48, i32 51, i32 0], align 4
@.str.42 = private unnamed_addr constant [8 x i32] [i32 80, i32 78, i32 80, i32 48, i32 65, i32 48, i32 56, i32 0], align 4
@.str.43 = private unnamed_addr constant [16 x i32] [i32 80, i32 67, i32 73, i32 32, i32 82, i32 111, i32 111, i32 116, i32 32, i32 66, i32 114, i32 105, i32 100, i32 103, i32 101, i32 0], align 4
@.str.44 = private unnamed_addr constant [8 x i32] [i32 80, i32 78, i32 80, i32 48, i32 67, i32 48, i32 65, i32 0], align 4
@.str.45 = private unnamed_addr constant [13 x i32] [i32 65, i32 67, i32 80, i32 73, i32 32, i32 66, i32 97, i32 116, i32 116, i32 101, i32 114, i32 121, i32 0], align 4
@.str.46 = private unnamed_addr constant [8 x i32] [i32 80, i32 78, i32 80, i32 48, i32 67, i32 48, i32 70, i32 0], align 4
@.str.47 = private unnamed_addr constant [19 x i32] [i32 80, i32 67, i32 73, i32 32, i32 73, i32 110, i32 116, i32 101, i32 114, i32 114, i32 117, i32 112, i32 116, i32 32, i32 76, i32 105, i32 110, i32 107, i32 0], align 4
@.str.48 = private unnamed_addr constant [9 x i32] [i32 65, i32 67, i32 80, i32 73, i32 95, i32 80, i32 87, i32 82, i32 0], align 4
@.str.49 = private unnamed_addr constant [20 x i32] [i32 65, i32 67, i32 80, i32 73, i32 32, i32 80, i32 111, i32 119, i32 101, i32 114, i32 32, i32 82, i32 101, i32 115, i32 111, i32 117, i32 114, i32 99, i32 101, i32 0], align 4
@.str.50 = private unnamed_addr constant [10 x i32] [i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 111, i32 114, i32 0], align 4
@ProcessorNameString = common dso_local global i8* null, align 8
@.str.51 = private unnamed_addr constant [12 x i32] [i32 84, i32 104, i32 101, i32 114, i32 109, i32 97, i32 108, i32 90, i32 111, i32 110, i32 101, i32 0], align 4
@.str.52 = private unnamed_addr constant [18 x i32] [i32 65, i32 67, i32 80, i32 73, i32 32, i32 84, i32 104, i32 101, i32 114, i32 109, i32 97, i32 108, i32 32, i32 90, i32 111, i32 110, i32 101, i32 0], align 4
@.str.53 = private unnamed_addr constant [9 x i32] [i32 65, i32 67, i32 80, i32 73, i32 48, i32 48, i32 48, i32 50, i32 0], align 4
@.str.54 = private unnamed_addr constant [14 x i32] [i32 83, i32 109, i32 97, i32 114, i32 116, i32 32, i32 66, i32 97, i32 116, i32 116, i32 101, i32 114, i32 121, i32 0], align 4
@.str.55 = private unnamed_addr constant [9 x i32] [i32 65, i32 67, i32 80, i32 73, i32 48, i32 48, i32 48, i32 51, i32 0], align 4
@.str.56 = private unnamed_addr constant [11 x i32] [i32 65, i32 67, i32 32, i32 65, i32 100, i32 97, i32 112, i32 116, i32 101, i32 114, i32 0], align 4
@.str.57 = private unnamed_addr constant [26 x i32] [i32 65, i32 67, i32 80, i32 73, i32 32, i32 70, i32 105, i32 120, i32 101, i32 100, i32 32, i32 70, i32 101, i32 97, i32 116, i32 117, i32 114, i32 101, i32 32, i32 66, i32 117, i32 116, i32 116, i32 111, i32 110, i32 0], align 4
@.str.58 = private unnamed_addr constant [18 x i32] [i32 79, i32 116, i32 104, i32 101, i32 114, i32 32, i32 65, i32 67, i32 80, i32 73, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 0], align 4
@PagedPool = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [29 x i8] c"\09DeviceTextDescription :%ws\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Bus_PDO_QueryDeviceText(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = call i32 (...) @PAGED_CODE()
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = call %struct.TYPE_16__* @IoGetCurrentIrpStackLocation(%struct.TYPE_15__* %14)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %7, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %310 [
    i32 128, label %21
  ]

21:                                               ; preds = %2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %309, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wcsstr(i32 %30, i8* bitcast ([7 x i32]* @.str to i8*))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i8* bitcast ([34 x i32]* @.str.1 to i8*), i8** %6, align 8
  br label %278

34:                                               ; preds = %27
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @wcsstr(i32 %37, i8* bitcast ([7 x i32]* @.str.2 to i8*))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i8* bitcast ([13 x i32]* @.str.3 to i8*), i8** %6, align 8
  br label %277

41:                                               ; preds = %34
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @wcsstr(i32 %44, i8* bitcast ([7 x i32]* @.str.4 to i8*))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i8* bitcast ([15 x i32]* @.str.5 to i8*), i8** %6, align 8
  br label %276

48:                                               ; preds = %41
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wcsstr(i32 %51, i8* bitcast ([6 x i32]* @.str.6 to i8*))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i8* bitcast ([9 x i32]* @.str.7 to i8*), i8** %6, align 8
  br label %275

55:                                               ; preds = %48
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wcsstr(i32 %58, i8* bitcast ([7 x i32]* @.str.8 to i8*))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i8* bitcast ([14 x i32]* @.str.9 to i8*), i8** %6, align 8
  br label %274

62:                                               ; preds = %55
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wcsstr(i32 %65, i8* bitcast ([6 x i32]* @.str.10 to i8*))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i8* bitcast ([12 x i32]* @.str.11 to i8*), i8** %6, align 8
  br label %273

69:                                               ; preds = %62
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @wcsstr(i32 %72, i8* bitcast ([6 x i32]* @.str.12 to i8*))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i8* bitcast ([16 x i32]* @.str.13 to i8*), i8** %6, align 8
  br label %272

76:                                               ; preds = %69
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @wcsstr(i32 %79, i8* bitcast ([6 x i32]* @.str.14 to i8*))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i8* bitcast ([16 x i32]* @.str.13 to i8*), i8** %6, align 8
  br label %271

83:                                               ; preds = %76
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @wcsstr(i32 %86, i8* bitcast ([6 x i32]* @.str.15 to i8*))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i8* bitcast ([16 x i32]* @.str.16 to i8*), i8** %6, align 8
  br label %270

90:                                               ; preds = %83
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @wcsstr(i32 %93, i8* bitcast ([7 x i32]* @.str.17 to i8*))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i8* bitcast ([15 x i32]* @.str.18 to i8*), i8** %6, align 8
  br label %269

97:                                               ; preds = %90
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @wcsstr(i32 %100, i8* bitcast ([7 x i32]* @.str.19 to i8*))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i8* bitcast ([18 x i32]* @.str.20 to i8*), i8** %6, align 8
  br label %268

104:                                              ; preds = %97
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @wcsstr(i32 %107, i8* bitcast ([6 x i32]* @.str.21 to i8*))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i8* bitcast ([13 x i32]* @.str.22 to i8*), i8** %6, align 8
  br label %267

111:                                              ; preds = %104
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @wcsstr(i32 %114, i8* bitcast ([5 x i32]* @.str.23 to i8*))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i8* bitcast ([16 x i32]* @.str.24 to i8*), i8** %6, align 8
  br label %266

118:                                              ; preds = %111
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @wcsstr(i32 %121, i8* bitcast ([6 x i32]* @.str.25 to i8*))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i8* bitcast ([16 x i32]* @.str.26 to i8*), i8** %6, align 8
  br label %265

125:                                              ; preds = %118
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @wcsstr(i32 %128, i8* bitcast ([6 x i32]* @.str.27 to i8*))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i8* bitcast ([18 x i32]* @.str.28 to i8*), i8** %6, align 8
  br label %264

132:                                              ; preds = %125
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @wcsstr(i32 %135, i8* bitcast ([7 x i32]* @.str.29 to i8*))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i8* bitcast ([6 x i32]* @.str.30 to i8*), i8** %6, align 8
  br label %263

139:                                              ; preds = %132
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @wcsstr(i32 %142, i8* bitcast ([8 x i32]* @.str.31 to i8*))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i8* bitcast ([13 x i32]* @.str.32 to i8*), i8** %6, align 8
  br label %262

146:                                              ; preds = %139
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @wcsstr(i32 %149, i8* bitcast ([8 x i32]* @.str.33 to i8*))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i8* bitcast ([13 x i32]* @.str.34 to i8*), i8** %6, align 8
  br label %261

153:                                              ; preds = %146
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @wcsstr(i32 %156, i8* bitcast ([8 x i32]* @.str.35 to i8*))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i8* bitcast ([11 x i32]* @.str.36 to i8*), i8** %6, align 8
  br label %260

160:                                              ; preds = %153
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @wcsstr(i32 %163, i8* bitcast ([8 x i32]* @.str.37 to i8*))
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  store i8* bitcast ([25 x i32]* @.str.38 to i8*), i8** %6, align 8
  br label %259

167:                                              ; preds = %160
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @wcsstr(i32 %170, i8* bitcast ([8 x i32]* @.str.39 to i8*))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store i8* bitcast ([9 x i32]* @.str.40 to i8*), i8** %6, align 8
  br label %258

174:                                              ; preds = %167
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @wcsstr(i32 %177, i8* bitcast ([8 x i32]* @.str.41 to i8*))
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @wcsstr(i32 %183, i8* bitcast ([8 x i32]* @.str.42 to i8*))
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180, %174
  store i8* bitcast ([16 x i32]* @.str.43 to i8*), i8** %6, align 8
  br label %257

187:                                              ; preds = %180
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @wcsstr(i32 %190, i8* bitcast ([8 x i32]* @.str.44 to i8*))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  store i8* bitcast ([13 x i32]* @.str.45 to i8*), i8** %6, align 8
  br label %256

194:                                              ; preds = %187
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @wcsstr(i32 %197, i8* bitcast ([8 x i32]* @.str.46 to i8*))
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  store i8* bitcast ([19 x i32]* @.str.47 to i8*), i8** %6, align 8
  br label %255

201:                                              ; preds = %194
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @wcsstr(i32 %204, i8* bitcast ([9 x i32]* @.str.48 to i8*))
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  store i8* bitcast ([20 x i32]* @.str.49 to i8*), i8** %6, align 8
  br label %254

208:                                              ; preds = %201
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @wcsstr(i32 %211, i8* bitcast ([10 x i32]* @.str.50 to i8*))
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %208
  %215 = load i8*, i8** @ProcessorNameString, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i8*, i8** @ProcessorNameString, align 8
  store i8* %218, i8** %6, align 8
  br label %220

219:                                              ; preds = %214
  store i8* bitcast ([10 x i32]* @.str.50 to i8*), i8** %6, align 8
  br label %220

220:                                              ; preds = %219, %217
  br label %253

221:                                              ; preds = %208
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @wcsstr(i32 %224, i8* bitcast ([12 x i32]* @.str.51 to i8*))
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  store i8* bitcast ([18 x i32]* @.str.52 to i8*), i8** %6, align 8
  br label %252

228:                                              ; preds = %221
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @wcsstr(i32 %231, i8* bitcast ([9 x i32]* @.str.53 to i8*))
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  store i8* bitcast ([14 x i32]* @.str.54 to i8*), i8** %6, align 8
  br label %251

235:                                              ; preds = %228
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @wcsstr(i32 %238, i8* bitcast ([9 x i32]* @.str.55 to i8*))
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  store i8* bitcast ([11 x i32]* @.str.56 to i8*), i8** %6, align 8
  br label %250

242:                                              ; preds = %235
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %242
  store i8* bitcast ([26 x i32]* @.str.57 to i8*), i8** %6, align 8
  br label %249

248:                                              ; preds = %242
  store i8* bitcast ([18 x i32]* @.str.58 to i8*), i8** %6, align 8
  br label %249

249:                                              ; preds = %248, %247
  br label %250

250:                                              ; preds = %249, %241
  br label %251

251:                                              ; preds = %250, %234
  br label %252

252:                                              ; preds = %251, %227
  br label %253

253:                                              ; preds = %252, %220
  br label %254

254:                                              ; preds = %253, %207
  br label %255

255:                                              ; preds = %254, %200
  br label %256

256:                                              ; preds = %255, %193
  br label %257

257:                                              ; preds = %256, %186
  br label %258

258:                                              ; preds = %257, %173
  br label %259

259:                                              ; preds = %258, %166
  br label %260

260:                                              ; preds = %259, %159
  br label %261

261:                                              ; preds = %260, %152
  br label %262

262:                                              ; preds = %261, %145
  br label %263

263:                                              ; preds = %262, %138
  br label %264

264:                                              ; preds = %263, %131
  br label %265

265:                                              ; preds = %264, %124
  br label %266

266:                                              ; preds = %265, %117
  br label %267

267:                                              ; preds = %266, %110
  br label %268

268:                                              ; preds = %267, %103
  br label %269

269:                                              ; preds = %268, %96
  br label %270

270:                                              ; preds = %269, %89
  br label %271

271:                                              ; preds = %270, %82
  br label %272

272:                                              ; preds = %271, %75
  br label %273

273:                                              ; preds = %272, %68
  br label %274

274:                                              ; preds = %273, %61
  br label %275

275:                                              ; preds = %274, %54
  br label %276

276:                                              ; preds = %275, %47
  br label %277

277:                                              ; preds = %276, %40
  br label %278

278:                                              ; preds = %277, %33
  %279 = load i32, i32* @PagedPool, align 4
  %280 = load i8*, i8** %6, align 8
  %281 = call i32 @wcslen(i8* %280)
  %282 = add nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = mul i64 %283, 4
  %285 = trunc i64 %284 to i32
  %286 = call i8* @ExAllocatePoolWithTag(i32 %279, i32 %285, i8 signext 65)
  store i8* %286, i8** %5, align 8
  %287 = load i8*, i8** %5, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %291, label %289

289:                                              ; preds = %278
  %290 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %290, i32* %8, align 4
  br label %311

291:                                              ; preds = %278
  %292 = load i8*, i8** %5, align 8
  %293 = load i8*, i8** %6, align 8
  %294 = load i8*, i8** %6, align 8
  %295 = call i32 @wcslen(i8* %294)
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = mul i64 %297, 4
  %299 = trunc i64 %298 to i32
  %300 = call i32 @RtlCopyMemory(i8* %292, i8* %293, i32 %299)
  %301 = load i8*, i8** %5, align 8
  %302 = call i32 @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0), i8* %301)
  %303 = load i8*, i8** %5, align 8
  %304 = ptrtoint i8* %303 to i32
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 0
  store i32 %304, i32* %307, align 4
  %308 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %308, i32* %8, align 4
  br label %309

309:                                              ; preds = %291, %21
  br label %311

310:                                              ; preds = %2
  br label %311

311:                                              ; preds = %310, %309, %289
  %312 = load i32, i32* %8, align 4
  ret i32 %312
}

declare dso_local i32 @PAGED_CODE(...) #1

declare dso_local %struct.TYPE_16__* @IoGetCurrentIrpStackLocation(%struct.TYPE_15__*) #1

declare dso_local i32 @wcsstr(i32, i8*) #1

declare dso_local i8* @ExAllocatePoolWithTag(i32, i32, i8 signext) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @RtlCopyMemory(i8*, i8*, i32) #1

declare dso_local i32 @DPRINT(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
