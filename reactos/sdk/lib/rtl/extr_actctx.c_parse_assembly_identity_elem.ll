; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_assembly_identity_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_assembly_identity_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly_identity = type { i8*, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@g_nameW = common dso_local global i32 0, align 4
@typeW = common dso_local global i32 0, align 4
@versionW = common dso_local global i32 0, align 4
@processorArchitectureW = common dso_local global i32 0, align 4
@publicKeyTokenW = common dso_local global i32 0, align 4
@languageW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unsupported yet language attribute (%.*S)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@assemblyIdentityW = common dso_local global i32 0, align 4
@asmv1W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.assembly_identity*)* @parse_assembly_identity_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_assembly_identity_elem(i32* %0, i32* %1, %struct.assembly_identity* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.assembly_identity*, align 8
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.assembly_identity* %2, %struct.assembly_identity** %7, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %10, align 8
  br label %15

15:                                               ; preds = %105, %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @next_xml_attr(i32* %16, %struct.TYPE_8__* %8, %struct.TYPE_8__* %9, i64* %11, i64* %10)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %106

19:                                               ; preds = %15
  %20 = load i32, i32* @g_nameW, align 4
  %21 = call i64 @xmlstr_cmp(%struct.TYPE_8__* %8, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = call i8* @xmlstrdupW(%struct.TYPE_8__* %9)
  %25 = load %struct.assembly_identity*, %struct.assembly_identity** %7, align 8
  %26 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = icmp ne i8* %24, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %4, align 8
  br label %119

30:                                               ; preds = %23
  br label %105

31:                                               ; preds = %19
  %32 = load i32, i32* @typeW, align 4
  %33 = call i64 @xmlstr_cmp(%struct.TYPE_8__* %8, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = call i8* @xmlstrdupW(%struct.TYPE_8__* %9)
  %37 = load %struct.assembly_identity*, %struct.assembly_identity** %7, align 8
  %38 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = icmp ne i8* %36, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %4, align 8
  br label %119

42:                                               ; preds = %35
  br label %104

43:                                               ; preds = %31
  %44 = load i32, i32* @versionW, align 4
  %45 = call i64 @xmlstr_cmp(%struct.TYPE_8__* %8, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.assembly_identity*, %struct.assembly_identity** %7, align 8
  %49 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %48, i32 0, i32 3
  %50 = call i32 @parse_version(%struct.TYPE_8__* %9, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* %4, align 8
  br label %119

54:                                               ; preds = %47
  br label %103

55:                                               ; preds = %43
  %56 = load i32, i32* @processorArchitectureW, align 4
  %57 = call i64 @xmlstr_cmp(%struct.TYPE_8__* %8, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = call i8* @xmlstrdupW(%struct.TYPE_8__* %9)
  %61 = load %struct.assembly_identity*, %struct.assembly_identity** %7, align 8
  %62 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = icmp ne i8* %60, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @FALSE, align 8
  store i64 %65, i64* %4, align 8
  br label %119

66:                                               ; preds = %59
  br label %102

67:                                               ; preds = %55
  %68 = load i32, i32* @publicKeyTokenW, align 4
  %69 = call i64 @xmlstr_cmp(%struct.TYPE_8__* %8, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = call i8* @xmlstrdupW(%struct.TYPE_8__* %9)
  %73 = load %struct.assembly_identity*, %struct.assembly_identity** %7, align 8
  %74 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = icmp ne i8* %72, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = load i64, i64* @FALSE, align 8
  store i64 %77, i64* %4, align 8
  br label %119

78:                                               ; preds = %71
  br label %101

79:                                               ; preds = %67
  %80 = load i32, i32* @languageW, align 4
  %81 = call i64 @xmlstr_cmp(%struct.TYPE_8__* %8, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @DPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %87)
  %89 = call i8* @xmlstrdupW(%struct.TYPE_8__* %9)
  %90 = load %struct.assembly_identity*, %struct.assembly_identity** %7, align 8
  %91 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = icmp ne i8* %89, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %83
  %94 = load i64, i64* @FALSE, align 8
  store i64 %94, i64* %4, align 8
  br label %119

95:                                               ; preds = %83
  br label %100

96:                                               ; preds = %79
  %97 = call i32 @xmlstr2unicode(%struct.TYPE_8__* %8)
  store i32 %97, i32* %13, align 4
  %98 = call i32 @xmlstr2unicode(%struct.TYPE_8__* %9)
  store i32 %98, i32* %12, align 4
  %99 = call i32 @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %13, i32* %12)
  br label %100

100:                                              ; preds = %96, %95
  br label %101

101:                                              ; preds = %100, %78
  br label %102

102:                                              ; preds = %101, %66
  br label %103

103:                                              ; preds = %102, %54
  br label %104

104:                                              ; preds = %103, %42
  br label %105

105:                                              ; preds = %104, %30
  br label %15

106:                                              ; preds = %15
  %107 = load i64, i64* %11, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %10, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109, %106
  %113 = load i64, i64* %10, align 8
  store i64 %113, i64* %4, align 8
  br label %119

114:                                              ; preds = %109
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* @assemblyIdentityW, align 4
  %117 = load i32, i32* @asmv1W, align 4
  %118 = call i64 @parse_expect_end_elem(i32* %115, i32 %116, i32 %117)
  store i64 %118, i64* %4, align 8
  br label %119

119:                                              ; preds = %114, %112, %93, %76, %64, %52, %40, %28
  %120 = load i64, i64* %4, align 8
  ret i64 %120
}

declare dso_local i64 @next_xml_attr(i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, i64*, i64*) #1

declare dso_local i64 @xmlstr_cmp(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @xmlstrdupW(%struct.TYPE_8__*) #1

declare dso_local i32 @parse_version(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @DPRINT(i8*, i32, i32) #1

declare dso_local i32 @xmlstr2unicode(%struct.TYPE_8__*) #1

declare dso_local i32 @DPRINT1(i8*, i32*, i32*) #1

declare dso_local i64 @parse_expect_end_elem(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
