; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_handle_data.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_symbol = type { i32, i32*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.datatype_t = type { i8*, i8* }
%struct.array = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@UNDNAME_NO_ACCESS_SPECIFIERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"private: \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"protected: \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"public: \00", align 1
@UNDNAME_NO_MEMBER_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"{for `%s'}\00", align 1
@UNDNAME_NAME_ONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"%s%s%s%s%s%s%s%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_symbol*)* @handle_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_data(%struct.parsed_symbol* %0) #0 {
  %2 = alloca %struct.parsed_symbol*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.datatype_t, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.array, align 4
  %12 = alloca i8*, align 8
  store %struct.parsed_symbol* %0, %struct.parsed_symbol** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %8, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %15 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @UNDNAME_NO_ACCESS_SPECIFIERS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %22 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %28 [
    i32 48, label %25
    i32 49, label %26
    i32 50, label %27
  ]

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %28

26:                                               ; preds = %20
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %28

27:                                               ; preds = %20
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %28

28:                                               ; preds = %20, %27, %26, %25
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %31 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @UNDNAME_NO_MEMBER_TYPE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %29
  %37 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %38 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 48
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %44 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %46, 50
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %49

49:                                               ; preds = %48, %42, %36
  br label %50

50:                                               ; preds = %49, %29
  %51 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %52 = call i8* @get_class_string(%struct.parsed_symbol* %51, i32 0)
  store i8* %52, i8** %8, align 8
  %53 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %54 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %54, align 8
  %57 = load i32, i32* %55, align 4
  switch i32 %57, label %123 [
    i32 48, label %58
    i32 49, label %58
    i32 50, label %58
    i32 51, label %58
    i32 52, label %58
    i32 53, label %58
    i32 54, label %96
    i32 55, label %96
    i32 56, label %120
    i32 57, label %120
  ]

58:                                               ; preds = %50, %50, %50, %50, %50, %50
  %59 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %60 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %10, align 4
  %63 = call i32 @str_array_init(%struct.array* %11)
  %64 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %65 = load i32, i32* @FALSE, align 4
  %66 = call i32 @demangle_datatype(%struct.parsed_symbol* %64, %struct.datatype_t* %7, %struct.array* %11, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %168

69:                                               ; preds = %58
  %70 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %71 = call i32 @get_modifier(%struct.parsed_symbol* %70, i8** %5, i8** %6)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %168

74:                                               ; preds = %69
  %75 = load i8*, i8** %5, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %82, i8* %83)
  store i8* %84, i8** %5, align 8
  br label %91

85:                                               ; preds = %77, %74
  %86 = load i8*, i8** %5, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %5, align 8
  br label %90

90:                                               ; preds = %88, %85
  br label %91

91:                                               ; preds = %90, %80
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %94 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %124

96:                                               ; preds = %50, %50
  %97 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %7, i32 0, i32 1
  store i8* null, i8** %97, align 8
  %98 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %7, i32 0, i32 0
  store i8* null, i8** %98, align 8
  %99 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %100 = call i32 @get_modifier(%struct.parsed_symbol* %99, i8** %5, i8** %6)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  br label %168

103:                                              ; preds = %96
  %104 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %105 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 64
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  store i8* null, i8** %12, align 8
  %110 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %111 = call i8* @get_class_name(%struct.parsed_symbol* %110)
  store i8* %111, i8** %12, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  br label %168

114:                                              ; preds = %109
  %115 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %116)
  %118 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %7, i32 0, i32 1
  store i8* %117, i8** %118, align 8
  br label %119

119:                                              ; preds = %114, %103
  br label %124

120:                                              ; preds = %50, %50
  %121 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %7, i32 0, i32 1
  store i8* null, i8** %121, align 8
  %122 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %7, i32 0, i32 0
  store i8* null, i8** %122, align 8
  store i8* null, i8** %5, align 8
  br label %124

123:                                              ; preds = %50
  br label %168

124:                                              ; preds = %120, %119, %91
  %125 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %126 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @UNDNAME_NAME_ONLY, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  store i8* null, i8** %5, align 8
  %132 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %7, i32 0, i32 1
  store i8* null, i8** %132, align 8
  %133 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %7, i32 0, i32 0
  store i8* null, i8** %133, align 8
  br label %134

134:                                              ; preds = %131, %124
  %135 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %136 = load i8*, i8** %3, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %7, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %7, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br label %146

146:                                              ; preds = %142, %134
  %147 = phi i1 [ false, %134 ], [ %145, %142 ]
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* null
  %150 = load i8*, i8** %5, align 8
  %151 = load i8*, i8** %5, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %7, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br label %157

157:                                              ; preds = %153, %146
  %158 = phi i1 [ true, %146 ], [ %156, %153 ]
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* null
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %7, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %136, i8* %137, i8* %139, i8* %149, i8* %150, i8* %160, i8* %161, i8* %163)
  %165 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %166 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* @TRUE, align 4
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %157, %123, %113, %102, %73, %68
  %169 = load i32, i32* %9, align 4
  ret i32 %169
}

declare dso_local i8* @get_class_string(%struct.parsed_symbol*, i32) #1

declare dso_local i32 @str_array_init(%struct.array*) #1

declare dso_local i32 @demangle_datatype(%struct.parsed_symbol*, %struct.datatype_t*, %struct.array*, i32) #1

declare dso_local i32 @get_modifier(%struct.parsed_symbol*, i8**, i8**) #1

declare dso_local i8* @str_printf(%struct.parsed_symbol*, i8*, i8*, ...) #1

declare dso_local i8* @get_class_name(%struct.parsed_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
