; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_class.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_symbol = type { i8*, i8*, %struct.array, %struct.array }
%struct.array = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_symbol*)* @get_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_class(%struct.parsed_symbol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parsed_symbol*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.array, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.parsed_symbol* %0, %struct.parsed_symbol** %3, align 8
  store i8* null, i8** %4, align 8
  br label %8

8:                                                ; preds = %123, %1
  %9 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %10 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 64
  br i1 %14, label %15, label %124

15:                                               ; preds = %8
  %16 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %17 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %108 [
    i32 0, label %21
    i32 48, label %23
    i32 49, label %23
    i32 50, label %23
    i32 51, label %23
    i32 52, label %23
    i32 53, label %23
    i32 54, label %23
    i32 55, label %23
    i32 56, label %23
    i32 57, label %23
    i32 63, label %34
  ]

21:                                               ; preds = %15
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %130

23:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  %24 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %25 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %24, i32 0, i32 3
  %26 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %27 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %27, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 %31, 48
  %33 = call i8* @str_array_get_ref(%struct.array* %25, i32 %32)
  store i8* %33, i8** %4, align 8
  br label %111

34:                                               ; preds = %15
  %35 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %36 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %36, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %97 [
    i32 36, label %41
    i32 63, label %59
  ]

41:                                               ; preds = %34
  %42 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %43 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %43, align 8
  %46 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %47 = call i8* @get_template_name(%struct.parsed_symbol* %46)
  store i8* %47, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %53 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %52, i32 0, i32 3
  %54 = call i32 @str_array_push(%struct.parsed_symbol* %50, i8* %51, i32 -1, %struct.array* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %2, align 4
  br label %130

58:                                               ; preds = %49, %41
  br label %107

59:                                               ; preds = %34
  %60 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %61 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %60, i32 0, i32 2
  %62 = bitcast %struct.array* %5 to i8*
  %63 = bitcast %struct.array* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 8 %63, i64 8, i1 false)
  %64 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %65 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.array, %struct.array* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %6, align 4
  %68 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %69 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.array, %struct.array* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %73 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %72, i32 0, i32 2
  %74 = call i32 @str_array_init(%struct.array* %73)
  %75 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %76 = call i32 @symbol_demangle(%struct.parsed_symbol* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %59
  %79 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %80 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %81 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @str_printf(%struct.parsed_symbol* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %82)
  store i8* %83, i8** %4, align 8
  br label %84

84:                                               ; preds = %78, %59
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %87 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.array, %struct.array* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %91 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.array, %struct.array* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %94 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %93, i32 0, i32 2
  %95 = bitcast %struct.array* %94 to i8*
  %96 = bitcast %struct.array* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 4 %96, i64 8, i1 false)
  br label %107

97:                                               ; preds = %34
  %98 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %99 = call i8* @get_number(%struct.parsed_symbol* %98)
  store i8* %99, i8** %4, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %2, align 4
  br label %130

103:                                              ; preds = %97
  %104 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = call i8* @str_printf(%struct.parsed_symbol* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %105)
  store i8* %106, i8** %4, align 8
  br label %107

107:                                              ; preds = %103, %84, %58
  br label %111

108:                                              ; preds = %15
  %109 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %110 = call i8* @get_literal_string(%struct.parsed_symbol* %109)
  store i8* %110, i8** %4, align 8
  br label %111

111:                                              ; preds = %108, %107, %23
  %112 = load i8*, i8** %4, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %118 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %117, i32 0, i32 2
  %119 = call i32 @str_array_push(%struct.parsed_symbol* %115, i8* %116, i32 -1, %struct.array* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %114, %111
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %2, align 4
  br label %130

123:                                              ; preds = %114
  br label %8

124:                                              ; preds = %8
  %125 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %126 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %126, align 8
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %124, %121, %101, %56, %21
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i8* @str_array_get_ref(%struct.array*, i32) #1

declare dso_local i8* @get_template_name(%struct.parsed_symbol*) #1

declare dso_local i32 @str_array_push(%struct.parsed_symbol*, i8*, i32, %struct.array*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @str_array_init(%struct.array*) #1

declare dso_local i32 @symbol_demangle(%struct.parsed_symbol*) #1

declare dso_local i8* @str_printf(%struct.parsed_symbol*, i8*, i8*) #1

declare dso_local i8* @get_number(%struct.parsed_symbol*) #1

declare dso_local i8* @get_literal_string(%struct.parsed_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
