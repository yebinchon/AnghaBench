; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_parse_suminfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_parse_suminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i8*, i32 }

@PID_PAGECOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"version: %d\0A\00", align 1
@PID_TEMPLATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"template: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid template string %s\0A\00", align 1
@ERROR_PATCH_PACKAGE_INVALID = common dso_local global i32 0, align 4
@PLATFORM_UNKNOWN = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"unknown platform %s\0A\00", align 1
@ERROR_INSTALL_PLATFORM_UNSUPPORTED = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @parse_suminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_suminfo(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @PID_PAGECOUNT, align 4
  %14 = call i32 @msi_suminfo_get_int32(i32* %12, i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @PID_TEMPLATE, align 4
  %23 = call i64* @msi_suminfo_dup_string(i32* %21, i32 %22)
  store i64* %23, i64** %6, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %27, i32* %3, align 4
  br label %168

28:                                               ; preds = %2
  %29 = load i64*, i64** %6, align 8
  %30 = call i32 @debugstr_w(i64* %29)
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i64*, i64** %6, align 8
  %33 = call i64* @strchrW(i64* %32, i8 signext 59)
  store i64* %33, i64** %7, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %28
  %37 = load i64*, i64** %6, align 8
  %38 = call i32 @debugstr_w(i64* %37)
  %39 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i64*, i64** %6, align 8
  %41 = call i32 @msi_free(i64* %40)
  %42 = load i32, i32* @ERROR_PATCH_PACKAGE_INVALID, align 4
  store i32 %42, i32* %3, align 4
  br label %168

43:                                               ; preds = %28
  %44 = load i64*, i64** %7, align 8
  store i64 0, i64* %44, align 8
  %45 = load i64*, i64** %6, align 8
  store i64* %45, i64** %9, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = call i64* @strchrW(i64* %46, i8 signext 44)
  store i64* %47, i64** %8, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64*, i64** %8, align 8
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i64*, i64** %9, align 8
  %53 = call i8* @parse_platform(i64* %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %75, %51
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** @PLATFORM_UNKNOWN, align 8
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i64*, i64** %8, align 8
  %64 = icmp ne i64* %63, null
  br label %65

65:                                               ; preds = %62, %56
  %66 = phi i1 [ false, %56 ], [ %64, %62 ]
  br i1 %66, label %67, label %80

67:                                               ; preds = %65
  %68 = load i64*, i64** %8, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  store i64* %69, i64** %9, align 8
  %70 = load i64*, i64** %9, align 8
  %71 = call i64* @strchrW(i64* %70, i8 signext 44)
  store i64* %71, i64** %8, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i64*, i64** %8, align 8
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %73, %67
  %76 = load i64*, i64** %9, align 8
  %77 = call i8* @parse_platform(i64* %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  br label %56

80:                                               ; preds = %65
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** @PLATFORM_UNKNOWN, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i64*, i64** %6, align 8
  %88 = call i32 @debugstr_w(i64* %87)
  %89 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i64*, i64** %6, align 8
  %91 = call i32 @msi_free(i64* %90)
  %92 = load i32, i32* @ERROR_INSTALL_PLATFORM_UNSUPPORTED, align 4
  store i32 %92, i32* %3, align 4
  br label %168

93:                                               ; preds = %80
  %94 = load i64*, i64** %7, align 8
  %95 = getelementptr inbounds i64, i64* %94, i32 1
  store i64* %95, i64** %7, align 8
  %96 = load i64*, i64** %7, align 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %93
  %100 = load i64*, i64** %6, align 8
  %101 = call i32 @msi_free(i64* %100)
  %102 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %102, i32* %3, align 4
  br label %168

103:                                              ; preds = %93
  store i32 1, i32* %11, align 4
  %104 = load i64*, i64** %7, align 8
  store i64* %104, i64** %8, align 8
  br label %105

105:                                              ; preds = %112, %103
  %106 = load i64*, i64** %8, align 8
  %107 = call i64* @strchrW(i64* %106, i8 signext 44)
  store i64* %107, i64** %8, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %109
  %113 = load i64*, i64** %8, align 8
  %114 = getelementptr inbounds i64, i64* %113, i32 1
  store i64* %114, i64** %8, align 8
  br label %105

115:                                              ; preds = %105
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = call i32* @msi_alloc(i32 %119)
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i32* %120, i32** %122, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %115
  %128 = load i64*, i64** %6, align 8
  %129 = call i32 @msi_free(i64* %128)
  %130 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %130, i32* %3, align 4
  br label %168

131:                                              ; preds = %115
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %155, %131
  %133 = load i64*, i64** %7, align 8
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %160

136:                                              ; preds = %132
  %137 = load i64*, i64** %7, align 8
  %138 = call i64* @strchrW(i64* %137, i8 signext 44)
  store i64* %138, i64** %8, align 8
  %139 = load i64*, i64** %8, align 8
  %140 = icmp ne i64* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i64*, i64** %8, align 8
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %141, %136
  %144 = load i64*, i64** %7, align 8
  %145 = call i32 @atoiW(i64* %144)
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %145, i32* %151, align 4
  %152 = load i64*, i64** %8, align 8
  %153 = icmp ne i64* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %143
  br label %160

155:                                              ; preds = %143
  %156 = load i64*, i64** %8, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 1
  store i64* %157, i64** %7, align 8
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %132

160:                                              ; preds = %154, %132
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i64*, i64** %6, align 8
  %166 = call i32 @msi_free(i64* %165)
  %167 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %160, %127, %99, %86, %36, %26
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @msi_suminfo_get_int32(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64* @msi_suminfo_dup_string(i32*, i32) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i64* @strchrW(i64*, i8 signext) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @msi_free(i64*) #1

declare dso_local i8* @parse_platform(i64*) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i32 @atoiW(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
