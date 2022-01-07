; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_args.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_symbol = type { i8* }
%struct.array = type { i32, i8** }
%struct.datatype_t = type { i8*, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%cvoid%c\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%c%s%s %c\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%c%s%s%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parsed_symbol*, %struct.array*, i64, i8, i8)* @get_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_args(%struct.parsed_symbol* %0, %struct.array* %1, i64 %2, i8 signext %3, i8 signext %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.parsed_symbol*, align 8
  %8 = alloca %struct.array*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.datatype_t, align 8
  %13 = alloca %struct.array, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.parsed_symbol* %0, %struct.parsed_symbol** %7, align 8
  store %struct.array* %1, %struct.array** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8 %3, i8* %10, align 1
  store i8 %4, i8* %11, align 1
  store i8* null, i8** %14, align 8
  %17 = call i32 @str_array_init(%struct.array* %13)
  br label %18

18:                                               ; preds = %69, %5
  %19 = load %struct.parsed_symbol*, %struct.parsed_symbol** %7, align 8
  %20 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %18
  %25 = load %struct.parsed_symbol*, %struct.parsed_symbol** %7, align 8
  %26 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 64
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.parsed_symbol*, %struct.parsed_symbol** %7, align 8
  %33 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  br label %70

36:                                               ; preds = %24
  %37 = load %struct.parsed_symbol*, %struct.parsed_symbol** %7, align 8
  %38 = load %struct.array*, %struct.array** %8, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @demangle_datatype(%struct.parsed_symbol* %37, %struct.datatype_t* %12, %struct.array* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i8* null, i8** %6, align 8
  br label %174

43:                                               ; preds = %36
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %12, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %70

52:                                               ; preds = %46, %43
  %53 = load %struct.parsed_symbol*, %struct.parsed_symbol** %7, align 8
  %54 = load %struct.parsed_symbol*, %struct.parsed_symbol** %7, align 8
  %55 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %12, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %12, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i8* (%struct.parsed_symbol*, i8*, ...) @str_printf(%struct.parsed_symbol* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %56, i32 %58)
  %60 = call i32 @str_array_push(%struct.parsed_symbol* %53, i8* %59, i32 -1, %struct.array* %13)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  store i8* null, i8** %6, align 8
  br label %174

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %12, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %70

69:                                               ; preds = %63
  br label %18

70:                                               ; preds = %68, %51, %31, %18
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.parsed_symbol*, %struct.parsed_symbol** %7, align 8
  %75 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %75, align 8
  %78 = load i8, i8* %76, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 90
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i8* null, i8** %6, align 8
  br label %174

82:                                               ; preds = %73, %70
  %83 = getelementptr inbounds %struct.array, %struct.array* %13, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.array, %struct.array* %13, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.array, %struct.array* %13, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %90, %82
  %98 = load %struct.parsed_symbol*, %struct.parsed_symbol** %7, align 8
  %99 = load i8, i8* %10, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* %11, align 1
  %102 = sext i8 %101 to i32
  %103 = call i8* (%struct.parsed_symbol*, i8*, ...) @str_printf(%struct.parsed_symbol* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %102)
  store i8* %103, i8** %6, align 8
  br label %174

104:                                              ; preds = %90, %86
  store i32 1, i32* %16, align 4
  br label %105

105:                                              ; preds = %120, %104
  %106 = load i32, i32* %16, align 4
  %107 = getelementptr inbounds %struct.array, %struct.array* %13, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ult i32 %106, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load %struct.parsed_symbol*, %struct.parsed_symbol** %7, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = getelementptr inbounds %struct.array, %struct.array* %13, i32 0, i32 1
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %16, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* (%struct.parsed_symbol*, i8*, ...) @str_printf(%struct.parsed_symbol* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %112, i8* %118)
  store i8* %119, i8** %14, align 8
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %16, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %16, align 4
  br label %105

123:                                              ; preds = %105
  %124 = load i8*, i8** %14, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i8*, i8** %14, align 8
  br label %133

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.array, %struct.array* %13, i32 0, i32 1
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  br label %133

133:                                              ; preds = %128, %126
  %134 = phi i8* [ %127, %126 ], [ %132, %128 ]
  store i8* %134, i8** %15, align 8
  %135 = load i8, i8* %11, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 62
  br i1 %137, label %138, label %160

138:                                              ; preds = %133
  %139 = load i8*, i8** %15, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = call i32 @strlen(i8* %140)
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %139, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 62
  br i1 %147, label %148, label %160

148:                                              ; preds = %138
  %149 = load %struct.parsed_symbol*, %struct.parsed_symbol** %7, align 8
  %150 = load i8, i8* %10, align 1
  %151 = sext i8 %150 to i32
  %152 = getelementptr inbounds %struct.array, %struct.array* %13, i32 0, i32 1
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** %14, align 8
  %157 = load i8, i8* %11, align 1
  %158 = sext i8 %157 to i32
  %159 = call i8* (%struct.parsed_symbol*, i8*, ...) @str_printf(%struct.parsed_symbol* %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %151, i8* %155, i8* %156, i32 %158)
  store i8* %159, i8** %14, align 8
  br label %172

160:                                              ; preds = %138, %133
  %161 = load %struct.parsed_symbol*, %struct.parsed_symbol** %7, align 8
  %162 = load i8, i8* %10, align 1
  %163 = sext i8 %162 to i32
  %164 = getelementptr inbounds %struct.array, %struct.array* %13, i32 0, i32 1
  %165 = load i8**, i8*** %164, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = load i8*, i8** %14, align 8
  %169 = load i8, i8* %11, align 1
  %170 = sext i8 %169 to i32
  %171 = call i8* (%struct.parsed_symbol*, i8*, ...) @str_printf(%struct.parsed_symbol* %161, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %163, i8* %167, i8* %168, i32 %170)
  store i8* %171, i8** %14, align 8
  br label %172

172:                                              ; preds = %160, %148
  %173 = load i8*, i8** %14, align 8
  store i8* %173, i8** %6, align 8
  br label %174

174:                                              ; preds = %172, %97, %81, %62, %42
  %175 = load i8*, i8** %6, align 8
  ret i8* %175
}

declare dso_local i32 @str_array_init(%struct.array*) #1

declare dso_local i32 @demangle_datatype(%struct.parsed_symbol*, %struct.datatype_t*, %struct.array*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @str_array_push(%struct.parsed_symbol*, i8*, i32, %struct.array*) #1

declare dso_local i8* @str_printf(%struct.parsed_symbol*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
