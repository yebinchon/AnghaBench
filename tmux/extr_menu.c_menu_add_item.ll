; ModuleID = '/home/carl/AnghaBench/tmux/extr_menu.c_menu_add_item.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_menu.c_menu_add_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i64, i64, %struct.menu_item* }
%struct.menu_item = type { i8*, i8*, i32 }
%struct.cmdq_item = type { i32 }
%struct.client = type { i32 }
%struct.cmd_find_state = type { i32*, i32*, i32* }

@KEYC_UNKNOWN = common dso_local global i32 0, align 4
@KEYC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s#[default] #[align=right](%s)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_add_item(%struct.menu* %0, %struct.menu_item* %1, %struct.cmdq_item* %2, %struct.client* %3, %struct.cmd_find_state* %4) #0 {
  %6 = alloca %struct.menu*, align 8
  %7 = alloca %struct.menu_item*, align 8
  %8 = alloca %struct.cmdq_item*, align 8
  %9 = alloca %struct.client*, align 8
  %10 = alloca %struct.cmd_find_state*, align 8
  %11 = alloca %struct.menu_item*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.menu* %0, %struct.menu** %6, align 8
  store %struct.menu_item* %1, %struct.menu_item** %7, align 8
  store %struct.cmdq_item* %2, %struct.cmdq_item** %8, align 8
  store %struct.client* %3, %struct.client** %9, align 8
  store %struct.cmd_find_state* %4, %struct.cmd_find_state** %10, align 8
  %18 = load %struct.menu_item*, %struct.menu_item** %7, align 8
  %19 = icmp eq %struct.menu_item* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %5
  %21 = load %struct.menu_item*, %struct.menu_item** %7, align 8
  %22 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load %struct.menu_item*, %struct.menu_item** %7, align 8
  %27 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br label %32

32:                                               ; preds = %25, %20, %5
  %33 = phi i1 [ true, %20 ], [ true, %5 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.menu*, %struct.menu** %6, align 8
  %39 = getelementptr inbounds %struct.menu, %struct.menu* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %188

43:                                               ; preds = %37, %32
  %44 = load %struct.menu*, %struct.menu** %6, align 8
  %45 = getelementptr inbounds %struct.menu, %struct.menu* %44, i32 0, i32 2
  %46 = load %struct.menu_item*, %struct.menu_item** %45, align 8
  %47 = load %struct.menu*, %struct.menu** %6, align 8
  %48 = getelementptr inbounds %struct.menu, %struct.menu* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = call %struct.menu_item* @xreallocarray(%struct.menu_item* %46, i64 %50, i32 24)
  %52 = load %struct.menu*, %struct.menu** %6, align 8
  %53 = getelementptr inbounds %struct.menu, %struct.menu* %52, i32 0, i32 2
  store %struct.menu_item* %51, %struct.menu_item** %53, align 8
  %54 = load %struct.menu*, %struct.menu** %6, align 8
  %55 = getelementptr inbounds %struct.menu, %struct.menu* %54, i32 0, i32 2
  %56 = load %struct.menu_item*, %struct.menu_item** %55, align 8
  %57 = load %struct.menu*, %struct.menu** %6, align 8
  %58 = getelementptr inbounds %struct.menu, %struct.menu* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %56, i64 %59
  store %struct.menu_item* %61, %struct.menu_item** %11, align 8
  %62 = load %struct.menu_item*, %struct.menu_item** %11, align 8
  %63 = call i32 @memset(%struct.menu_item* %62, i32 0, i32 24)
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %43
  br label %188

67:                                               ; preds = %43
  %68 = load %struct.cmd_find_state*, %struct.cmd_find_state** %10, align 8
  %69 = icmp ne %struct.cmd_find_state* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %72 = load %struct.menu_item*, %struct.menu_item** %7, align 8
  %73 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.client*, %struct.client** %9, align 8
  %76 = load %struct.cmd_find_state*, %struct.cmd_find_state** %10, align 8
  %77 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.cmd_find_state*, %struct.cmd_find_state** %10, align 8
  %80 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.cmd_find_state*, %struct.cmd_find_state** %10, align 8
  %83 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i8* @format_single(%struct.cmdq_item* %71, i8* %74, %struct.client* %75, i32* %78, i32* %81, i32* %84)
  store i8* %85, i8** %14, align 8
  br label %93

86:                                               ; preds = %67
  %87 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %88 = load %struct.menu_item*, %struct.menu_item** %7, align 8
  %89 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.client*, %struct.client** %9, align 8
  %92 = call i8* @format_single(%struct.cmdq_item* %87, i8* %90, %struct.client* %91, i32* null, i32* null, i32* null)
  store i8* %92, i8** %14, align 8
  br label %93

93:                                               ; preds = %86, %70
  %94 = load i8*, i8** %14, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.menu*, %struct.menu** %6, align 8
  %100 = getelementptr inbounds %struct.menu, %struct.menu* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* %100, align 8
  br label %188

103:                                              ; preds = %93
  %104 = load i8*, i8** %14, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 45
  br i1 %107, label %108, label %128

108:                                              ; preds = %103
  %109 = load %struct.menu_item*, %struct.menu_item** %7, align 8
  %110 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @KEYC_UNKNOWN, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %108
  %115 = load %struct.menu_item*, %struct.menu_item** %7, align 8
  %116 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @KEYC_NONE, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load %struct.menu_item*, %struct.menu_item** %7, align 8
  %122 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @key_string_lookup_key(i32 %123)
  store i8* %124, i8** %12, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %125, i8* %126)
  br label %131

