; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xrmoptions.c_config_parse_cmd_option.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xrmoptions.c_config_parse_cmd_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CONFIG_CMDLINE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"-no-%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @config_parse_cmd_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_parse_cmd_option(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i8* %7, i8** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %113 [
    i32 130, label %11
    i32 129, label %25
    i32 128, label %39
    i32 132, label %65
    i32 131, label %99
  ]

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @find_arg_uint(i8* %12, i32* %16)
  %18 = load i32, i32* @TRUE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load i8*, i8** @CONFIG_CMDLINE, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %20, %11
  br label %114

25:                                               ; preds = %1
  %26 = load i8*, i8** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @find_arg_int(i8* %26, i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i8*, i8** @CONFIG_CMDLINE, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %25
  br label %114

39:                                               ; preds = %1
  %40 = load i8*, i8** %3, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @find_arg_str(i8* %40, i32 %44)
  %46 = load i32, i32* @TRUE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %39
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @g_free(i8* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i8* null, i8** %59, align 8
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i8*, i8** @CONFIG_CMDLINE, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %39
  br label %114

65:                                               ; preds = %1
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @find_arg(i8* %66)
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* @TRUE, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  store i32 %70, i32* %74, align 4
  %75 = load i8*, i8** @CONFIG_CMDLINE, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  br label %98

78:                                               ; preds = %65
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 @g_free(i8* %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  store i8* %84, i8** %3, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @find_arg(i8* %85)
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %78
  %89 = load i32, i32* @FALSE, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  store i32 %89, i32* %93, align 4
  %94 = load i8*, i8** @CONFIG_CMDLINE, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %88, %78
  br label %98

98:                                               ; preds = %97, %69
  br label %114

99:                                               ; preds = %1
  %100 = load i8*, i8** %3, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @find_arg_char(i8* %100, i32 %104)
  %106 = load i32, i32* @TRUE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load i8*, i8** @CONFIG_CMDLINE, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %108, %99
  br label %114

113:                                              ; preds = %1
  br label %114

114:                                              ; preds = %113, %112, %98, %64, %38, %24
  %115 = load i8*, i8** %3, align 8
  %116 = call i32 @g_free(i8* %115)
  ret void
}

declare dso_local i8* @g_strdup_printf(i8*, i32) #1

declare dso_local i32 @find_arg_uint(i8*, i32*) #1

declare dso_local i32 @find_arg_int(i8*, i32) #1

declare dso_local i32 @find_arg_str(i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @find_arg(i8*) #1

declare dso_local i32 @find_arg_char(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
