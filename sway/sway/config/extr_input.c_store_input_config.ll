; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_input.c_store_input_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_input.c_store_input_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.input_config** }
%struct.input_config = type { i8*, i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"type:\00", align 1
@config = common dso_local global %struct.TYPE_6__* null, align 8
@input_identifier_cmp = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Config stored for input %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.input_config* @store_input_config(%struct.input_config* %0, i8** %1) #0 {
  %3 = alloca %struct.input_config*, align 8
  %4 = alloca %struct.input_config*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.input_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_config* %0, %struct.input_config** %4, align 8
  store i8** %1, i8*** %5, align 8
  %12 = load %struct.input_config*, %struct.input_config** %4, align 8
  %13 = getelementptr inbounds %struct.input_config, %struct.input_config* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.input_config*, %struct.input_config** %4, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @validate_wildcard_on_all(%struct.input_config* %24, i8** %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store %struct.input_config* null, %struct.input_config** %3, align 8
  br label %166

29:                                               ; preds = %23, %20, %2
  %30 = load %struct.input_config*, %struct.input_config** %4, align 8
  %31 = getelementptr inbounds %struct.input_config, %struct.input_config* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = load i8**, i8*** %5, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.input_config*, %struct.input_config** %4, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = call i32 @validate_type_on_existing(%struct.input_config* %43, i8** %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store %struct.input_config* null, %struct.input_config** %3, align 8
  br label %166

48:                                               ; preds = %42, %39, %29
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  br label %59

55:                                               ; preds = %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi %struct.TYPE_5__* [ %54, %51 ], [ %58, %55 ]
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %8, align 8
  store %struct.input_config* null, %struct.input_config** %9, align 8
  store i32 0, i32* %10, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = load i32, i32* @input_identifier_cmp, align 4
  %63 = load %struct.input_config*, %struct.input_config** %4, align 8
  %64 = getelementptr inbounds %struct.input_config, %struct.input_config* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @list_seq_find(%struct.TYPE_5__* %61, i32 %62, i8* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.input_config**, %struct.input_config*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.input_config*, %struct.input_config** %72, i64 %74
  %76 = load %struct.input_config*, %struct.input_config** %75, align 8
  store %struct.input_config* %76, %struct.input_config** %9, align 8
  br label %77

77:                                               ; preds = %69, %59
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* @input_identifier_cmp, align 4
  %82 = call i32 @list_seq_find(%struct.TYPE_5__* %80, i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %82, i32* %11, align 4
  %83 = load %struct.input_config*, %struct.input_config** %9, align 8
  %84 = icmp ne %struct.input_config* %83, null
  br i1 %84, label %104, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %11, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load %struct.input_config*, %struct.input_config** %4, align 8
  %90 = getelementptr inbounds %struct.input_config, %struct.input_config* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call %struct.input_config* @new_input_config(i8* %91)
  store %struct.input_config* %92, %struct.input_config** %9, align 8
  %93 = load %struct.input_config*, %struct.input_config** %9, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.input_config**, %struct.input_config*** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.input_config*, %struct.input_config** %98, i64 %100
  %102 = load %struct.input_config*, %struct.input_config** %101, align 8
  %103 = call i32 @merge_input_config(%struct.input_config* %93, %struct.input_config* %102)
  store i32 1, i32* %10, align 4
  br label %104

104:                                              ; preds = %88, %85, %77
  %105 = load i8**, i8*** %5, align 8
  %106 = icmp ne i8** %105, null
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load %struct.input_config*, %struct.input_config** %9, align 8
  %109 = load %struct.input_config*, %struct.input_config** %4, align 8
  %110 = load i8**, i8*** %5, align 8
  %111 = call i32 @validate_xkb_merge(%struct.input_config* %108, %struct.input_config* %109, i8** %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.input_config*, %struct.input_config** %9, align 8
  %118 = call i32 @free_input_config(%struct.input_config* %117)
  br label %119

119:                                              ; preds = %116, %113
  store %struct.input_config* null, %struct.input_config** %3, align 8
  br label %166

120:                                              ; preds = %107, %104
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.input_config*, %struct.input_config** %4, align 8
  %125 = call i32 @merge_wildcard_on_all(%struct.input_config* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.input_config*, %struct.input_config** %4, align 8
  %131 = call i32 @merge_type_on_existing(%struct.input_config* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.input_config*, %struct.input_config** %9, align 8
  %134 = icmp ne %struct.input_config* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load %struct.input_config*, %struct.input_config** %9, align 8
  %137 = load %struct.input_config*, %struct.input_config** %4, align 8
  %138 = call i32 @merge_input_config(%struct.input_config* %136, %struct.input_config* %137)
  %139 = load %struct.input_config*, %struct.input_config** %4, align 8
  %140 = call i32 @free_input_config(%struct.input_config* %139)
  %141 = load %struct.input_config*, %struct.input_config** %9, align 8
  store %struct.input_config* %141, %struct.input_config** %4, align 8
  br label %142

142:                                              ; preds = %135, %132
  %143 = load %struct.input_config*, %struct.input_config** %4, align 8
  %144 = getelementptr inbounds %struct.input_config, %struct.input_config* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  %147 = zext i1 %146 to i32
  %148 = load %struct.input_config*, %struct.input_config** %4, align 8
  %149 = getelementptr inbounds %struct.input_config, %struct.input_config* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.input_config*, %struct.input_config** %9, align 8
  %151 = icmp ne %struct.input_config* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152, %142
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %157 = load %struct.input_config*, %struct.input_config** %4, align 8
  %158 = call i32 @list_add(%struct.TYPE_5__* %156, %struct.input_config* %157)
  br label %159

159:                                              ; preds = %155, %152
  %160 = load i32, i32* @SWAY_DEBUG, align 4
  %161 = load %struct.input_config*, %struct.input_config** %4, align 8
  %162 = getelementptr inbounds %struct.input_config, %struct.input_config* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @sway_log(i32 %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %163)
  %165 = load %struct.input_config*, %struct.input_config** %4, align 8
  store %struct.input_config* %165, %struct.input_config** %3, align 8
  br label %166

166:                                              ; preds = %159, %119, %47, %28
  %167 = load %struct.input_config*, %struct.input_config** %3, align 8
  ret %struct.input_config* %167
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @validate_wildcard_on_all(%struct.input_config*, i8**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @validate_type_on_existing(%struct.input_config*, i8**) #1

declare dso_local i32 @list_seq_find(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local %struct.input_config* @new_input_config(i8*) #1

declare dso_local i32 @merge_input_config(%struct.input_config*, %struct.input_config*) #1

declare dso_local i32 @validate_xkb_merge(%struct.input_config*, %struct.input_config*, i8**) #1

declare dso_local i32 @free_input_config(%struct.input_config*) #1

declare dso_local i32 @merge_wildcard_on_all(%struct.input_config*) #1

declare dso_local i32 @merge_type_on_existing(%struct.input_config*) #1

declare dso_local i32 @list_add(%struct.TYPE_5__*, %struct.input_config*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
