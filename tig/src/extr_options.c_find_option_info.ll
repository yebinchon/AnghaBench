; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_find_option_info.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_find_option_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option_info = type { i32, i32 }

@SIZEOF_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"view_settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.option_info* @find_option_info(%struct.option_info* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.option_info*, align 8
  %6 = alloca %struct.option_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.option_info* %0, %struct.option_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* @SIZEOF_STR, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %4
  %26 = load i64, i64* %10, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @string_enum_compare(i8* %31, i8* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %36, %30, %25, %4
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %112, %39
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %115

45:                                               ; preds = %40
  %46 = load %struct.option_info*, %struct.option_info** %6, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.option_info, %struct.option_info* %46, i64 %48
  %50 = getelementptr inbounds %struct.option_info, %struct.option_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strcmp(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %45
  %55 = load %struct.option_info*, %struct.option_info** %6, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.option_info, %struct.option_info* %55, i64 %57
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = bitcast %struct.option_info* %58 to i64*
  %62 = load i64, i64* %61, align 4
  %63 = call i64 @enum_equals_prefix(i64 %62, i8* %59, i64 %60)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load %struct.option_info*, %struct.option_info** %6, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.option_info, %struct.option_info* %66, i64 %68
  store %struct.option_info* %69, %struct.option_info** %5, align 8
  store i32 1, i32* %14, align 4
  br label %116

70:                                               ; preds = %54, %45
  %71 = load %struct.option_info*, %struct.option_info** %6, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.option_info, %struct.option_info* %71, i64 %73
  %75 = load i8*, i8** %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = bitcast %struct.option_info* %74 to i64*
  %78 = load i64, i64* %77, align 4
  %79 = call i64 @enum_equals(i64 %78, i8* %75, i64 %76)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %70
  %82 = load %struct.option_info*, %struct.option_info** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.option_info, %struct.option_info* %82, i64 %84
  store %struct.option_info* %85, %struct.option_info** %5, align 8
  store i32 1, i32* %14, align 4
  br label %116

86:                                               ; preds = %70
  %87 = trunc i64 %18 to i32
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.option_info*, %struct.option_info** %6, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.option_info, %struct.option_info* %89, i64 %91
  %93 = getelementptr inbounds %struct.option_info, %struct.option_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @enum_name_prefixed(i8* %20, i32 %87, i8* %88, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %86
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @strlen(i8* %20)
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load i8*, i8** %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @string_enum_compare(i8* %20, i8* %102, i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load %struct.option_info*, %struct.option_info** %6, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.option_info, %struct.option_info* %107, i64 %109
  store %struct.option_info* %110, %struct.option_info** %5, align 8
  store i32 1, i32* %14, align 4
  br label %116

111:                                              ; preds = %101, %97, %86
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %40

115:                                              ; preds = %40
  store %struct.option_info* null, %struct.option_info** %5, align 8
  store i32 1, i32* %14, align 4
  br label %116

116:                                              ; preds = %115, %106, %81, %65
  %117 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load %struct.option_info*, %struct.option_info** %5, align 8
  ret %struct.option_info* %118
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @string_enum_compare(i8*, i8*, i64) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @enum_equals_prefix(i64, i8*, i64) #1

declare dso_local i64 @enum_equals(i64, i8*, i64) #1

declare dso_local i64 @enum_name_prefixed(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
