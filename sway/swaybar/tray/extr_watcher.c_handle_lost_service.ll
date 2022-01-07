; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_watcher.c_handle_lost_service.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_watcher.c_handle_lost_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_watcher = type { %struct.TYPE_3__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i8** }

@.str = private unnamed_addr constant [4 x i8] c"sss\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to parse owner change message: %s\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unregistering Status Notifier Item '%s'\00", align 1
@obj_path = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"StatusNotifierItemUnregistered\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Unregistering Status Notifier Host '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @handle_lost_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_lost_service(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.swaybar_watcher*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @sd_bus_message_read(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, i8** %9, i8** %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* @SWAY_ERROR, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i8* @strerror(i32 %24)
  %26 = call i32 @sway_log(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %129

28:                                               ; preds = %3
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %128, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to %struct.swaybar_watcher*
  store %struct.swaybar_watcher* %34, %struct.swaybar_watcher** %12, align 8
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %97, %32
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %12, align 8
  %38 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %100

43:                                               ; preds = %35
  %44 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %12, align 8
  %45 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %14, align 8
  %53 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %12, align 8
  %54 = call i64 @using_standard_protocol(%struct.swaybar_watcher* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load i8*, i8** %14, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @cmp_id(i8* %57, i8* %58)
  br label %66

60:                                               ; preds = %43
  %61 = load i8*, i8** %14, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 @strncmp(i8* %61, i8* %62, i32 %64)
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi i32 [ %59, %56 ], [ %65, %60 ]
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %66
  %71 = load i32, i32* @SWAY_DEBUG, align 4
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @sway_log(i32 %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  %74 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %12, align 8
  %75 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %13, align 4
  %79 = call i32 @list_del(%struct.TYPE_3__* %76, i32 %77)
  %80 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %12, align 8
  %81 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @obj_path, align 4
  %84 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %12, align 8
  %85 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 @sd_bus_emit_signal(i32 %82, i32 %83, i32 %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %14, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %12, align 8
  %92 = call i64 @using_standard_protocol(%struct.swaybar_watcher* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %70
  br label %100

95:                                               ; preds = %70
  br label %96

96:                                               ; preds = %95, %66
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %35

100:                                              ; preds = %94, %35
  %101 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %12, align 8
  %102 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @list_seq_find(%struct.TYPE_3__* %103, i32 (i8*, i8*)* @cmp_id, i8* %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %127

108:                                              ; preds = %100
  %109 = load i32, i32* @SWAY_DEBUG, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @sway_log(i32 %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %110)
  %112 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %12, align 8
  %113 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %12, align 8
  %123 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @list_del(%struct.TYPE_3__* %124, i32 %125)
  br label %127

127:                                              ; preds = %108, %100
  br label %128

128:                                              ; preds = %127, %28
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %21
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**, i8**, i8**) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @using_standard_protocol(%struct.swaybar_watcher*) #1

declare dso_local i32 @cmp_id(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @list_del(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @sd_bus_emit_signal(i32, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @list_seq_find(%struct.TYPE_3__*, i32 (i8*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
