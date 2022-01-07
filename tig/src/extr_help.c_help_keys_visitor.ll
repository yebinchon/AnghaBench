; ModuleID = '/home/carl/AnghaBench/tig/src/extr_help.c_help_keys_visitor.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_help.c_help_keys_visitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keymap = type { i64 }
%struct.request_info = type { i32 }
%struct.run_request = type { i32 }
%struct.help_request_iterator = type { %struct.view*, %struct.keymap* }
%struct.view = type { %struct.help_state* }
%struct.help_state = type { i8*, i8* }
%struct.help = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.request_info* }

@LINE_SECTION = common dso_local global i32 0, align 4
@LINE_HELP_GROUP = common dso_local global i32 0, align 4
@LINE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.keymap*, i32, i8*, %struct.request_info*, %struct.run_request*)* @help_keys_visitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help_keys_visitor(i8* %0, i8* %1, %struct.keymap* %2, i32 %3, i8* %4, %struct.request_info* %5, %struct.run_request* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.keymap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.request_info*, align 8
  %15 = alloca %struct.run_request*, align 8
  %16 = alloca %struct.help_request_iterator*, align 8
  %17 = alloca %struct.view*, align 8
  %18 = alloca %struct.help_state*, align 8
  %19 = alloca %struct.help*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.keymap* %2, %struct.keymap** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store %struct.request_info* %5, %struct.request_info** %14, align 8
  store %struct.run_request* %6, %struct.run_request** %15, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.help_request_iterator*
  store %struct.help_request_iterator* %21, %struct.help_request_iterator** %16, align 8
  %22 = load %struct.help_request_iterator*, %struct.help_request_iterator** %16, align 8
  %23 = getelementptr inbounds %struct.help_request_iterator, %struct.help_request_iterator* %22, i32 0, i32 0
  %24 = load %struct.view*, %struct.view** %23, align 8
  store %struct.view* %24, %struct.view** %17, align 8
  %25 = load %struct.view*, %struct.view** %17, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 0
  %27 = load %struct.help_state*, %struct.help_state** %26, align 8
  store %struct.help_state* %27, %struct.help_state** %18, align 8
  %28 = load %struct.help_request_iterator*, %struct.help_request_iterator** %16, align 8
  %29 = getelementptr inbounds %struct.help_request_iterator, %struct.help_request_iterator* %28, i32 0, i32 1
  %30 = load %struct.keymap*, %struct.keymap** %29, align 8
  %31 = load %struct.keymap*, %struct.keymap** %11, align 8
  %32 = icmp ne %struct.keymap* %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %7
  %34 = load %struct.keymap*, %struct.keymap** %11, align 8
  %35 = load %struct.help_request_iterator*, %struct.help_request_iterator** %16, align 8
  %36 = getelementptr inbounds %struct.help_request_iterator, %struct.help_request_iterator* %35, i32 0, i32 1
  store %struct.keymap* %34, %struct.keymap** %36, align 8
  %37 = load %struct.help_request_iterator*, %struct.help_request_iterator** %16, align 8
  %38 = getelementptr inbounds %struct.help_request_iterator, %struct.help_request_iterator* %37, i32 0, i32 0
  %39 = load %struct.view*, %struct.view** %38, align 8
  %40 = load %struct.keymap*, %struct.keymap** %11, align 8
  %41 = load i32, i32* @LINE_SECTION, align 4
  %42 = call i32 @add_help_line(%struct.view* %39, %struct.help** %19, %struct.keymap* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %107

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %7
  %47 = load %struct.keymap*, %struct.keymap** %11, align 8
  %48 = getelementptr inbounds %struct.keymap, %struct.keymap* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %8, align 4
  br label %107

52:                                               ; preds = %46
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load %struct.help_request_iterator*, %struct.help_request_iterator** %16, align 8
  %57 = getelementptr inbounds %struct.help_request_iterator, %struct.help_request_iterator* %56, i32 0, i32 0
  %58 = load %struct.view*, %struct.view** %57, align 8
  %59 = load %struct.keymap*, %struct.keymap** %11, align 8
  %60 = load i32, i32* @LINE_HELP_GROUP, align 4
  %61 = call i32 @add_help_line(%struct.view* %58, %struct.help** %19, %struct.keymap* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %107

64:                                               ; preds = %55
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.help*, %struct.help** %19, align 8
  %67 = getelementptr inbounds %struct.help, %struct.help* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  br label %69

69:                                               ; preds = %64, %52
  %70 = load %struct.view*, %struct.view** %17, align 8
  %71 = load %struct.keymap*, %struct.keymap** %11, align 8
  %72 = load i32, i32* @LINE_DEFAULT, align 4
  %73 = call i32 @add_help_line(%struct.view* %70, %struct.help** %19, %struct.keymap* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %107

76:                                               ; preds = %69
  %77 = load %struct.help_state*, %struct.help_state** %18, align 8
  %78 = getelementptr inbounds %struct.help_state, %struct.help_state* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = call i8* @MAX(i8* %79, i32 %81)
  %83 = load %struct.help_state*, %struct.help_state** %18, align 8
  %84 = getelementptr inbounds %struct.help_state, %struct.help_state* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.help*, %struct.help** %19, align 8
  %87 = getelementptr inbounds %struct.help, %struct.help* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.request_info*, %struct.request_info** %14, align 8
  %89 = icmp ne %struct.request_info* %88, null
  br i1 %89, label %90, label %106

90:                                               ; preds = %76
  %91 = load %struct.help_state*, %struct.help_state** %18, align 8
  %92 = getelementptr inbounds %struct.help_state, %struct.help_state* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.request_info*, %struct.request_info** %14, align 8
  %95 = getelementptr inbounds %struct.request_info, %struct.request_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @enum_name(i32 %96)
  %98 = call i32 @strlen(i8* %97)
  %99 = call i8* @MAX(i8* %93, i32 %98)
  %100 = load %struct.help_state*, %struct.help_state** %18, align 8
  %101 = getelementptr inbounds %struct.help_state, %struct.help_state* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.request_info*, %struct.request_info** %14, align 8
  %103 = load %struct.help*, %struct.help** %19, align 8
  %104 = getelementptr inbounds %struct.help, %struct.help* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store %struct.request_info* %102, %struct.request_info** %105, align 8
  br label %106

106:                                              ; preds = %90, %76
  store i32 1, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %75, %63, %51, %44
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local i32 @add_help_line(%struct.view*, %struct.help**, %struct.keymap*, i32) #1

declare dso_local i8* @MAX(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @enum_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