128:                                              ; preds = %114, %108, %103
  %129 = load i8*, i8** %14, align 8
  %130 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %128, %120
  %132 = load i8*, i8** %15, align 8
  %133 = load %struct.menu_item*, %struct.menu_item** %11, align 8
  %134 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = call i32 @free(i8* %135)
  %137 = load %struct.menu_item*, %struct.menu_item** %7, align 8
  %138 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %13, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %165

142:                                              ; preds = %131
  %143 = load %struct.cmd_find_state*, %struct.cmd_find_state** %10, align 8
  %144 = icmp ne %struct.cmd_find_state* %143, null
  br i1 %144, label %145, label %159

145:                                              ; preds = %142
  %146 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = load %struct.client*, %struct.client** %9, align 8
  %149 = load %struct.cmd_find_state*, %struct.cmd_find_state** %10, align 8
  %150 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.cmd_find_state*, %struct.cmd_find_state** %10, align 8
  %153 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.cmd_find_state*, %struct.cmd_find_state** %10, align 8
  %156 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i8* @format_single(%struct.cmdq_item* %146, i8* %147, %struct.client* %148, i32* %151, i32* %154, i32* %157)
  store i8* %158, i8** %14, align 8
  br label %164

159:                                              ; preds = %142
  %160 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = load %struct.client*, %struct.client** %9, align 8
  %163 = call i8* @format_single(%struct.cmdq_item* %160, i8* %161, %struct.client* %162, i32* null, i32* null, i32* null)
  store i8* %163, i8** %14, align 8
  br label %164

164:                                              ; preds = %159, %145
  br label %166

165:                                              ; preds = %131
  store i8* null, i8** %14, align 8
  br label %166

166:                                              ; preds = %165, %164
  %167 = load i8*, i8** %14, align 8
  %168 = load %struct.menu_item*, %struct.menu_item** %11, align 8
  %169 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  %170 = load %struct.menu_item*, %struct.menu_item** %7, align 8
  %171 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.menu_item*, %struct.menu_item** %11, align 8
  %174 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.menu_item*, %struct.menu_item** %11, align 8
  %176 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @format_width(i8* %177)
  store i64 %178, i64* %16, align 8
  %179 = load i64, i64* %16, align 8
  %180 = load %struct.menu*, %struct.menu** %6, align 8
  %181 = getelementptr inbounds %struct.menu, %struct.menu* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp sgt i64 %179, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %166
  %185 = load i64, i64* %16, align 8
  %186 = load %struct.menu*, %struct.menu** %6, align 8
  %187 = getelementptr inbounds %struct.menu, %struct.menu* %186, i32 0, i32 1
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %42, %66, %98, %184, %166
  ret void
}

declare dso_local %struct.menu_item* @xreallocarray(%struct.menu_item*, i64, i32) #1

declare dso_local i32 @memset(%struct.menu_item*, i32, i32) #1

declare dso_local i8* @format_single(%struct.cmdq_item*, i8*, %struct.client*, i32*, i32*, i32*) #1

declare dso_local i8* @key_string_lookup_key(i32) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @format_width(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
