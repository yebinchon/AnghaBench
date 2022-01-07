; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_criteria.c_parse_token.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_criteria.c_parse_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.criteria = type { i32, i32, i8, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i32 }
%struct.sway_seat = type { i32 }
%struct.sway_container = type { %struct.sway_view* }
%struct.sway_view = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [29 x i8] c"Token '%s' is not recognized\00", align 1
@error = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Token '%s' requires a value\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"__focused__\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"The value for 'con_id' should be '__focused__' or numeric\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"latest\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"newest\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"recent\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"oldest\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.10 = private unnamed_addr constant [89 x i8] c"The value for 'urgent' must be 'first', 'last', 'latest', 'newest', 'oldest' or 'recent'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.criteria*, i8*, i8*)* @parse_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_token(%struct.criteria* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.criteria*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sway_seat*, align 8
  %15 = alloca %struct.sway_container*, align 8
  %16 = alloca %struct.sway_view*, align 8
  store %struct.criteria* %0, %struct.criteria** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @token_from_name(i8* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 135
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = add nsw i32 %23, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @malloc(i32 %28)
  store i64 %29, i64* @error, align 8
  %30 = load i64, i64* @error, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @snprintf(i64 %30, i32 %31, i8* %32, i8* %33)
  store i32 0, i32* %4, align 4
  br label %175

35:                                               ; preds = %3
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %58, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 138
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 133
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = add nsw i32 %46, %48
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @malloc(i32 %51)
  store i64 %52, i64* @error, align 8
  %53 = load i64, i64* @error, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @snprintf(i64 %53, i32 %54, i8* %55, i8* %56)
  store i32 0, i32* %4, align 4
  br label %175

58:                                               ; preds = %41, %38, %35
  store i8* null, i8** %13, align 8
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %170 [
    i32 132, label %60
    i32 134, label %65
    i32 142, label %70
    i32 140, label %75
    i32 139, label %119
    i32 138, label %124
    i32 133, label %127
    i32 131, label %130
    i32 128, label %164
    i32 135, label %169
  ]

60:                                               ; preds = %58
  %61 = load %struct.criteria*, %struct.criteria** %5, align 8
  %62 = getelementptr inbounds %struct.criteria, %struct.criteria* %61, i32 0, i32 13
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @pattern_create(i32* %62, i8* %63)
  br label %170

65:                                               ; preds = %58
  %66 = load %struct.criteria*, %struct.criteria** %5, align 8
  %67 = getelementptr inbounds %struct.criteria, %struct.criteria* %66, i32 0, i32 12
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @pattern_create(i32* %67, i8* %68)
  br label %170

70:                                               ; preds = %58
  %71 = load %struct.criteria*, %struct.criteria** %5, align 8
  %72 = getelementptr inbounds %struct.criteria, %struct.criteria* %71, i32 0, i32 11
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @pattern_create(i32* %72, i8* %73)
  br label %170

75:                                               ; preds = %58
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %80, %struct.sway_seat** %14, align 8
  %81 = load %struct.sway_seat*, %struct.sway_seat** %14, align 8
  %82 = call %struct.sway_container* @seat_get_focused_container(%struct.sway_seat* %81)
  store %struct.sway_container* %82, %struct.sway_container** %15, align 8
  %83 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %84 = icmp ne %struct.sway_container* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %87 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %86, i32 0, i32 0
  %88 = load %struct.sway_view*, %struct.sway_view** %87, align 8
  br label %90

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %85
  %91 = phi %struct.sway_view* [ %88, %85 ], [ null, %89 ]
  store %struct.sway_view* %91, %struct.sway_view** %16, align 8
  %92 = load %struct.sway_view*, %struct.sway_view** %16, align 8
  %93 = icmp ne %struct.sway_view* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load %struct.sway_view*, %struct.sway_view** %16, align 8
  %96 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  br label %102

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %94
  %103 = phi i8* [ %100, %94 ], [ null, %101 ]
  %104 = load %struct.criteria*, %struct.criteria** %5, align 8
  %105 = getelementptr inbounds %struct.criteria, %struct.criteria* %104, i32 0, i32 10
  store i8* %103, i8** %105, align 8
  br label %118

106:                                              ; preds = %75
  %107 = load i8*, i8** %7, align 8
  %108 = call i8* @strtoul(i8* %107, i8** %13, i32 10)
  %109 = load %struct.criteria*, %struct.criteria** %5, align 8
  %110 = getelementptr inbounds %struct.criteria, %struct.criteria* %109, i32 0, i32 10
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = call i64 @strdup(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  store i64 %116, i64* @error, align 8
  br label %117

117:                                              ; preds = %115, %106
  br label %118

118:                                              ; preds = %117, %102
  br label %170

119:                                              ; preds = %58
  %120 = load %struct.criteria*, %struct.criteria** %5, align 8
  %121 = getelementptr inbounds %struct.criteria, %struct.criteria* %120, i32 0, i32 9
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @pattern_create(i32* %121, i8* %122)
  br label %170

124:                                              ; preds = %58
  %125 = load %struct.criteria*, %struct.criteria** %5, align 8
  %126 = getelementptr inbounds %struct.criteria, %struct.criteria* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  br label %170

127:                                              ; preds = %58
  %128 = load %struct.criteria*, %struct.criteria** %5, align 8
  %129 = getelementptr inbounds %struct.criteria, %struct.criteria* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  br label %170

130:                                              ; preds = %58
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @strcmp(i8* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142, %138, %134, %130
  %147 = load %struct.criteria*, %struct.criteria** %5, align 8
  %148 = getelementptr inbounds %struct.criteria, %struct.criteria* %147, i32 0, i32 2
  store i8 108, i8* %148, align 8
  br label %163

149:                                              ; preds = %142
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153, %149
  %158 = load %struct.criteria*, %struct.criteria** %5, align 8
  %159 = getelementptr inbounds %struct.criteria, %struct.criteria* %158, i32 0, i32 2
  store i8 111, i8* %159, align 8
  br label %162

160:                                              ; preds = %153
  %161 = call i64 @strdup(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.10, i64 0, i64 0))
  store i64 %161, i64* @error, align 8
  br label %162

162:                                              ; preds = %160, %157
  br label %163

163:                                              ; preds = %162, %146
  br label %170

164:                                              ; preds = %58
  %165 = load %struct.criteria*, %struct.criteria** %5, align 8
  %166 = getelementptr inbounds %struct.criteria, %struct.criteria* %165, i32 0, i32 3
  %167 = load i8*, i8** %7, align 8
  %168 = call i32 @pattern_create(i32* %166, i8* %167)
  br label %170

169:                                              ; preds = %58
  br label %170

170:                                              ; preds = %58, %169, %164, %163, %127, %124, %119, %118, %70, %65, %60
  %171 = load i64, i64* @error, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %175

174:                                              ; preds = %170
  store i32 1, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %173, %44, %21
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @token_from_name(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @snprintf(i64, i32, i8*, i8*) #1

declare dso_local i32 @pattern_create(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_container* @seat_get_focused_container(%struct.sway_seat*) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
