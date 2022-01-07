; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_unregister_metadatareaders.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_unregister_metadatareaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_metadatareader = type { i32* }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@CATID_WICMetadataReader = common dso_local global i32 0, align 4
@instance_keyname = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_metadatareader*)* @unregister_metadatareaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_metadatareaders(%struct.regsvr_metadatareader* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regsvr_metadatareader*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [39 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regsvr_metadatareader* %0, %struct.regsvr_metadatareader** %3, align 8
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %11 = load i32, i32* @clsid_keyname, align 4
  %12 = load i32, i32* @KEY_READ, align 4
  %13 = load i32, i32* @KEY_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @RegOpenKeyExW(i32 %10, i32 %11, i32 0, i32 %14, i32* %5)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @S_OK, align 4
  store i32 %20, i32* %2, align 4
  br label %130

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %27 = call i32 @StringFromGUID2(i32* @CATID_WICMetadataReader, i32* %26, i32 39)
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %30 = load i32, i32* @KEY_READ, align 4
  %31 = load i32, i32* @KEY_WRITE, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @RegCreateKeyExW(i32 %28, i32* %29, i32 0, i32* null, i32 0, i32 %32, i32* null, i32* %7, i32* null)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** @instance_keyname, align 8
  %40 = load i32, i32* @KEY_READ, align 4
  %41 = load i32, i32* @KEY_WRITE, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @RegCreateKeyExW(i32 %38, i32* %39, i32 0, i32* null, i32 0, i32 %42, i32* null, i32* %8, i32* null)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %112

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @ERROR_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @RegCloseKey(i32 %54)
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %21
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %119

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %108, %62
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @ERROR_SUCCESS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %3, align 8
  %69 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br label %72

72:                                               ; preds = %67, %63
  %73 = phi i1 [ false, %63 ], [ %71, %67 ]
  br i1 %73, label %74, label %111

74:                                               ; preds = %72
  %75 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %3, align 8
  %76 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %79 = call i32 @StringFromGUID2(i32* %77, i32* %78, i32 39)
  %80 = load i32, i32* %5, align 4
  %81 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %82 = call i64 @RegDeleteTreeW(i32 %80, i32* %81)
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %86, %74
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @ERROR_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %112

93:                                               ; preds = %88
  %94 = load i32, i32* %8, align 4
  %95 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %96 = call i64 @RegDeleteTreeW(i32 %94, i32* %95)
  store i64 %96, i64* %4, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %101, i64* %4, align 8
  br label %102

102:                                              ; preds = %100, %93
  %103 = load i64, i64* %4, align 8
  %104 = load i64, i64* @ERROR_SUCCESS, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %112

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %3, align 8
  %110 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %109, i32 1
  store %struct.regsvr_metadatareader* %110, %struct.regsvr_metadatareader** %3, align 8
  br label %63

111:                                              ; preds = %72
  br label %112

112:                                              ; preds = %111, %106, %92, %47
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @RegCloseKey(i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @RegCloseKey(i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @RegCloseKey(i32 %117)
  br label %119

119:                                              ; preds = %112, %61
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* @ERROR_SUCCESS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i64, i64* %4, align 8
  %125 = call i32 @HRESULT_FROM_WIN32(i64 %124)
  br label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @S_OK, align 4
  br label %128

128:                                              ; preds = %126, %123
  %129 = phi i32 [ %125, %123 ], [ %127, %126 ]
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %19
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i64 @RegOpenKeyExW(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @StringFromGUID2(i32*, i32*, i32) #1

declare dso_local i64 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegDeleteTreeW(i32, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
