; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_axinstall.c_install_inf_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_axinstall.c_install_inf_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@install_inf_file.setup_hooksW = internal constant [12 x i8] c"Setup Hooks\00", align 1
@install_inf_file.add_codeW = internal constant [9 x i8] c"Add.Code\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"[Setup Hooks] key: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not get key value\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"[Add.Code] key: %s\0A\00", align 1
@RSC_FLAG_INF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"RunSetupCommandW failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @install_inf_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_inf_file(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca [2048 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %10 = load i64, i64* @TRUE, align 8
  store i64 %10, i64* %6, align 8
  %11 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %12 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %13 = call i32 @ARRAY_SIZE(i8* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @GetPrivateProfileStringW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @install_inf_file.setup_hooksW, i64 0, i64 0), i8* null, i32* null, i8* %11, i32 %13, i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %1
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %6, align 8
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %54, %20
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @debugstr_w(i8* %28)
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %34 = call i32 @ARRAY_SIZE(i8* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @GetPrivateProfileStringW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @install_inf_file.setup_hooksW, i64 0, i64 0), i8* %31, i32* null, i8* %32, i32 %34, i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %27
  %42 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @E_FAIL, align 4
  store i32 %43, i32* %2, align 4
  br label %148

44:                                               ; preds = %27
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %47 = call i32 @process_hook_section(%struct.TYPE_4__* %45, i8* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @FAILED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %2, align 4
  br label %148

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %7, align 8
  %56 = call i64 @strlenW(i8* %55)
  %57 = add nsw i64 %56, 1
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  store i8* %59, i8** %7, align 8
  br label %23

60:                                               ; preds = %23
  br label %61

61:                                               ; preds = %60, %1
  %62 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %63 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %64 = call i32 @ARRAY_SIZE(i8* %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @GetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @install_inf_file.add_codeW, i64 0, i64 0), i8* null, i32* null, i8* %62, i32 %64, i32 %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %123

71:                                               ; preds = %61
  %72 = load i64, i64* @FALSE, align 8
  store i64 %72, i64* %6, align 8
  %73 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %116, %71
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %122

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @debugstr_w(i8* %79)
  %81 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %85 = call i32 @ARRAY_SIZE(i8* %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @GetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @install_inf_file.add_codeW, i64 0, i64 0), i8* %82, i32* null, i8* %83, i32 %85, i32 %88)
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %78
  %93 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @E_FAIL, align 4
  store i32 %94, i32* %2, align 4
  br label %148

95:                                               ; preds = %78
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @RSC_FLAG_INF, align 4
  %107 = call i32 @RunSetupCommandW(i32 %98, i32 %101, i8* %102, i32 %105, i32* null, i32* null, i32 %106, i32* null)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @FAILED(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %95
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %2, align 4
  br label %148

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %115
  %117 = load i8*, i8** %7, align 8
  %118 = call i64 @strlenW(i8* %117)
  %119 = add nsw i64 %118, 1
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 %119
  store i8* %121, i8** %7, align 8
  br label %74

122:                                              ; preds = %74
  br label %123

123:                                              ; preds = %122, %61
  %124 = load i64, i64* %6, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %123
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @RSC_FLAG_INF, align 4
  %137 = call i32 @RunSetupCommandW(i32 %129, i32 %132, i8* null, i32 %135, i32* null, i32* null, i32 %136, i32* null)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i64 @FAILED(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %126
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %2, align 4
  br label %148

145:                                              ; preds = %126
  br label %146

146:                                              ; preds = %145, %123
  %147 = load i32, i32* @S_OK, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %141, %111, %92, %51, %41
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i64 @GetPrivateProfileStringW(i8*, i8*, i32*, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @process_hook_section(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i32 @RunSetupCommandW(i32, i32, i8*, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
