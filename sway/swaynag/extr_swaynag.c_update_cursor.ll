; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_update_cursor.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_update_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag = type { i32, i32, %struct.swaynag_pointer }
%struct.swaynag_pointer = type { i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wl_cursor = type { %struct.TYPE_2__** }

@.str = private unnamed_addr constant [14 x i8] c"XCURSOR_THEME\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"XCURSOR_SIZE\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"left_ptr\00", align 1
@INT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swaynag*)* @update_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cursor(%struct.swaynag* %0) #0 {
  %2 = alloca %struct.swaynag*, align 8
  %3 = alloca %struct.swaynag_pointer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl_cursor*, align 8
  store %struct.swaynag* %0, %struct.swaynag** %2, align 8
  %10 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %11 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %10, i32 0, i32 2
  store %struct.swaynag_pointer* %11, %struct.swaynag_pointer** %3, align 8
  %12 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %13 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %19 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @wl_cursor_theme_destroy(i64 %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %4, align 8
  store i32 24, i32* %5, align 4
  %25 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  store i64 0, i64* @errno, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strtoul(i8* %33, i8** %7, i32 10)
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* @errno, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %38, %32
  br label %44

44:                                               ; preds = %43, %28, %23
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %48 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul i32 %46, %49
  %51 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %52 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @wl_cursor_theme_load(i8* %45, i32 %50, i32 %53)
  %55 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %56 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  %57 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %58 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = call %struct.wl_cursor* @wl_cursor_theme_get_cursor(i64 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wl_cursor* %60, %struct.wl_cursor** %9, align 8
  %61 = load %struct.wl_cursor*, %struct.wl_cursor** %9, align 8
  %62 = getelementptr inbounds %struct.wl_cursor, %struct.wl_cursor* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %67 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %66, i32 0, i32 1
  store %struct.TYPE_2__* %65, %struct.TYPE_2__** %67, align 8
  %68 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %69 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %72 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @wl_surface_set_buffer_scale(i32 %70, i32 %73)
  %75 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %76 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %79 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = call i32 @wl_cursor_image_get_buffer(%struct.TYPE_2__* %80)
  %82 = call i32 @wl_surface_attach(i32 %77, i32 %81, i32 0, i32 0)
  %83 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %84 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %87 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %90 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %93 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %98 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = udiv i32 %96, %99
  %101 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %102 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %107 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = udiv i32 %105, %108
  %110 = call i32 @wl_pointer_set_cursor(i32 %85, i32 %88, i32 %91, i32 %100, i32 %109)
  %111 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %112 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @INT32_MAX, align 4
  %115 = load i32, i32* @INT32_MAX, align 4
  %116 = call i32 @wl_surface_damage_buffer(i32 %113, i32 0, i32 0, i32 %114, i32 %115)
  %117 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %3, align 8
  %118 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @wl_surface_commit(i32 %119)
  ret void
}

declare dso_local i32 @wl_cursor_theme_destroy(i64) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @wl_cursor_theme_load(i8*, i32, i32) #1

declare dso_local %struct.wl_cursor* @wl_cursor_theme_get_cursor(i64, i8*) #1

declare dso_local i32 @wl_surface_set_buffer_scale(i32, i32) #1

declare dso_local i32 @wl_surface_attach(i32, i32, i32, i32) #1

declare dso_local i32 @wl_cursor_image_get_buffer(%struct.TYPE_2__*) #1

declare dso_local i32 @wl_pointer_set_cursor(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl_surface_damage_buffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl_surface_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
