; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_GetAdapterRegistry.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_GetAdapterRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"pci\\ven_%04x&dev_%04x\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"SYSTEM\\CurrentControlSet\\Control\\Class\\{4d36e968-e325-11ce-bfc1-08002be10318}\\%04d\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"failed to read the %d Display Adapter registry key (%ld)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"MatchingDeviceId\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"different %d device %ls vs %ls\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"failed to get the %d MatchingDeviceId (%ld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*)* @GetAdapterRegistry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetAdapterRegistry(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [128 x i32], align 16
  %8 = alloca [256 x i32], align 16
  %9 = alloca [256 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 256, i32* %10, align 4
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %14 = call i32 @TEXT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32*, i32, i32, i32, ...) @_snwprintf(i32* %13, i32 256, i32 %14, i32 %17, i32 %20)
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %70, %2
  %23 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %24 = call i32 @TEXT(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %12, align 4
  %26 = call i32 (i32*, i32, i32, i32, ...) @_snwprintf(i32* %23, i32 128, i32 %24, i32 %25)
  %27 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %28 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %29 = load i32, i32* @KEY_READ, align 4
  %30 = call i32 @RegOpenKeyEx(i32 %27, i32* %28, i32 0, i32 %29, i32** %6)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @ERROR_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @msg_Warn(i32* %35, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  store i32* null, i32** %3, align 8
  br label %73

39:                                               ; preds = %22
  store i32 1024, i32* %10, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @TEXT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %42 = ptrtoint [256 x i32]* %8 to i32
  %43 = call i32 @RegQueryValueEx(i32* %40, i32 %41, i32* null, i32* null, i32 %42, i32* %10)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @ERROR_SUCCESS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %39
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %51 = call i32 @wcslen(i32* %50)
  %52 = call i64 @wcsncmp(i32* %48, i32* %49, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32*, i32** %6, align 8
  store i32* %55, i32** %3, align 8
  br label %73

56:                                               ; preds = %47
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %12, align 4
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %60 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %61 = call i32 @msg_Dbg(i32* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32* %59, i32* %60)
  br label %67

62:                                               ; preds = %39
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @msg_Warn(i32* %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @RegCloseKey(i32* %68)
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %22

73:                                               ; preds = %54, %34
  %74 = load i32*, i32** %3, align 8
  ret i32* %74
}

declare dso_local i32 @_snwprintf(i32*, i32, i32, i32, ...) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @RegOpenKeyEx(i32, i32*, i32, i32, i32**) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @RegQueryValueEx(i32*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i64 @wcsncmp(i32*, i32*, i32) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
