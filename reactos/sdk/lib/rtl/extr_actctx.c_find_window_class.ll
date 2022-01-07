; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_window_class.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_window_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64, i32, i32*, i32, %struct.TYPE_13__*, i64, i32*, i64, %struct.wndclass_redirect_data* }
%struct.wndclass_redirect_data = type { i64, i64, i64 }
%struct.string_index = type { i64, i32, i32 }
%struct.strsection_header = type { i32 }

@WINDOWCLASS_SECTION = common dso_local global i32 0, align 4
@STATUS_SXS_KEY_NOT_FOUND = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@HASH_STRING_ALGORITHM_X65599 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"hash collision 0x%08x, %wZ, %S\0A\00", align 1
@ACTCTX_SECTION_KEYED_DATA = common dso_local global i32 0, align 4
@ulAssemblyRosterIndex = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_15__*)* @find_window_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_window_class(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.string_index*, align 8
  %9 = alloca %struct.string_index*, align 8
  %10 = alloca %struct.wndclass_redirect_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.strsection_header*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store %struct.string_index* null, %struct.string_index** %9, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @WINDOWCLASS_SECTION, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* @STATUS_SXS_KEY_NOT_FOUND, align 8
  store i64 %23, i64* %4, align 8
  br label %165

24:                                               ; preds = %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = icmp ne %struct.TYPE_13__* %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = call i64 @build_wndclass_section(%struct.TYPE_16__* %30, %struct.strsection_header** %13)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* %14, align 8
  store i64 %35, i64* %4, align 8
  br label %165

36:                                               ; preds = %29
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = bitcast %struct.TYPE_13__** %38 to i8**
  %40 = load %struct.strsection_header*, %struct.strsection_header** %13, align 8
  %41 = call i64 @InterlockedCompareExchangePointer(i8** %39, %struct.strsection_header* %40, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = call i32 (...) @RtlGetProcessHeap()
  %45 = load %struct.strsection_header*, %struct.strsection_header** %13, align 8
  %46 = call i32 @RtlFreeHeap(i32 %44, i32 0, %struct.strsection_header* %45)
  br label %47

47:                                               ; preds = %43, %36
  br label %48

48:                                               ; preds = %47, %24
  store i64 0, i64* %11, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = load i32, i32* @HASH_STRING_ALGORITHM_X65599, align 4
  %52 = call i32 @RtlHashUnicodeString(%struct.TYPE_14__* %49, i32 %50, i32 %51, i64* %11)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = call %struct.string_index* @get_wndclass_first_index(%struct.TYPE_16__* %53)
  store %struct.string_index* %54, %struct.string_index** %8, align 8
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %96, %48
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %56, %61
  br i1 %62, label %63, label %99

63:                                               ; preds = %55
  %64 = load %struct.string_index*, %struct.string_index** %8, align 8
  %65 = getelementptr inbounds %struct.string_index, %struct.string_index* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %63
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = bitcast %struct.TYPE_13__* %72 to i32*
  %74 = load %struct.string_index*, %struct.string_index** %8, align 8
  %75 = getelementptr inbounds %struct.string_index, %struct.string_index* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  store i32* %78, i32** %15, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @strcmpiW(i32* %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %69
  %86 = load %struct.string_index*, %struct.string_index** %8, align 8
  store %struct.string_index* %86, %struct.string_index** %9, align 8
  br label %99

87:                                               ; preds = %69
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %88, %struct.TYPE_14__* %89, i32* %90)
  br label %92

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %63
  %94 = load %struct.string_index*, %struct.string_index** %8, align 8
  %95 = getelementptr inbounds %struct.string_index, %struct.string_index* %94, i32 1
  store %struct.string_index* %95, %struct.string_index** %8, align 8
  br label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %55

99:                                               ; preds = %85, %55
  %100 = load %struct.string_index*, %struct.string_index** %9, align 8
  %101 = icmp ne %struct.string_index* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* @STATUS_SXS_KEY_NOT_FOUND, align 8
  store i64 %103, i64* %4, align 8
  br label %165

104:                                              ; preds = %99
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = icmp ne %struct.TYPE_15__* %105, null
  br i1 %106, label %107, label %163

107:                                              ; preds = %104
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = load %struct.string_index*, %struct.string_index** %9, align 8
  %110 = call %struct.wndclass_redirect_data* @get_wndclass_data(%struct.TYPE_16__* %108, %struct.string_index* %109)
  store %struct.wndclass_redirect_data* %110, %struct.wndclass_redirect_data** %10, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %10, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 9
  store %struct.wndclass_redirect_data* %113, %struct.wndclass_redirect_data** %115, align 8
  %116 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %10, align 8
  %117 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %10, align 8
  %120 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %10, align 8
  %124 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = add i64 %126, 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 8
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 7
  store i32* null, i32** %131, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 6
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 5
  store %struct.TYPE_13__* %136, %struct.TYPE_13__** %138, align 8
  %139 = call i32 (...) @RtlGetProcessHeap()
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = call i32 @RtlSizeHeap(i32 %139, i32 0, %struct.TYPE_13__* %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 3
  store i32* null, i32** %147, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* @ACTCTX_SECTION_KEYED_DATA, align 4
  %152 = load i32, i32* @ulAssemblyRosterIndex, align 4
  %153 = call i64 @FIELD_OFFSET(i32 %151, i32 %152)
  %154 = add i64 %153, 8
  %155 = icmp uge i64 %150, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %107
  %157 = load %struct.string_index*, %struct.string_index** %9, align 8
  %158 = getelementptr inbounds %struct.string_index, %struct.string_index* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %156, %107
  br label %163

163:                                              ; preds = %162, %104
  %164 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %164, i64* %4, align 8
  br label %165

165:                                              ; preds = %163, %102, %34, %22
  %166 = load i64, i64* %4, align 8
  ret i64 %166
}

declare dso_local i64 @build_wndclass_section(%struct.TYPE_16__*, %struct.strsection_header**) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, %struct.strsection_header*, i32*) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, %struct.strsection_header*) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @RtlHashUnicodeString(%struct.TYPE_14__*, i32, i32, i64*) #1

declare dso_local %struct.string_index* @get_wndclass_first_index(%struct.TYPE_16__*) #1

declare dso_local i32 @strcmpiW(i32*, i32) #1

declare dso_local i32 @DPRINT1(i8*, i64, %struct.TYPE_14__*, i32*) #1

declare dso_local %struct.wndclass_redirect_data* @get_wndclass_data(%struct.TYPE_16__*, %struct.string_index*) #1

declare dso_local i32 @RtlSizeHeap(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
