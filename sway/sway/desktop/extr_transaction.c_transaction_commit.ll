; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_commit.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.sway_transaction = type { i64, i64, %struct.timespec, i64, %struct.TYPE_8__* }
%struct.timespec = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.sway_transaction_instruction** }
%struct.sway_transaction_instruction = type { %struct.TYPE_9__, i32, %struct.sway_node* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.sway_node = type { %struct.sway_transaction_instruction*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Transaction %p committing with %i instructions\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@debug = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@server = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@handle_timeout = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"Unable to create transaction timer (some imperfect frames might be rendered)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_transaction*)* @transaction_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transaction_commit(%struct.sway_transaction* %0) #0 {
  %2 = alloca %struct.sway_transaction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_transaction_instruction*, align 8
  %5 = alloca %struct.sway_node*, align 8
  %6 = alloca %struct.timespec, align 4
  store %struct.sway_transaction* %0, %struct.sway_transaction** %2, align 8
  %7 = load i32, i32* @SWAY_DEBUG, align 4
  %8 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %9 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %10 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %9, i32 0, i32 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sway_log(i32 %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.sway_transaction* %8, i32 %13)
  %15 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %16 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %118, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %20 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %19, i32 0, i32 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %121

25:                                               ; preds = %17
  %26 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %27 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %26, i32 0, i32 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.sway_transaction_instruction**, %struct.sway_transaction_instruction*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %30, i64 %32
  %34 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %33, align 8
  store %struct.sway_transaction_instruction* %34, %struct.sway_transaction_instruction** %4, align 8
  %35 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %36 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %35, i32 0, i32 2
  %37 = load %struct.sway_node*, %struct.sway_node** %36, align 8
  store %struct.sway_node* %37, %struct.sway_node** %5, align 8
  %38 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %39 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %40 = call i64 @should_configure(%struct.sway_node* %38, %struct.sway_transaction_instruction* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %81

42:                                               ; preds = %25
  %43 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %44 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %49 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %53 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %57 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %61 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @view_configure(%struct.TYPE_11__* %47, i32 %51, i32 %55, i32 %59, i32 %63)
  %65 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %66 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %68 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %72 = call i32 @clock_gettime(i32 %71, %struct.timespec* %6)
  %73 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %74 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @wlr_surface_send_frame_done(i32 %79, %struct.timespec* %6)
  br label %81

81:                                               ; preds = %42, %25
  %82 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %83 = call i64 @node_is_view(%struct.sway_node* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %81
  %86 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %87 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %85
  %95 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %96 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = call i32 @view_save_buffer(%struct.TYPE_11__* %99)
  %101 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %102 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %108 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %107, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = call i32 @memcpy(i32* %106, i32* %112, i32 4)
  br label %114

114:                                              ; preds = %94, %85, %81
  %115 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %116 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %117 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %116, i32 0, i32 0
  store %struct.sway_transaction_instruction* %115, %struct.sway_transaction_instruction** %117, align 8
  br label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %17

121:                                              ; preds = %17
  %122 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %123 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %126 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %125, i32 0, i32 3
  store i64 %124, i64* %126, align 8
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @debug, i32 0, i32 2), align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %131 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %132 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %131, i32 0, i32 2
  %133 = call i32 @clock_gettime(i32 %130, %struct.timespec* %132)
  br label %134

134:                                              ; preds = %129, %121
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @debug, i32 0, i32 1), align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %139 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  br label %149

140:                                              ; preds = %134
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @debug, i32 0, i32 0), align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %145 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1000000
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %143, %140
  br label %149

149:                                              ; preds = %148, %137
  %150 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %151 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %149
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 1), align 4
  %156 = load i32, i32* @handle_timeout, align 4
  %157 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %158 = call i64 @wl_event_loop_add_timer(i32 %155, i32 %156, %struct.sway_transaction* %157)
  %159 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %160 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %162 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %154
  %166 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %167 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 4
  %170 = call i32 @wl_event_source_timer_update(i64 %168, i32 %169)
  br label %176

171:                                              ; preds = %154
  %172 = load i32, i32* @SWAY_ERROR, align 4
  %173 = call i32 @sway_log_errno(i32 %172, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %174 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %175 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %174, i32 0, i32 0
  store i64 0, i64* %175, align 8
  br label %176

176:                                              ; preds = %171, %165
  br label %177

177:                                              ; preds = %176, %149
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, %struct.sway_transaction*, i32) #1

declare dso_local i64 @should_configure(%struct.sway_node*, %struct.sway_transaction_instruction*) #1

declare dso_local i32 @view_configure(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @wlr_surface_send_frame_done(i32, %struct.timespec*) #1

declare dso_local i64 @node_is_view(%struct.sway_node*) #1

declare dso_local i32 @view_save_buffer(%struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @wl_event_loop_add_timer(i32, i32, %struct.sway_transaction*) #1

declare dso_local i32 @wl_event_source_timer_update(i64, i32) #1

declare dso_local i32 @sway_log_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
