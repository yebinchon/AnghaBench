; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_add_progid_record.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_add_progid_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.strsection_header = type { i32 }
%struct.entity_array = type { i32, %struct.entity* }
%struct.entity = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, %struct.progids }
%struct.progids = type { i32, i64* }
%struct.string_index = type { i32 }
%struct.comclassredirect_data = type { i32 }
%struct.guid_index = type { i32 }

@ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.strsection_header*, %struct.entity_array*, %struct.string_index**, i32*, i32*, i32)* @add_progid_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_progid_record(%struct.TYPE_8__* %0, %struct.strsection_header* %1, %struct.entity_array* %2, %struct.string_index** %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.strsection_header*, align 8
  %10 = alloca %struct.entity_array*, align 8
  %11 = alloca %struct.string_index**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.entity*, align 8
  %18 = alloca %struct.progids*, align 8
  %19 = alloca %struct.comclassredirect_data*, align 8
  %20 = alloca %struct.guid_index*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.strsection_header* %1, %struct.strsection_header** %9, align 8
  store %struct.entity_array* %2, %struct.entity_array** %10, align 8
  store %struct.string_index** %3, %struct.string_index*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %108, %7
  %24 = load i32, i32* %15, align 4
  %25 = load %struct.entity_array*, %struct.entity_array** %10, align 8
  %26 = getelementptr inbounds %struct.entity_array, %struct.entity_array* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %111

29:                                               ; preds = %23
  %30 = load %struct.entity_array*, %struct.entity_array** %10, align 8
  %31 = getelementptr inbounds %struct.entity_array, %struct.entity_array* %30, i32 0, i32 1
  %32 = load %struct.entity*, %struct.entity** %31, align 8
  %33 = load i32, i32* %15, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.entity, %struct.entity* %32, i64 %34
  store %struct.entity* %35, %struct.entity** %17, align 8
  %36 = load %struct.entity*, %struct.entity** %17, align 8
  %37 = getelementptr inbounds %struct.entity, %struct.entity* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %107

41:                                               ; preds = %29
  %42 = load %struct.entity*, %struct.entity** %17, align 8
  %43 = getelementptr inbounds %struct.entity, %struct.entity* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store %struct.progids* %45, %struct.progids** %18, align 8
  %46 = load %struct.entity*, %struct.entity** %17, align 8
  %47 = getelementptr inbounds %struct.entity, %struct.entity* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @RtlInitUnicodeString(i32* %21, i32 %50)
  %52 = call i32 @RtlGUIDFromString(i32* %21, i32* %22)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.guid_index* @find_guid_index(i32 %55, i32* %22)
  store %struct.guid_index* %56, %struct.guid_index** %20, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = load %struct.guid_index*, %struct.guid_index** %20, align 8
  %59 = call %struct.comclassredirect_data* @get_comclass_data(%struct.TYPE_8__* %57, %struct.guid_index* %58)
  store %struct.comclassredirect_data* %59, %struct.comclassredirect_data** %19, align 8
  %60 = load %struct.entity*, %struct.entity** %17, align 8
  %61 = getelementptr inbounds %struct.entity, %struct.entity* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %41
  %67 = load %struct.strsection_header*, %struct.strsection_header** %9, align 8
  %68 = load %struct.entity*, %struct.entity** %17, align 8
  %69 = getelementptr inbounds %struct.entity, %struct.entity* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.comclassredirect_data*, %struct.comclassredirect_data** %19, align 8
  %74 = getelementptr inbounds %struct.comclassredirect_data, %struct.comclassredirect_data* %73, i32 0, i32 0
  %75 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @write_progid_record(%struct.strsection_header* %67, i64 %72, i32* %74, %struct.string_index** %75, i32* %76, i32* %77, i32 %78)
  br label %80

80:                                               ; preds = %66, %41
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %103, %80
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.progids*, %struct.progids** %18, align 8
  %84 = getelementptr inbounds %struct.progids, %struct.progids* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ult i32 %82, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = load %struct.strsection_header*, %struct.strsection_header** %9, align 8
  %89 = load %struct.progids*, %struct.progids** %18, align 8
  %90 = getelementptr inbounds %struct.progids, %struct.progids* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %16, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.comclassredirect_data*, %struct.comclassredirect_data** %19, align 8
  %97 = getelementptr inbounds %struct.comclassredirect_data, %struct.comclassredirect_data* %96, i32 0, i32 0
  %98 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @write_progid_record(%struct.strsection_header* %88, i64 %95, i32* %97, %struct.string_index** %98, i32* %99, i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %16, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %81

106:                                              ; preds = %81
  br label %107

107:                                              ; preds = %106, %29
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %15, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %23

111:                                              ; preds = %23
  ret void
}

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i32 @RtlGUIDFromString(i32*, i32*) #1

declare dso_local %struct.guid_index* @find_guid_index(i32, i32*) #1

declare dso_local %struct.comclassredirect_data* @get_comclass_data(%struct.TYPE_8__*, %struct.guid_index*) #1

declare dso_local i32 @write_progid_record(%struct.strsection_header*, i64, i32*, %struct.string_index**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
