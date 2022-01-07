; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_input.c_update_cursor.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_input.c_update_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_seat = type { %struct.TYPE_5__*, %struct.swaybar_pointer }
%struct.TYPE_5__ = type { i32 }
%struct.swaybar_pointer = type { i32, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wl_cursor = type { %struct.TYPE_6__** }

@.str = private unnamed_addr constant [14 x i8] c"XCURSOR_THEME\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"XCURSOR_SIZE\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"left_ptr\00", align 1
@INT32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_cursor(%struct.swaybar_seat* %0) #0 {
  %2 = alloca %struct.swaybar_seat*, align 8
  %3 = alloca %struct.swaybar_pointer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wl_cursor*, align 8
  store %struct.swaybar_seat* %0, %struct.swaybar_seat** %2, align 8
  %11 = load %struct.swaybar_seat*, %struct.swaybar_seat** %2, align 8
  %12 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %11, i32 0, i32 1
  store %struct.swaybar_pointer* %12, %struct.swaybar_pointer** %3, align 8
  %13 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %14 = icmp ne %struct.swaybar_pointer* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %17 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %1
  br label %136

21:                                               ; preds = %15
  %22 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %23 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %28 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @wl_cursor_theme_destroy(i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %4, align 8
  store i32 24, i32* %5, align 4
  %33 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  store i64 0, i64* @errno, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strtoul(i8* %41, i8** %7, i32 10)
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* @errno, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %46, %40
  br label %52

52:                                               ; preds = %51, %36, %31
  %53 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %54 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %53, i32 0, i32 5
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %59 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %58, i32 0, i32 5
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %57
  %65 = phi i32 [ %62, %57 ], [ 1, %63 ]
  store i32 %65, i32* %9, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul i32 %67, %68
  %70 = load %struct.swaybar_seat*, %struct.swaybar_seat** %2, align 8
  %71 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wl_cursor_theme_load(i8* %66, i32 %69, i32 %74)
  %76 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %77 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %79 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.wl_cursor* @wl_cursor_theme_get_cursor(i32 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wl_cursor* %81, %struct.wl_cursor** %10, align 8
  %82 = load %struct.wl_cursor*, %struct.wl_cursor** %10, align 8
  %83 = getelementptr inbounds %struct.wl_cursor, %struct.wl_cursor* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %88 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %87, i32 0, i32 1
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %88, align 8
  %89 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %90 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @wl_surface_set_buffer_scale(i32 %91, i32 %92)
  %94 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %95 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %98 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = call i32 @wl_cursor_image_get_buffer(%struct.TYPE_6__* %99)
  %101 = call i32 @wl_surface_attach(i32 %96, i32 %100, i32 0, i32 0)
  %102 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %103 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %106 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %109 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %112 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sdiv i32 %115, %116
  %118 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %119 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sdiv i32 %122, %123
  %125 = call i32 @wl_pointer_set_cursor(i32 %104, i32 %107, i32 %110, i32 %117, i32 %124)
  %126 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %127 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @INT32_MAX, align 4
  %130 = load i32, i32* @INT32_MAX, align 4
  %131 = call i32 @wl_surface_damage_buffer(i32 %128, i32 0, i32 0, i32 %129, i32 %130)
  %132 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %3, align 8
  %133 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @wl_surface_commit(i32 %134)
  br label %136

136:                                              ; preds = %64, %20
  ret void
}

declare dso_local i32 @wl_cursor_theme_destroy(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @wl_cursor_theme_load(i8*, i32, i32) #1

declare dso_local %struct.wl_cursor* @wl_cursor_theme_get_cursor(i32, i8*) #1

declare dso_local i32 @wl_surface_set_buffer_scale(i32, i32) #1

declare dso_local i32 @wl_surface_attach(i32, i32, i32, i32) #1

declare dso_local i32 @wl_cursor_image_get_buffer(%struct.TYPE_6__*) #1

declare dso_local i32 @wl_pointer_set_cursor(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl_surface_damage_buffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl_surface_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
