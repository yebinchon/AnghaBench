; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_print_index.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_print_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_14__**, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_16__ = type { i64, i32*, i64 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Root\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"* {\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @rofi_theme_print_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rofi_theme_print_index(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %121

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %8, align 8
  br label %21

21:                                               ; preds = %31, %19
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @g_strcmp0(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %40

31:                                               ; preds = %24
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_16__* @g_list_prepend(%struct.TYPE_16__* %32, i32 %35)
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %7, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %8, align 8
  br label %21

40:                                               ; preds = %30, %21
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = call i64 @g_list_length(%struct.TYPE_16__* %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %40
  store i32 4, i32* %6, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = call %struct.TYPE_16__* @g_list_first(%struct.TYPE_16__* %45)
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %9, align 8
  br label %47

47:                                               ; preds = %78, %44
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %49 = icmp ne %struct.TYPE_16__* %48, null
  br i1 %49, label %50, label %81

50:                                               ; preds = %47
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* @stdout, align 4
  %57 = call i32 @fputs(i8* %55, i32 %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %50
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @putchar(i8 signext 32)
  br label %77

69:                                               ; preds = %62, %50
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 @putchar(i8 signext 46)
  br label %76

76:                                               ; preds = %74, %69
  br label %77

77:                                               ; preds = %76, %67
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = call %struct.TYPE_16__* @g_list_next(%struct.TYPE_16__* %79)
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %9, align 8
  br label %47

81:                                               ; preds = %47
  %82 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %85

83:                                               ; preds = %40
  store i32 4, i32* %6, align 4
  %84 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %81
  store i64 0, i64* %11, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @g_hash_table_iter_init(i32* %3, i32 %88)
  br label %90

90:                                               ; preds = %93, %85
  %91 = call i64 @g_hash_table_iter_next(i32* %3, i64* %4, i64* %5)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i64, i64* %5, align 8
  %95 = inttoptr i64 %94 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %95, %struct.TYPE_15__** %12, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @strlen(i32 %98)
  %100 = load i64, i64* %11, align 8
  %101 = call i64 @MAX(i32 %99, i64 %100)
  store i64 %101, i64* %11, align 8
  br label %90

102:                                              ; preds = %90
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @g_hash_table_iter_init(i32* %3, i32 %105)
  br label %107

107:                                              ; preds = %110, %102
  %108 = call i64 @g_hash_table_iter_next(i32* %3, i64* %4, i64* %5)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i64, i64* %5, align 8
  %112 = inttoptr i64 %111 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %112, %struct.TYPE_15__** %13, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %116 = call i32 @rofi_theme_print_property_index(i64 %113, i32 %114, %struct.TYPE_15__* %115)
  br label %107

117:                                              ; preds = %107
  %118 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = call i32 @g_list_free(%struct.TYPE_16__* %119)
  br label %121

121:                                              ; preds = %117, %1
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %136, %121
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %122
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %131, i64 %133
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  call void @rofi_theme_print_index(%struct.TYPE_14__* %135)
  br label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %14, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %14, align 4
  br label %122

139:                                              ; preds = %122
  ret void
}

declare dso_local i64 @g_strcmp0(i32, i8*) #1

declare dso_local %struct.TYPE_16__* @g_list_prepend(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @g_list_length(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @g_list_first(%struct.TYPE_16__*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local %struct.TYPE_16__* @g_list_next(%struct.TYPE_16__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @g_hash_table_iter_init(i32*, i32) #1

declare dso_local i64 @g_hash_table_iter_next(i32*, i64*, i64*) #1

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @rofi_theme_print_property_index(i64, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
