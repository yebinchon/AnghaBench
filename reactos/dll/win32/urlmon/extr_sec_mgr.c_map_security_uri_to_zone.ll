; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_map_security_uri_to_zone.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_map_security_uri_to_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@URLZONE_INVALID = common dso_local global i64 0, align 8
@fileW = common dso_local global i32 0, align 4
@URLZONE_LOCAL_MACHINE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@URLZONE_INTERNET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"unsupported drive type %d\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*)* @map_security_uri_to_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_security_uri_to_zone(i32* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [20 x i8], align 16
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load i64, i64* @URLZONE_INVALID, align 8
  %14 = load i64*, i64** %5, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @IUri_GetSchemeName(i32* %15, i8** %7)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @FAILED(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %3, align 8
  br label %126

22:                                               ; preds = %2
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @fileW, align 4
  %25 = call i32 @strcmpiW(i8* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %105, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @IUri_GetPath(i32* %28, i8** %8)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @FAILED(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @SysFreeString(i8* %34)
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %3, align 8
  br label %126

37:                                               ; preds = %27
  %38 = load i8*, i8** %8, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 47
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = call i64 @is_drive_path(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %10, align 8
  br label %52

50:                                               ; preds = %42, %37
  %51 = load i8*, i8** %8, align 8
  store i8* %51, i8** %10, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i8*, i8** %10, align 8
  %54 = call i8* @strchrW(i8* %53, i8 signext 58)
  store i8* %54, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %102

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = add nsw i64 %61, 1
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %64 = call i32 @ARRAY_SIZE(i8* %63)
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %56
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = add nsw i64 %74, 1
  %76 = mul i64 %75, 1
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(i8* %68, i8* %69, i32 %77)
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = add nsw i64 %83, 1
  %85 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %84
  store i8 0, i8* %85, align 1
  %86 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %87 = call i32 @GetDriveTypeW(i8* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  switch i32 %88, label %98 [
    i32 128, label %89
    i32 132, label %89
    i32 129, label %90
    i32 133, label %90
    i32 134, label %90
    i32 131, label %90
    i32 130, label %94
  ]

89:                                               ; preds = %67, %67
  br label %101

90:                                               ; preds = %67, %67, %67, %67
  %91 = load i64, i64* @URLZONE_LOCAL_MACHINE, align 8
  %92 = load i64*, i64** %5, align 8
  store i64 %91, i64* %92, align 8
  %93 = load i64, i64* @S_OK, align 8
  store i64 %93, i64* %6, align 8
  br label %101

94:                                               ; preds = %67
  %95 = load i64, i64* @URLZONE_INTERNET, align 8
  %96 = load i64*, i64** %5, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i64, i64* @S_OK, align 8
  store i64 %97, i64* %6, align 8
  br label %101

98:                                               ; preds = %67
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %98, %94, %90, %89
  br label %102

102:                                              ; preds = %101, %56, %52
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @SysFreeString(i8* %103)
  br label %105

105:                                              ; preds = %102, %22
  %106 = load i64*, i64** %5, align 8
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @URLZONE_INVALID, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load i32*, i32** %4, align 8
  %112 = load i64*, i64** %5, align 8
  %113 = call i64 @get_zone_from_domains(i32* %111, i64* %112)
  store i64 %113, i64* %6, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @S_FALSE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i8*, i8** %7, align 8
  %119 = load i64*, i64** %5, align 8
  %120 = call i64 @get_zone_from_reg(i8* %118, i64* %119)
  store i64 %120, i64* %6, align 8
  br label %121

121:                                              ; preds = %117, %110
  br label %122

122:                                              ; preds = %121, %105
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @SysFreeString(i8* %123)
  %125 = load i64, i64* %6, align 8
  store i64 %125, i64* %3, align 8
  br label %126

126:                                              ; preds = %122, %33, %20
  %127 = load i64, i64* %3, align 8
  ret i64 %127
}

declare dso_local i64 @IUri_GetSchemeName(i32*, i8**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @strcmpiW(i8*, i32) #1

declare dso_local i64 @IUri_GetPath(i32*, i8**) #1

declare dso_local i32 @SysFreeString(i8*) #1

declare dso_local i64 @is_drive_path(i8*) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @GetDriveTypeW(i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @get_zone_from_domains(i32*, i64*) #1

declare dso_local i64 @get_zone_from_reg(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
