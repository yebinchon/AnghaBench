; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_modified_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_modified_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datatype_t = type { i8*, i32 }
%struct.parsed_symbol = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.array = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@UNDNAME_NO_MS_KEYWORDS = common dso_local global i32 0, align 4
@UNDNAME_NO_LEADING_UNDERSCORES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" ptr64\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" __ptr64\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" &%s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" &%s volatile\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" *%s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" *%s const\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" *%s volatile\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c" *%s const volatile\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c" (%s%s)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s[%s]\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%s %s%s\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datatype_t*, %struct.parsed_symbol*, %struct.array*, i8, i32)* @get_modified_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_modified_type(%struct.datatype_t* %0, %struct.parsed_symbol* %1, %struct.array* %2, i8 signext %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.datatype_t*, align 8
  %8 = alloca %struct.parsed_symbol*, align 8
  %9 = alloca %struct.array*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.datatype_t, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.datatype_t* %0, %struct.datatype_t** %7, align 8
  store %struct.parsed_symbol* %1, %struct.parsed_symbol** %8, align 8
  store %struct.array* %2, %struct.array** %9, align 8
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %19 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %20 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 69
  br i1 %24, label %25, label %47

25:                                               ; preds = %5
  %26 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %27 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @UNDNAME_NO_MS_KEYWORDS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %25
  %33 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %34 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @UNDNAME_NO_LEADING_UNDERSCORES, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %41

40:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %41

41:                                               ; preds = %40, %39
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %44 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  br label %47

47:                                               ; preds = %42, %5
  %48 = load i8, i8* %10, align 1
  %49 = sext i8 %48 to i32
  switch i32 %49, label %75 [
    i32 65, label %50
    i32 66, label %54
    i32 80, label %58
    i32 81, label %62
    i32 82, label %66
    i32 83, label %70
    i32 63, label %74
  ]

50:                                               ; preds = %47
  %51 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  store i8* %53, i8** %13, align 8
  br label %77

54:                                               ; preds = %47
  %55 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  store i8* %57, i8** %13, align 8
  br label %77

58:                                               ; preds = %47
  %59 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  store i8* %61, i8** %13, align 8
  br label %77

62:                                               ; preds = %47
  %63 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %64)
  store i8* %65, i8** %13, align 8
  br label %77

66:                                               ; preds = %47
  %67 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %68)
  store i8* %69, i8** %13, align 8
  br label %77

70:                                               ; preds = %47
  %71 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %72)
  store i8* %73, i8** %13, align 8
  br label %77

74:                                               ; preds = %47
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %77

75:                                               ; preds = %47
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %6, align 4
  br label %209

77:                                               ; preds = %74, %70, %66, %62, %58, %54, %50
  %78 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %79 = call i64 @get_modifier(%struct.parsed_symbol* %78, i8** %12, i8** %14)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %207

81:                                               ; preds = %77
  %82 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %83 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %15, align 4
  %86 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %87 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 89
  br i1 %91, label %92, label %140

92:                                               ; preds = %81
  %93 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %94 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %94, align 8
  %97 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %98 = call i8* @get_number(%struct.parsed_symbol* %97)
  store i8* %98, i8** %17, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %6, align 4
  br label %209

102:                                              ; preds = %92
  %103 = load i8*, i8** %17, align 8
  %104 = call i32 @atoi(i8* %103)
  store i32 %104, i32* %18, align 4
  %105 = load i8*, i8** %13, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 32
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load i8*, i8** %12, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %13, align 8
  br label %116

116:                                              ; preds = %113, %110, %102
  %117 = load i8*, i8** %12, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %121, i8* %122)
  store i8* %123, i8** %13, align 8
  store i8* null, i8** %12, align 8
  br label %128

124:                                              ; preds = %116
  %125 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %126)
  store i8* %127, i8** %13, align 8
  br label %128

128:                                              ; preds = %124, %119
  br label %129

129:                                              ; preds = %133, %128
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %18, align 4
  %132 = icmp ne i32 %130, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %137 = call i8* @get_number(%struct.parsed_symbol* %136)
  %138 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %135, i8* %137)
  store i8* %138, i8** %13, align 8
  br label %129

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %81
  %141 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %142 = load %struct.array*, %struct.array** %9, align 8
  %143 = load i32, i32* @FALSE, align 4
  %144 = call i32 @demangle_datatype(%struct.parsed_symbol* %141, %struct.datatype_t* %16, %struct.array* %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %140
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %6, align 4
  br label %209

148:                                              ; preds = %140
  %149 = load i8*, i8** %12, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %153 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %16, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = load i8*, i8** %13, align 8
  %157 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %154, i8* %155, i8* %156)
  %158 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %159 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  br label %198

160:                                              ; preds = %148
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %190, label %163

163:                                              ; preds = %160
  %164 = load i8*, i8** %13, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %190

169:                                              ; preds = %163
  %170 = load i8*, i8** %13, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 42
  br i1 %174, label %175, label %190

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %16, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %16, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @strlen(i8* %179)
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %177, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 42
  br i1 %186, label %187, label %190

187:                                              ; preds = %175
  %188 = load i8*, i8** %13, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %13, align 8
  br label %190

190:                                              ; preds = %187, %175, %169, %163, %160
  %191 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %192 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %16, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load i8*, i8** %13, align 8
  %195 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %193, i8* %194)
  %196 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %197 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %196, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %190, %151
  %199 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %16, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %202 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* %15, align 4
  %204 = load %struct.parsed_symbol*, %struct.parsed_symbol** %8, align 8
  %205 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 4
  br label %207

207:                                              ; preds = %198, %77
  %208 = load i32, i32* @TRUE, align 4
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %207, %146, %100, %75
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

declare dso_local i8* @str_printf(%struct.parsed_symbol*, i8*, i8*, ...) #1

declare dso_local i64 @get_modifier(%struct.parsed_symbol*, i8**, i8**) #1

declare dso_local i8* @get_number(%struct.parsed_symbol*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @demangle_datatype(%struct.parsed_symbol*, %struct.datatype_t*, %struct.array*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
