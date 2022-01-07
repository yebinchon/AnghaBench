; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_register.c_write_coclass.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_register.c_write_coclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32 }

@ATTR_UUID = common dso_local global i32 0, align 4
@ATTR_HELPSTRING = common dso_local global i32 0, align 4
@ATTR_PROGID = common dso_local global i32 0, align 4
@ATTR_VIPROGID = common dso_local global i32 0, align 4
@ATTR_VERSION = common dso_local global i32 0, align 4
@indent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"'%s' = s '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"InprocServer32 = s '%%MODULE%%' { val ThreadingModel = s '%s' }\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ProgId = s '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"TypeLib = s '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Version = s '%u.%u'\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"VersionIndependentProgId = s '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)* @write_coclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_coclass(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ATTR_UUID, align 4
  %17 = call i8* @get_attrp(i32 %15, i32 %16)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATTR_HELPSTRING, align 4
  %23 = call i8* @get_attrp(i32 %21, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ATTR_PROGID, align 4
  %28 = call i8* @get_attrp(i32 %26, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ATTR_VIPROGID, align 4
  %33 = call i8* @get_attrp(i32 %31, i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = call i8* @get_coclass_threading(%struct.TYPE_7__* %34)
  store i8* %35, i8** %10, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ATTR_VERSION, align 4
  %40 = call i32 @get_attrv(i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %127

44:                                               ; preds = %2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %127

54:                                               ; preds = %50, %47, %44
  %55 = load i8*, i8** %7, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %7, align 8
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* @indent, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @format_uuid(i32* %63)
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 (i32, i8*, ...) @put_str(i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %64, i8* %65)
  %67 = load i32, i32* @indent, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @indent, align 4
  %69 = call i32 (i32, i8*, ...) @put_str(i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load i32, i32* @indent, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 (i32, i8*, ...) @put_str(i32 %73, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72, %61
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @indent, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 (i32, i8*, ...) @put_str(i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = icmp ne %struct.TYPE_6__* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ATTR_UUID, align 4
  %91 = call i8* @get_attrp(i32 %89, i32 %90)
  %92 = bitcast i8* %91 to i32*
  store i32* %92, i32** %12, align 8
  %93 = load i32, i32* @indent, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @format_uuid(i32* %94)
  %96 = call i32 (i32, i8*, ...) @put_str(i32 %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %86
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ATTR_VERSION, align 4
  %104 = call i32 @get_attrv(i32 %102, i32 %103)
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %99, %86
  br label %106

106:                                              ; preds = %105, %83
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32, i32* @indent, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @MAJORVERSION(i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @MINORVERSION(i32 %113)
  %115 = call i32 (i32, i8*, ...) @put_str(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %112, i32 %114)
  br label %116

116:                                              ; preds = %109, %106
  %117 = load i8*, i8** %9, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* @indent, align 4
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 (i32, i8*, ...) @put_str(i32 %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load i32, i32* @indent, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* @indent, align 4
  %126 = call i32 (i32, i8*, ...) @put_str(i32 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %53, %43
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i8* @get_attrp(i32, i32) #1

declare dso_local i8* @get_coclass_threading(%struct.TYPE_7__*) #1

declare dso_local i32 @get_attrv(i32, i32) #1

declare dso_local i32 @put_str(i32, i8*, ...) #1

declare dso_local i32 @format_uuid(i32*) #1

declare dso_local i32 @MAJORVERSION(i32) #1

declare dso_local i32 @MINORVERSION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
