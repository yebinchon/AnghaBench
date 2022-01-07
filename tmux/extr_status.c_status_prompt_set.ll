; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_set.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i8*, i32 (%struct.client*, i8*, i8*, i32)*, i32, %struct.TYPE_2__, i32, i64, i32, i32, i32, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.format_tree = type { i32 }

@FORMAT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PROMPT_NOFORMAT = common dso_local global i32 0, align 4
@PROMPT_ENTRY = common dso_local global i32 0, align 4
@PROMPT_INCREMENTAL = common dso_local global i32 0, align 4
@TTY_NOCURSOR = common dso_local global i32 0, align 4
@TTY_FREEZE = common dso_local global i32 0, align 4
@CLIENT_REDRAWSTATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status_prompt_set(%struct.client* %0, i8* %1, i8* %2, i32 (%struct.client*, i8*, i8*, i32)* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.client*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (%struct.client*, i8*, i8*, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.format_tree*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.client* %0, %struct.client** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 (%struct.client*, i8*, i8*, i32)* %3, i32 (%struct.client*, i8*, i8*, i32)** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.client*, %struct.client** %8, align 8
  %19 = load i32, i32* @FORMAT_NONE, align 4
  %20 = call %struct.format_tree* @format_create(%struct.client* %18, i32* null, i32 %19, i32 0)
  store %struct.format_tree* %20, %struct.format_tree** %15, align 8
  %21 = load %struct.format_tree*, %struct.format_tree** %15, align 8
  %22 = load %struct.client*, %struct.client** %8, align 8
  %23 = call i32 @format_defaults(%struct.format_tree* %21, %struct.client* %22, i32* null, i32* null, i32* null)
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %27

27:                                               ; preds = %26, %7
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @PROMPT_NOFORMAT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @xstrdup(i8* %33)
  store i8* %34, i8** %16, align 8
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.format_tree*, %struct.format_tree** %15, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i8* @format_expand_time(%struct.format_tree* %36, i8* %37)
  store i8* %38, i8** %16, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.client*, %struct.client** %8, align 8
  %41 = call i32 @status_message_clear(%struct.client* %40)
  %42 = load %struct.client*, %struct.client** %8, align 8
  %43 = call i32 @status_prompt_clear(%struct.client* %42)
  %44 = load %struct.client*, %struct.client** %8, align 8
  %45 = call i32 @status_push_screen(%struct.client* %44)
  %46 = load %struct.format_tree*, %struct.format_tree** %15, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i8* @format_expand_time(%struct.format_tree* %46, i8* %47)
  %49 = load %struct.client*, %struct.client** %8, align 8
  %50 = getelementptr inbounds %struct.client, %struct.client* %49, i32 0, i32 10
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @utf8_fromcstr(i8* %51)
  %53 = load %struct.client*, %struct.client** %8, align 8
  %54 = getelementptr inbounds %struct.client, %struct.client* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 4
  %55 = load %struct.client*, %struct.client** %8, align 8
  %56 = getelementptr inbounds %struct.client, %struct.client* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @utf8_strlen(i32 %57)
  %59 = load %struct.client*, %struct.client** %8, align 8
  %60 = getelementptr inbounds %struct.client, %struct.client* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 8
  %61 = load i32 (%struct.client*, i8*, i8*, i32)*, i32 (%struct.client*, i8*, i8*, i32)** %11, align 8
  %62 = load %struct.client*, %struct.client** %8, align 8
  %63 = getelementptr inbounds %struct.client, %struct.client* %62, i32 0, i32 2
  store i32 (%struct.client*, i8*, i8*, i32)* %61, i32 (%struct.client*, i8*, i8*, i32)** %63, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.client*, %struct.client** %8, align 8
  %66 = getelementptr inbounds %struct.client, %struct.client* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.client*, %struct.client** %8, align 8
  %69 = getelementptr inbounds %struct.client, %struct.client* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.client*, %struct.client** %8, align 8
  %71 = getelementptr inbounds %struct.client, %struct.client* %70, i32 0, i32 6
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.client*, %struct.client** %8, align 8
  %74 = getelementptr inbounds %struct.client, %struct.client* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @PROMPT_ENTRY, align 4
  %76 = load %struct.client*, %struct.client** %8, align 8
  %77 = getelementptr inbounds %struct.client, %struct.client* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %14, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* @PROMPT_INCREMENTAL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %39
  %84 = load i32, i32* @TTY_NOCURSOR, align 4
  %85 = load i32, i32* @TTY_FREEZE, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.client*, %struct.client** %8, align 8
  %88 = getelementptr inbounds %struct.client, %struct.client* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %83, %39
  %93 = load i32, i32* @CLIENT_REDRAWSTATUS, align 4
  %94 = load %struct.client*, %struct.client** %8, align 8
  %95 = getelementptr inbounds %struct.client, %struct.client* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @PROMPT_INCREMENTAL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %92
  %103 = load i8*, i8** %16, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %102
  %108 = load i8*, i8** %16, align 8
  %109 = call i32 @xasprintf(i8** %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %108)
  %110 = load %struct.client*, %struct.client** %8, align 8
  %111 = getelementptr inbounds %struct.client, %struct.client* %110, i32 0, i32 2
  %112 = load i32 (%struct.client*, i8*, i8*, i32)*, i32 (%struct.client*, i8*, i8*, i32)** %111, align 8
  %113 = load %struct.client*, %struct.client** %8, align 8
  %114 = load %struct.client*, %struct.client** %8, align 8
  %115 = getelementptr inbounds %struct.client, %struct.client* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = call i32 %112(%struct.client* %113, i8* %116, i8* %117, i32 0)
  %119 = load i8*, i8** %17, align 8
  %120 = call i32 @free(i8* %119)
  br label %121

121:                                              ; preds = %107, %102, %92
  %122 = load i8*, i8** %16, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load %struct.format_tree*, %struct.format_tree** %15, align 8
  %125 = call i32 @format_free(%struct.format_tree* %124)
  ret void
}

declare dso_local %struct.format_tree* @format_create(%struct.client*, i32*, i32, i32) #1

declare dso_local i32 @format_defaults(%struct.format_tree*, %struct.client*, i32*, i32*, i32*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @format_expand_time(%struct.format_tree*, i8*) #1

declare dso_local i32 @status_message_clear(%struct.client*) #1

declare dso_local i32 @status_prompt_clear(%struct.client*) #1

declare dso_local i32 @status_push_screen(%struct.client*) #1

declare dso_local i32 @utf8_fromcstr(i8*) #1

declare dso_local i32 @utf8_strlen(i32) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @format_free(%struct.format_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
