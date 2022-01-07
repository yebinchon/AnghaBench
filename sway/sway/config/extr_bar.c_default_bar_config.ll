; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_bar.c_default_bar_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_bar.c_default_bar_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bar_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i8*, i8*, i32, i32*, i64, i32*, i32*, i8*, i32* }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Mod4\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dock\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"#000000ff\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"#ffffffff\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"#666666ff\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"#4c7899ff\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"#285577ff\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"#333333ff\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"#5f676aff\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"#222222ff\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"#888888ff\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"#2f343aff\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"#900000ff\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bar_config* @default_bar_config() #0 {
  %1 = alloca %struct.bar_config*, align 8
  %2 = alloca %struct.bar_config*, align 8
  store %struct.bar_config* null, %struct.bar_config** %2, align 8
  %3 = call %struct.bar_config* @calloc(i32 1, i32 296)
  store %struct.bar_config* %3, %struct.bar_config** %2, align 8
  %4 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %5 = icmp ne %struct.bar_config* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store %struct.bar_config* null, %struct.bar_config** %1, align 8
  br label %187

7:                                                ; preds = %0
  %8 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %9 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %8, i32 0, i32 21
  store i32* null, i32** %9, align 8
  %10 = call i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %12 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %11, i32 0, i32 20
  store i8* %10, i8** %12, align 8
  %13 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %14 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %16 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %15, i32 0, i32 19
  store i32* null, i32** %16, align 8
  %17 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %18 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %17, i32 0, i32 18
  store i32* null, i32** %18, align 8
  %19 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %20 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %19, i32 0, i32 17
  store i64 0, i64* %20, align 8
  %21 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %22 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %24 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %23, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %26 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %25, i32 0, i32 16
  store i32* null, i32** %26, align 8
  %27 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %28 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %27, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %30 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %29, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %32 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %31, i32 0, i32 5
  store i32 1, i32* %32, align 4
  %33 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %34 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %33, i32 0, i32 6
  store i32 0, i32* %34, align 8
  %35 = call i32 @get_modifier_mask_by_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %37 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %36, i32 0, i32 15
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %39 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %38, i32 0, i32 7
  store i32 1, i32* %39, align 4
  %40 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %41 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %40, i32 0, i32 8
  store i32 3, i32* %41, align 8
  %42 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %44 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %43, i32 0, i32 14
  store i8* %42, i8** %44, align 8
  %45 = icmp ne i8* %42, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %7
  br label %184

47:                                               ; preds = %7
  %48 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %50 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %49, i32 0, i32 13
  store i8* %48, i8** %50, align 8
  %51 = icmp ne i8* %48, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %184

53:                                               ; preds = %47
  %54 = call i32 (...) @create_list()
  %55 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %56 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 8
  %57 = icmp ne i32 %54, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %184

59:                                               ; preds = %53
  %60 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %61 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %62 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %61, i32 0, i32 11
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 20
  store i8* %60, i8** %63, align 8
  %64 = icmp ne i8* %60, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %184

66:                                               ; preds = %59
  %67 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9)
  %68 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %69 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %68, i32 0, i32 11
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 19
  store i8* %67, i8** %70, align 8
  %71 = icmp ne i8* %67, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %184

73:                                               ; preds = %66
  %74 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %75 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %76 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %75, i32 0, i32 11
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 18
  store i8* %74, i8** %77, align 8
  %78 = icmp ne i8* %74, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %184

80:                                               ; preds = %73
  %81 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 9)
  %82 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %83 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %82, i32 0, i32 11
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 17
  store i8* %81, i8** %84, align 8
  %85 = icmp ne i8* %81, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br label %184

87:                                               ; preds = %80
  %88 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 9)
  %89 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %90 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 16
  store i8* %88, i8** %91, align 8
  %92 = icmp ne i8* %88, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %184

94:                                               ; preds = %87
  %95 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9)
  %96 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %97 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %96, i32 0, i32 11
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 15
  store i8* %95, i8** %98, align 8
  %99 = icmp ne i8* %95, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  br label %184

101:                                              ; preds = %94
  %102 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 9)
  %103 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %104 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %103, i32 0, i32 11
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 14
  store i8* %102, i8** %105, align 8
  %106 = icmp ne i8* %102, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  br label %184

108:                                              ; preds = %101
  %109 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 9)
  %110 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %111 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %110, i32 0, i32 11
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 13
  store i8* %109, i8** %112, align 8
  %113 = icmp ne i8* %109, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  br label %184

115:                                              ; preds = %108
  %116 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9)
  %117 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %118 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %117, i32 0, i32 11
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 12
  store i8* %116, i8** %119, align 8
  %120 = icmp ne i8* %116, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  br label %184

122:                                              ; preds = %115
  %123 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 9)
  %124 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %125 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %124, i32 0, i32 11
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 11
  store i8* %123, i8** %126, align 8
  %127 = icmp ne i8* %123, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  br label %184

129:                                              ; preds = %122
  %130 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 9)
  %131 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %132 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %131, i32 0, i32 11
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 10
  store i8* %130, i8** %133, align 8
  %134 = icmp ne i8* %130, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  br label %184

136:                                              ; preds = %129
  %137 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 9)
  %138 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %139 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %138, i32 0, i32 11
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 9
  store i8* %137, i8** %140, align 8
  %141 = icmp ne i8* %137, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %136
  br label %184

143:                                              ; preds = %136
  %144 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 9)
  %145 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %146 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %145, i32 0, i32 11
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 8
  store i8* %144, i8** %147, align 8
  %148 = icmp ne i8* %144, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %143
  br label %184

150:                                              ; preds = %143
  %151 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 9)
  %152 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %153 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %152, i32 0, i32 11
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 7
  store i8* %151, i8** %154, align 8
  %155 = icmp ne i8* %151, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %150
  br label %184

157:                                              ; preds = %150
  %158 = call i8* @strndup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9)
  %159 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %160 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %159, i32 0, i32 11
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 6
  store i8* %158, i8** %161, align 8
  %162 = icmp ne i8* %158, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  br label %184

164:                                              ; preds = %157
  %165 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %166 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %165, i32 0, i32 11
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 5
  store i32* null, i32** %167, align 8
  %168 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %169 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %168, i32 0, i32 11
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 4
  store i32* null, i32** %170, align 8
  %171 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %172 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %171, i32 0, i32 11
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 3
  store i32* null, i32** %173, align 8
  %174 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %175 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %174, i32 0, i32 11
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 2
  store i32* null, i32** %176, align 8
  %177 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %178 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %177, i32 0, i32 11
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  store i32* null, i32** %179, align 8
  %180 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %181 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %180, i32 0, i32 11
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  store i32* null, i32** %182, align 8
  %183 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  store %struct.bar_config* %183, %struct.bar_config** %1, align 8
  br label %187

184:                                              ; preds = %163, %156, %149, %142, %135, %128, %121, %114, %107, %100, %93, %86, %79, %72, %65, %58, %52, %46
  %185 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %186 = call i32 @free_bar_config(%struct.bar_config* %185)
  store %struct.bar_config* null, %struct.bar_config** %1, align 8
  br label %187

187:                                              ; preds = %184, %164, %6
  %188 = load %struct.bar_config*, %struct.bar_config** %1, align 8
  ret %struct.bar_config* %188
}

declare dso_local %struct.bar_config* @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @get_modifier_mask_by_name(i8*) #1

declare dso_local i32 @create_list(...) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @free_bar_config(%struct.bar_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
