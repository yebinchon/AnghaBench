; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_planner_import.c_ts_make_inh_translation_list.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_planner_import.c_ts_make_inh_translation_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i64 }

@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"could not find inherited attribute \22%s\22 of relation \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"attribute \22%s\22 of relation \22%s\22 does not match parent's type\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"attribute \22%s\22 of relation \22%s\22 does not match parent's collation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_make_inh_translation_list(i64 %0, i64 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %21 = load i32*, i32** @NIL, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.TYPE_6__* @RelationGetDescr(i64 %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call %struct.TYPE_6__* @RelationGetDescr(i64 %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %11, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %175, %4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %178

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %37, i32 %38)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %15, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32*, i32** %9, align 8
  %46 = call i32* @lappend(i32* %45, i32* null)
  store i32* %46, i32** %9, align 8
  br label %175

47:                                               ; preds = %36
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @NameStr(i32 %50)
  store i8* %51, i8** %16, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %17, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %18, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %19, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %47
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* %18, align 8
  %71 = load i64, i64* %19, align 8
  %72 = call i32* @makeVar(i32 %66, i32 %68, i64 %69, i64 %70, i64 %71, i32 0)
  %73 = call i32* @lappend(i32* %65, i32* %72)
  store i32* %73, i32** %9, align 8
  br label %175

74:                                               ; preds = %47
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %79, i32 %80)
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %15, align 8
  %82 = icmp ne %struct.TYPE_7__* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %16, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @NameStr(i32 %92)
  %94 = call i64 @strcmp(i8* %89, i8* %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %20, align 4
  br label %135

98:                                               ; preds = %88, %83, %78, %74
  store i32 0, i32* %20, align 4
  br label %99

99:                                               ; preds = %121, %98
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %124

103:                                              ; preds = %99
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %105 = load i32, i32* %20, align 4
  %106 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %104, i32 %105)
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %15, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %103
  %112 = load i8*, i8** %16, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @NameStr(i32 %115)
  %117 = call i64 @strcmp(i8* %112, i8* %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %124

120:                                              ; preds = %111, %103
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %20, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %20, align 4
  br label %99

124:                                              ; preds = %119, %99
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i32, i32* @ERROR, align 4
  %130 = load i8*, i8** %16, align 8
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @RelationGetRelationName(i64 %131)
  %133 = call i32 @elog(i32 %129, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %130, i32 %132)
  br label %134

134:                                              ; preds = %128, %124
  br label %135

135:                                              ; preds = %134, %96
  %136 = load i64, i64* %17, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %136, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load i64, i64* %18, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141, %135
  %148 = load i32, i32* @ERROR, align 4
  %149 = load i8*, i8** %16, align 8
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @RelationGetRelationName(i64 %150)
  %152 = call i32 @elog(i32 %148, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %149, i32 %151)
  br label %153

153:                                              ; preds = %147, %141
  %154 = load i64, i64* %19, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %154, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load i32, i32* @ERROR, align 4
  %161 = load i8*, i8** %16, align 8
  %162 = load i64, i64* %6, align 8
  %163 = call i32 @RelationGetRelationName(i64 %162)
  %164 = call i32 @elog(i32 %160, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %161, i32 %163)
  br label %165

165:                                              ; preds = %159, %153
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %20, align 4
  %169 = add nsw i32 %168, 1
  %170 = load i64, i64* %17, align 8
  %171 = load i64, i64* %18, align 8
  %172 = load i64, i64* %19, align 8
  %173 = call i32* @makeVar(i32 %167, i32 %169, i64 %170, i64 %171, i64 %172, i32 0)
  %174 = call i32* @lappend(i32* %166, i32* %173)
  store i32* %174, i32** %9, align 8
  br label %175

175:                                              ; preds = %165, %64, %44
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %32

178:                                              ; preds = %32
  %179 = load i32*, i32** %9, align 8
  %180 = load i32**, i32*** %8, align 8
  store i32* %179, i32** %180, align 8
  ret void
}

declare dso_local %struct.TYPE_6__* @RelationGetDescr(i64) #1

declare dso_local %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @lappend(i32*, i32*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32* @makeVar(i32, i32, i64, i64, i64, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @elog(i32, i8*, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
