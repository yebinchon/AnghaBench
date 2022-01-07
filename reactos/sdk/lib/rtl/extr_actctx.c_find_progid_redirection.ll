; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_progid_redirection.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_progid_redirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32*, i32, %struct.TYPE_12__*, i32, i32*, i32, %struct.progidredirect_data* }
%struct.progidredirect_data = type { i32 }
%struct.string_index = type { i32 }
%struct.guidsection_header = type opaque
%struct.strsection_header = type { i32 }

@PROGIDREDIRECT_SECTION = common dso_local global i32 0, align 4
@STATUS_SXS_KEY_NOT_FOUND = common dso_local global i64 0, align 8
@ACTCTX_SECTION_KEYED_DATA = common dso_local global i32 0, align 4
@ulAssemblyRosterIndex = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32*, %struct.TYPE_10__*)* @find_progid_redirection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_progid_redirection(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.progidredirect_data*, align 8
  %9 = alloca %struct.string_index*, align 8
  %10 = alloca %struct.guidsection_header*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.strsection_header*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PROGIDREDIRECT_SECTION, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* @STATUS_SXS_KEY_NOT_FOUND, align 8
  store i64 %21, i64* %4, align 8
  br label %151

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = bitcast %struct.guidsection_header** %10 to %struct.strsection_header**
  %30 = call i64 @build_comserver_section(%struct.TYPE_11__* %28, %struct.strsection_header** %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* %11, align 8
  store i64 %34, i64* %4, align 8
  br label %151

35:                                               ; preds = %27
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = bitcast i32* %37 to i8**
  %39 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %40 = bitcast %struct.guidsection_header* %39 to %struct.strsection_header*
  %41 = call i64 @InterlockedCompareExchangePointer(i8** %38, %struct.strsection_header* %40, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = call i32 (...) @RtlGetProcessHeap()
  %45 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %46 = bitcast %struct.guidsection_header* %45 to %struct.strsection_header*
  %47 = call i32 @RtlFreeHeap(i32 %44, i32 0, %struct.strsection_header* %46)
  br label %48

48:                                               ; preds = %43, %35
  br label %49

49:                                               ; preds = %48, %22
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %73, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = call i64 @build_progid_section(%struct.TYPE_11__* %55, %struct.strsection_header** %12)
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i64, i64* %13, align 8
  store i64 %60, i64* %4, align 8
  br label %151

61:                                               ; preds = %54
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = bitcast %struct.TYPE_12__** %63 to i8**
  %65 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %66 = call i64 @InterlockedCompareExchangePointer(i8** %64, %struct.strsection_header* %65, i32* null)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = call i32 (...) @RtlGetProcessHeap()
  %70 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %71 = call i32 @RtlFreeHeap(i32 %69, i32 0, %struct.strsection_header* %70)
  br label %72

72:                                               ; preds = %68, %61
  br label %73

73:                                               ; preds = %72, %49
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call %struct.string_index* @find_string_index(%struct.TYPE_12__* %76, i32* %77)
  store %struct.string_index* %78, %struct.string_index** %9, align 8
  %79 = load %struct.string_index*, %struct.string_index** %9, align 8
  %80 = icmp ne %struct.string_index* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %73
  %82 = load i64, i64* @STATUS_SXS_KEY_NOT_FOUND, align 8
  store i64 %82, i64* %4, align 8
  br label %151

83:                                               ; preds = %73
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %149

86:                                               ; preds = %83
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = load %struct.string_index*, %struct.string_index** %9, align 8
  %89 = call %struct.progidredirect_data* @get_progid_data(%struct.TYPE_11__* %87, %struct.string_index* %88)
  store %struct.progidredirect_data* %89, %struct.progidredirect_data** %8, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.progidredirect_data*, %struct.progidredirect_data** %8, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 9
  store %struct.progidredirect_data* %92, %struct.progidredirect_data** %94, align 8
  %95 = load %struct.progidredirect_data*, %struct.progidredirect_data** %8, align 8
  %96 = getelementptr inbounds %struct.progidredirect_data, %struct.progidredirect_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = bitcast %struct.TYPE_12__* %102 to i32*
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %103, i64 %109
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 7
  store i32* %110, i32** %112, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 5
  store %struct.TYPE_12__* %122, %struct.TYPE_12__** %124, align 8
  %125 = call i32 (...) @RtlGetProcessHeap()
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = call i32 @RtlSizeHeap(i32 %125, i32 0, %struct.TYPE_12__* %128)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  store i32* null, i32** %133, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @ACTCTX_SECTION_KEYED_DATA, align 4
  %138 = load i32, i32* @ulAssemblyRosterIndex, align 4
  %139 = call i64 @FIELD_OFFSET(i32 %137, i32 %138)
  %140 = add i64 %139, 4
  %141 = icmp uge i64 %136, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %86
  %143 = load %struct.string_index*, %struct.string_index** %9, align 8
  %144 = getelementptr inbounds %struct.string_index, %struct.string_index* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %142, %86
  br label %149

149:                                              ; preds = %148, %83
  %150 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %150, i64* %4, align 8
  br label %151

151:                                              ; preds = %149, %81, %59, %33, %20
  %152 = load i64, i64* %4, align 8
  ret i64 %152
}

declare dso_local i64 @build_comserver_section(%struct.TYPE_11__*, %struct.strsection_header**) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, %struct.strsection_header*, i32*) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, %struct.strsection_header*) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i64 @build_progid_section(%struct.TYPE_11__*, %struct.strsection_header**) #1

declare dso_local %struct.string_index* @find_string_index(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.progidredirect_data* @get_progid_data(%struct.TYPE_11__*, %struct.string_index*) #1

declare dso_local i32 @RtlSizeHeap(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
