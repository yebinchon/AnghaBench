; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/psapi/extr_psapi.c_IntGetModuleInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/psapi/extr_psapi.c_IntGetModuleInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"GetSystemWindowsDirectory failed\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"\\system32\\\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"drivers\\\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"IntGetImageBase failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Not supported yet!\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i64, %struct.TYPE_4__*)* @IntGetModuleInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IntGetModuleInformation(i8* %0, i64 %1, i64 %2, i64 %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca [255 x i8], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %15 = call i32 @memset(%struct.TYPE_4__* %14, i32 0, i32 24)
  %16 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %17 = call i32 @GetSystemWindowsDirectory(i8* %16, i32 255)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp sgt i32 %18, 255
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %5
  %24 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %6, align 8
  br label %86

26:                                               ; preds = %20
  %27 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %28 = call i32 @strcat(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %33 = call i32 @strcat(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcat(i8* %35, i8* %36)
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %42 = call i32 @IntGetImageBase(i8* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i64, i64* @FALSE, align 8
  store i64 %51, i64* %6, align 8
  br label %86

52:                                               ; preds = %40
  br label %56

53:                                               ; preds = %34
  %54 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %6, align 8
  br label %86

56:                                               ; preds = %52
  %57 = load i64, i64* %10, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @strcpy(i32 %62, i8* %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @strlen(i32 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %84

71:                                               ; preds = %56
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = call i32 @strcpy(i32 %74, i8* %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @strlen(i32 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %71, %59
  %85 = load i64, i64* @TRUE, align 8
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %84, %53, %49, %23
  %87 = load i64, i64* %6, align 8
  ret i64 %87
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @GetSystemWindowsDirectory(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @IntGetImageBase(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
