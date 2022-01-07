; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_apartment_hostobject.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_apartment_hostobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apartment = type { i32 }
%struct.host_object_params = type { i32, i32, i32, i32, i32 }

@apartment_hostobject.llZero = internal constant i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"clsid %s, iid %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"class %s not registered inproc\0A\00", align 1
@REGDB_E_CLASSNOTREG = common dso_local global i32 0, align 4
@MSHCTX_INPROC = common dso_local global i32 0, align 4
@MSHLFLAGS_NORMAL = common dso_local global i32 0, align 4
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apartment*, %struct.host_object_params*)* @apartment_hostobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apartment_hostobject(%struct.apartment* %0, %struct.host_object_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apartment*, align 8
  %5 = alloca %struct.host_object_params*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.apartment* %0, %struct.apartment** %4, align 8
  store %struct.host_object_params* %1, %struct.host_object_params** %5, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.host_object_params*, %struct.host_object_params** %5, align 8
  %17 = getelementptr inbounds %struct.host_object_params, %struct.host_object_params* %16, i32 0, i32 2
  %18 = call i32 @debugstr_guid(i32* %17)
  %19 = load %struct.host_object_params*, %struct.host_object_params** %5, align 8
  %20 = getelementptr inbounds %struct.host_object_params, %struct.host_object_params* %19, i32 0, i32 1
  %21 = call i32 @debugstr_guid(i32* %20)
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.host_object_params*, %struct.host_object_params** %5, align 8
  %24 = getelementptr inbounds %struct.host_object_params, %struct.host_object_params* %23, i32 0, i32 4
  %25 = call i32 @ARRAY_SIZE(i32* %15)
  %26 = call i32 @get_object_dll_path(i32* %24, i32* %15, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load %struct.host_object_params*, %struct.host_object_params** %5, align 8
  %30 = getelementptr inbounds %struct.host_object_params, %struct.host_object_params* %29, i32 0, i32 2
  %31 = call i32 @debugstr_guid(i32* %30)
  %32 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @REGDB_E_CLASSNOTREG, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %74

34:                                               ; preds = %2
  %35 = load %struct.apartment*, %struct.apartment** %4, align 8
  %36 = load %struct.host_object_params*, %struct.host_object_params** %5, align 8
  %37 = getelementptr inbounds %struct.host_object_params, %struct.host_object_params* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.host_object_params*, %struct.host_object_params** %5, align 8
  %40 = getelementptr inbounds %struct.host_object_params, %struct.host_object_params* %39, i32 0, i32 2
  %41 = load %struct.host_object_params*, %struct.host_object_params** %5, align 8
  %42 = getelementptr inbounds %struct.host_object_params, %struct.host_object_params* %41, i32 0, i32 1
  %43 = bitcast i32** %6 to i8**
  %44 = call i32 @apartment_getclassobject(%struct.apartment* %35, i32* %15, i32 %38, i32* %40, i32* %42, i8** %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %74

50:                                               ; preds = %34
  %51 = load %struct.host_object_params*, %struct.host_object_params** %5, align 8
  %52 = getelementptr inbounds %struct.host_object_params, %struct.host_object_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.host_object_params*, %struct.host_object_params** %5, align 8
  %55 = getelementptr inbounds %struct.host_object_params, %struct.host_object_params* %54, i32 0, i32 1
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @MSHCTX_INPROC, align 4
  %58 = load i32, i32* @MSHLFLAGS_NORMAL, align 4
  %59 = call i32 @CoMarshalInterface(i32 %53, i32* %55, i32* %56, i32 %57, i32* null, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @IUnknown_Release(i32* %64)
  br label %66

66:                                               ; preds = %63, %50
  %67 = load %struct.host_object_params*, %struct.host_object_params** %5, align 8
  %68 = getelementptr inbounds %struct.host_object_params, %struct.host_object_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @apartment_hostobject.llZero, align 4
  %71 = load i32, i32* @STREAM_SEEK_SET, align 4
  %72 = call i32 @IStream_Seek(i32 %69, i32 %70, i32 %71, i32* null)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %66, %48, %28
  %75 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debugstr_guid(i32*) #2

declare dso_local i32 @get_object_dll_path(i32*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @WARN(i8*, i32) #2

declare dso_local i32 @apartment_getclassobject(%struct.apartment*, i32*, i32, i32*, i32*, i8**) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @CoMarshalInterface(i32, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @IUnknown_Release(i32*) #2

declare dso_local i32 @IStream_Seek(i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
