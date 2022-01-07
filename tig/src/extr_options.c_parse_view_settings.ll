; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_parse_view_settings.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_parse_view_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.enum_map_entry* }
%struct.enum_map_entry = type { i32 }
%struct.view_column = type { i32 }

@SIZEOF_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"-view-\00", align 1
@view_column_type_map = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view_column**, i8*, i8**)* @parse_view_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_view_settings(%struct.view_column** %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view_column**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.enum_map_entry*, align 8
  %16 = alloca i32, align 4
  store %struct.view_column** %0, %struct.view_column*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %17 = load i32, i32* @SIZEOF_STR, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = trunc i64 %18 to i32
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @enum_name_copy(i8* %20, i32 %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %28

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i8* [ %20, %25 ], [ %27, %26 ]
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %90

33:                                               ; preds = %28
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @strlen(i8* %38)
  store i64 %39, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %86, %33
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @view_column_type_map, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %40
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @view_column_type_map, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.enum_map_entry*, %struct.enum_map_entry** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.enum_map_entry, %struct.enum_map_entry* %49, i64 %51
  store %struct.enum_map_entry* %52, %struct.enum_map_entry** %15, align 8
  %53 = load %struct.enum_map_entry*, %struct.enum_map_entry** %15, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds %struct.enum_map_entry, %struct.enum_map_entry* %53, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @enum_equals(i32 %57, i8* %54, i64 %55)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %46
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i8**, i8*** %7, align 8
  %64 = call i32 @parse_view_column_config(i8* %61, i32 %62, i8* null, i8** %63)
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %95

65:                                               ; preds = %46
  %66 = load %struct.enum_map_entry*, %struct.enum_map_entry** %15, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds %struct.enum_map_entry, %struct.enum_map_entry* %66, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @enum_equals_prefix(i32 %70, i8* %67, i64 %68)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i8*, i8** %12, align 8
  %77 = load %struct.enum_map_entry*, %struct.enum_map_entry** %15, align 8
  %78 = getelementptr inbounds %struct.enum_map_entry, %struct.enum_map_entry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8**, i8*** %7, align 8
  %84 = call i32 @parse_view_column_config(i8* %74, i32 %75, i8* %82, i8** %83)
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %95

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %14, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %40

89:                                               ; preds = %40
  br label %90

90:                                               ; preds = %89, %28
  %91 = load %struct.view_column**, %struct.view_column*** %5, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i8**, i8*** %7, align 8
  %94 = call i32 @parse_view_config(%struct.view_column** %91, i8* %92, i8** %93)
  store i32 %94, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %95

95:                                               ; preds = %90, %73, %60
  %96 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @enum_name_copy(i8*, i32, i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @STRING_SIZE(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @enum_equals(i32, i8*, i64) #2

declare dso_local i32 @parse_view_column_config(i8*, i32, i8*, i8**) #2

declare dso_local i64 @enum_equals_prefix(i32, i8*, i64) #2

declare dso_local i32 @parse_view_config(%struct.view_column**, i8*, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
