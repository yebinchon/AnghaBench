; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_foreach_key_visit.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_foreach_key_visit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_visitor_state = type { i8*, i32 (i32, i8*, %struct.keymap*, i32, i8*, %struct.request_info*, %struct.run_request*)*, i32, i64, %struct.keymap* }
%struct.keymap = type { i32, %struct.keybinding** }
%struct.keybinding = type { i32, i32, i32 }
%struct.request_info = type { i32 }
%struct.run_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_visitor_state*, i8*, i32, %struct.request_info*, %struct.run_request*)* @foreach_key_visit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_key_visit(%struct.key_visitor_state* %0, i8* %1, i32 %2, %struct.request_info* %3, %struct.run_request* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.key_visitor_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.request_info*, align 8
  %11 = alloca %struct.run_request*, align 8
  %12 = alloca %struct.keymap*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.keybinding*, align 8
  %16 = alloca i8*, align 8
  store %struct.key_visitor_state* %0, %struct.key_visitor_state** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.request_info* %3, %struct.request_info** %10, align 8
  store %struct.run_request* %4, %struct.run_request** %11, align 8
  %17 = load %struct.key_visitor_state*, %struct.key_visitor_state** %7, align 8
  %18 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %17, i32 0, i32 4
  %19 = load %struct.keymap*, %struct.keymap** %18, align 8
  store %struct.keymap* %19, %struct.keymap** %12, align 8
  %20 = load %struct.key_visitor_state*, %struct.key_visitor_state** %7, align 8
  %21 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i8* null, i8** %8, align 8
  br label %26

26:                                               ; preds = %25, %5
  %27 = load %struct.key_visitor_state*, %struct.key_visitor_state** %7, align 8
  %28 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %26
  %32 = load %struct.keymap*, %struct.keymap** %12, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @get_keys(%struct.keymap* %32, i32 %33, i32 1)
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i8*, i8** %14, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %31
  store i32 1, i32* %6, align 4
  br label %133

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.key_visitor_state*, %struct.key_visitor_state** %7, align 8
  %48 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.key_visitor_state*, %struct.key_visitor_state** %7, align 8
  %51 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %50, i32 0, i32 1
  %52 = load i32 (i32, i8*, %struct.keymap*, i32, i8*, %struct.request_info*, %struct.run_request*)*, i32 (i32, i8*, %struct.keymap*, i32, i8*, %struct.request_info*, %struct.run_request*)** %51, align 8
  %53 = load %struct.key_visitor_state*, %struct.key_visitor_state** %7, align 8
  %54 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.keymap*, %struct.keymap** %12, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %14, align 8
  %60 = load %struct.request_info*, %struct.request_info** %10, align 8
  %61 = load %struct.run_request*, %struct.run_request** %11, align 8
  %62 = call i32 %52(i32 %55, i8* %56, %struct.keymap* %57, i32 %58, i8* %59, %struct.request_info* %60, %struct.run_request* %61)
  store i32 %62, i32* %6, align 4
  br label %133

63:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %129, %63
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.keymap*, %struct.keymap** %12, align 8
  %67 = getelementptr inbounds %struct.keymap, %struct.keymap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %132

70:                                               ; preds = %64
  %71 = load %struct.keymap*, %struct.keymap** %12, align 8
  %72 = getelementptr inbounds %struct.keymap, %struct.keymap* %71, i32 0, i32 1
  %73 = load %struct.keybinding**, %struct.keybinding*** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.keybinding*, %struct.keybinding** %73, i64 %75
  %77 = load %struct.keybinding*, %struct.keybinding** %76, align 8
  %78 = getelementptr inbounds %struct.keybinding, %struct.keybinding* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %128

82:                                               ; preds = %70
  %83 = load %struct.keymap*, %struct.keymap** %12, align 8
  %84 = getelementptr inbounds %struct.keymap, %struct.keymap* %83, i32 0, i32 1
  %85 = load %struct.keybinding**, %struct.keybinding*** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.keybinding*, %struct.keybinding** %85, i64 %87
  %89 = load %struct.keybinding*, %struct.keybinding** %88, align 8
  store %struct.keybinding* %89, %struct.keybinding** %15, align 8
  %90 = load %struct.keybinding*, %struct.keybinding** %15, align 8
  %91 = getelementptr inbounds %struct.keybinding, %struct.keybinding* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.keybinding*, %struct.keybinding** %15, align 8
  %94 = getelementptr inbounds %struct.keybinding, %struct.keybinding* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @get_key_name(i32 %92, i32 %95, i32 0)
  store i8* %96, i8** %16, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %82
  %100 = load i8*, i8** %16, align 8
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99, %82
  br label %129

104:                                              ; preds = %99
  %105 = load %struct.key_visitor_state*, %struct.key_visitor_state** %7, align 8
  %106 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %105, i32 0, i32 1
  %107 = load i32 (i32, i8*, %struct.keymap*, i32, i8*, %struct.request_info*, %struct.run_request*)*, i32 (i32, i8*, %struct.keymap*, i32, i8*, %struct.request_info*, %struct.run_request*)** %106, align 8
  %108 = load %struct.key_visitor_state*, %struct.key_visitor_state** %7, align 8
  %109 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.keymap*, %struct.keymap** %12, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i8*, i8** %16, align 8
  %115 = load %struct.request_info*, %struct.request_info** %10, align 8
  %116 = load %struct.run_request*, %struct.run_request** %11, align 8
  %117 = call i32 %107(i32 %110, i8* %111, %struct.keymap* %112, i32 %113, i8* %114, %struct.request_info* %115, %struct.run_request* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %133

120:                                              ; preds = %104
  %121 = load i8*, i8** %8, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i8*, i8** %8, align 8
  %125 = load %struct.key_visitor_state*, %struct.key_visitor_state** %7, align 8
  %126 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %123, %120
  store i8* null, i8** %8, align 8
  br label %128

128:                                              ; preds = %127, %70
  br label %129

129:                                              ; preds = %128, %103
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %64

132:                                              ; preds = %64
  store i32 1, i32* %6, align 4
  br label %133

133:                                              ; preds = %132, %119, %49, %41
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i8* @get_keys(%struct.keymap*, i32, i32) #1

declare dso_local i8* @get_key_name(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
