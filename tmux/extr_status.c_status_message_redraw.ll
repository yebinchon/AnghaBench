; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_message_redraw.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_message_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, %struct.TYPE_5__, %struct.session*, %struct.status_line }
%struct.TYPE_5__ = type { i64, i64 }
%struct.session = type { i32 }
%struct.status_line = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.screen_write_ctx = type { i32 }
%struct.screen = type { i32 }
%struct.grid_cell = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"message-style\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @status_message_redraw(%struct.client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.client*, align 8
  %4 = alloca %struct.status_line*, align 8
  %5 = alloca %struct.screen_write_ctx, align 4
  %6 = alloca %struct.session*, align 8
  %7 = alloca %struct.screen, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.grid_cell, align 4
  store %struct.client* %0, %struct.client** %3, align 8
  %12 = load %struct.client*, %struct.client** %3, align 8
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 3
  store %struct.status_line* %13, %struct.status_line** %4, align 8
  %14 = load %struct.client*, %struct.client** %3, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 2
  %16 = load %struct.session*, %struct.session** %15, align 8
  store %struct.session* %16, %struct.session** %6, align 8
  %17 = load %struct.client*, %struct.client** %3, align 8
  %18 = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.client*, %struct.client** %3, align 8
  %24 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %1
  store i32 0, i32* %2, align 4
  br label %121

29:                                               ; preds = %22
  %30 = load %struct.status_line*, %struct.status_line** %4, align 8
  %31 = getelementptr inbounds %struct.status_line, %struct.status_line* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = call i32 @memcpy(%struct.screen* %7, %struct.TYPE_6__* %32, i32 4)
  %34 = load %struct.client*, %struct.client** %3, align 8
  %35 = call i32 @status_line_size(%struct.client* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %29
  %40 = load %struct.status_line*, %struct.status_line** %4, align 8
  %41 = getelementptr inbounds %struct.status_line, %struct.status_line* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.client*, %struct.client** %3, align 8
  %44 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @screen_init(%struct.TYPE_6__* %42, i64 %46, i32 %47, i32 0)
  %49 = load %struct.client*, %struct.client** %3, align 8
  %50 = getelementptr inbounds %struct.client, %struct.client* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @screen_write_strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.client*, %struct.client** %3, align 8
  %55 = getelementptr inbounds %struct.client, %struct.client* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %53, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %39
  %60 = load %struct.client*, %struct.client** %3, align 8
  %61 = getelementptr inbounds %struct.client, %struct.client* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %59, %39
  %65 = load %struct.session*, %struct.session** %6, align 8
  %66 = getelementptr inbounds %struct.session, %struct.session* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @style_apply(%struct.grid_cell* %11, i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.status_line*, %struct.status_line** %4, align 8
  %70 = getelementptr inbounds %struct.status_line, %struct.status_line* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @screen_write_start(%struct.screen_write_ctx* %5, i32* null, %struct.TYPE_6__* %71)
  %73 = load %struct.status_line*, %struct.status_line** %4, align 8
  %74 = getelementptr inbounds %struct.status_line, %struct.status_line* %73, i32 0, i32 1
  %75 = load %struct.client*, %struct.client** %3, align 8
  %76 = getelementptr inbounds %struct.client, %struct.client* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @screen_write_fast_copy(%struct.screen_write_ctx* %5, i32* %74, i32 0, i32 0, i64 %78, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %5, i32 0, i32 %83, i32 0)
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %95, %64
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.client*, %struct.client** %3, align 8
  %89 = getelementptr inbounds %struct.client, %struct.client* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %87, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = call i32 @screen_write_putc(%struct.screen_write_ctx* %5, %struct.grid_cell* %11, i8 signext 32)
  br label %95

95:                                               ; preds = %93
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %85

98:                                               ; preds = %85
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %5, i32 0, i32 %100, i32 0)
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.client*, %struct.client** %3, align 8
  %104 = getelementptr inbounds %struct.client, %struct.client* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @screen_write_nputs(%struct.screen_write_ctx* %5, i64 %102, %struct.grid_cell* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = call i32 @screen_write_stop(%struct.screen_write_ctx* %5)
  %108 = load %struct.status_line*, %struct.status_line** %4, align 8
  %109 = getelementptr inbounds %struct.status_line, %struct.status_line* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.screen, %struct.screen* %7, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @grid_compare(i32 %112, i32 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %98
  %118 = call i32 @screen_free(%struct.screen* %7)
  store i32 0, i32* %2, align 4
  br label %121

119:                                              ; preds = %98
  %120 = call i32 @screen_free(%struct.screen* %7)
  store i32 1, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %117, %28
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @memcpy(%struct.screen*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @status_line_size(%struct.client*) #1

declare dso_local i32 @screen_init(%struct.TYPE_6__*, i64, i32, i32) #1

declare dso_local i64 @screen_write_strlen(i8*, i32) #1

declare dso_local i32 @style_apply(%struct.grid_cell*, i32, i8*) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @screen_write_fast_copy(%struct.screen_write_ctx*, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i32, i32) #1

declare dso_local i32 @screen_write_putc(%struct.screen_write_ctx*, %struct.grid_cell*, i8 signext) #1

declare dso_local i32 @screen_write_nputs(%struct.screen_write_ctx*, i64, %struct.grid_cell*, i8*, i32) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i64 @grid_compare(i32, i32) #1

declare dso_local i32 @screen_free(%struct.screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
