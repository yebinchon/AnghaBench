; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_config.c_load_include_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_config.c_load_include_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_config = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i8** }
%struct.swaynag_instance = type { i32 }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to allocate full path to included config\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%s not found.\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%s already included once, won't be included again.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.sway_config*, %struct.swaynag_instance*)* @load_include_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_include_config(i8* %0, i8* %1, %struct.sway_config* %2, %struct.swaynag_instance* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sway_config*, align 8
  %9 = alloca %struct.swaynag_instance*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.sway_config* %2, %struct.sway_config** %8, align 8
  store %struct.swaynag_instance* %3, %struct.swaynag_instance** %9, align 8
  %17 = load %struct.sway_config*, %struct.sway_config** %8, align 8
  %18 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sge i32 %22, 1
  br i1 %23, label %24, label %52

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 47
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %31, %33
  %35 = add nsw i32 %34, 2
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = call i8* @malloc(i32 %39)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* @SWAY_ERROR, align 4
  %45 = call i32 (i32, i8*, ...) @sway_log(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %134

46:                                               ; preds = %30
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @snprintf(i8* %47, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50)
  br label %55

52:                                               ; preds = %24, %4
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @strdup(i8* %53)
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i8*, i8** %11, align 8
  %57 = call i8* @realpath(i8* %56, i32* null)
  store i8* %57, i8** %13, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i8*, i8** %13, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @SWAY_DEBUG, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 (i32, i8*, ...) @sway_log(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  store i32 0, i32* %5, align 4
  br label %134

66:                                               ; preds = %55
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %96, %66
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.sway_config*, %struct.sway_config** %8, align 8
  %70 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %68, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %67
  %76 = load %struct.sway_config*, %struct.sway_config** %8, align 8
  %77 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %15, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = call i64 @strcmp(i8* %85, i8* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %75
  %90 = load i32, i32* @SWAY_DEBUG, align 4
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 (i32, i8*, ...) @sway_log(i32 %90, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 @free(i8* %93)
  store i32 0, i32* %5, align 4
  br label %134

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %67

99:                                               ; preds = %67
  %100 = load i8*, i8** %13, align 8
  %101 = load %struct.sway_config*, %struct.sway_config** %8, align 8
  %102 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.sway_config*, %struct.sway_config** %8, align 8
  %104 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @list_add(%struct.TYPE_3__* %105, i8* %106)
  %108 = load %struct.sway_config*, %struct.sway_config** %8, align 8
  %109 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  %114 = load i8*, i8** %13, align 8
  %115 = load %struct.sway_config*, %struct.sway_config** %8, align 8
  %116 = load %struct.swaynag_instance*, %struct.swaynag_instance** %9, align 8
  %117 = call i32 @load_config(i8* %114, %struct.sway_config* %115, %struct.swaynag_instance* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %99
  %120 = load i8*, i8** %13, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i8*, i8** %10, align 8
  %123 = load %struct.sway_config*, %struct.sway_config** %8, align 8
  %124 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load %struct.sway_config*, %struct.sway_config** %8, align 8
  %126 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @list_del(%struct.TYPE_3__* %127, i32 %128)
  store i32 0, i32* %5, align 4
  br label %134

130:                                              ; preds = %99
  %131 = load i8*, i8** %10, align 8
  %132 = load %struct.sway_config*, %struct.sway_config** %8, align 8
  %133 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  store i32 1, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %119, %89, %62, %43
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @realpath(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @list_add(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @load_config(i8*, %struct.sway_config*, %struct.swaynag_instance*) #1

declare dso_local i32 @list_del(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
