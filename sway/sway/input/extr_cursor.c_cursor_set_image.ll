; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_set_image.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_set_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { i8*, i32, i32, i64, %struct.wl_client*, i64, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wl_client = type { i32 }

@WL_SEAT_CAPABILITY_POINTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cursor_set_image(%struct.sway_cursor* %0, i8* %1, %struct.wl_client* %2) #0 {
  %4 = alloca %struct.sway_cursor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wl_client*, align 8
  %7 = alloca i8*, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wl_client* %2, %struct.wl_client** %6, align 8
  %8 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %9 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %8, i32 0, i32 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WL_SEAT_CAPABILITY_POINTER, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %66

19:                                               ; preds = %3
  %20 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %21 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %25 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %27 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %26, i32 0, i32 7
  store i32* null, i32** %27, align 8
  %28 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %29 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %31 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.wl_client*, %struct.wl_client** %6, align 8
  %33 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %34 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %33, i32 0, i32 4
  store %struct.wl_client* %32, %struct.wl_client** %34, align 8
  %35 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %36 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %66

40:                                               ; preds = %19
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %45 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @wlr_cursor_set_image(i32 %46, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %66

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strcmp(i8* %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51, %48
  %57 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %58 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %62 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @wlr_xcursor_manager_set_cursor_image(i32 %59, i8* %60, i32 %63)
  br label %65

65:                                               ; preds = %56, %51
  br label %66

66:                                               ; preds = %18, %39, %65, %43
  ret void
}

declare dso_local i32 @wlr_cursor_set_image(i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @wlr_xcursor_manager_set_cursor_image(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
