; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_set_msi_assembly_prop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_set_msi_assembly_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@set_msi_assembly_prop.netasm = internal constant [22 x i8] c"MsiNetAssemblySupport\00", align 16
@set_msi_assembly_prop.translation = internal constant [25 x i8] c"\\VarFileInfo\\Translation\00", align 16
@set_msi_assembly_prop.verfmt = internal constant [40 x i8] c"\\StringFileInfo\\%04x%04x\\ProductVersion\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @set_msi_assembly_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_msi_assembly_prop(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32* null, i32** %6, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = call i32* @get_fusion_filename(%struct.TYPE_5__* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  br label %80

22:                                               ; preds = %1
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @GetFileVersionInfoSizeW(i32* %23, i32* %5)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %75

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = call i32* @msi_alloc(i32 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %75

34:                                               ; preds = %28
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @GetFileVersionInfoW(i32* %35, i32 %36, i32 %37, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %75

42:                                               ; preds = %34
  %43 = load i32*, i32** %6, align 8
  %44 = bitcast %struct.TYPE_6__** %11 to i32**
  %45 = call i32 @VerQueryValueW(i32* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @set_msi_assembly_prop.translation, i64 0, i64 0), i32** %44, i32* %3)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %75

48:                                               ; preds = %42
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sprintfW(i8* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @set_msi_assembly_prop.verfmt, i64 0, i64 0), i32 %52, i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @VerQueryValueW(i32* %58, i8* %16, i32** %10, i32* %3)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %48
  br label %75

62:                                               ; preds = %48
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65, %62
  br label %75

69:                                               ; preds = %65
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @msi_set_property(i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @set_msi_assembly_prop.netasm, i64 0, i64 0), i32* %73, i32 -1)
  br label %75

75:                                               ; preds = %69, %68, %61, %47, %41, %33, %27
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @msi_free(i32* %76)
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @msi_free(i32* %78)
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %75, %21
  %81 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %12, align 4
  switch i32 %82, label %84 [
    i32 0, label %83
    i32 1, label %83
  ]

83:                                               ; preds = %80, %80
  ret void

84:                                               ; preds = %80
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @get_fusion_filename(%struct.TYPE_5__*) #2

declare dso_local i32 @GetFileVersionInfoSizeW(i32*, i32*) #2

declare dso_local i32* @msi_alloc(i32) #2

declare dso_local i32 @GetFileVersionInfoW(i32*, i32, i32, i32*) #2

declare dso_local i32 @VerQueryValueW(i32*, i8*, i32**, i32*) #2

declare dso_local i32 @sprintfW(i8*, i8*, i32, i32) #2

declare dso_local i32 @msi_set_property(i32, i8*, i32*, i32) #2

declare dso_local i32 @msi_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
