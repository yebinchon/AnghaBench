; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_tilemap_editor_integration_example.c_editor_init.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_tilemap_editor_integration_example.c_editor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@edit_map = common dso_local global i32 0, align 4
@T_empty = common dso_local global i32 0, align 4
@T__num_types = common dso_local global i32 0, align 4
@T_reserved1 = common dso_local global i32 0, align 4
@T_entry = common dso_local global i32 0, align 4
@T_doorframe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@O_player = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Char\00", align 1
@O_robot = common dso_local global i32 0, align 4
@O_lockeddoor = common dso_local global i32 0, align 4
@O__num_types = common dso_local global i32 0, align 4
@O_platform = common dso_local global i32 0, align 4
@O_vplatform = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @editor_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @stbte_create_map(i32 20, i32 14, i32 8, i32 16, i32 16, i32 100)
  store i32 %2, i32* @edit_map, align 4
  %3 = load i32, i32* @edit_map, align 4
  %4 = load i32, i32* @T_empty, align 4
  %5 = call i32 @stbte_set_background_tile(i32 %3, i32 %4)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %28, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @T__num_types, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @T_reserved1, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @T_entry, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @T_doorframe, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @edit_map, align 4
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 0, %24
  %26 = call i32 @stbte_define_tile(i32 %23, i32 %25, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %18, %14, %10
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %6

31:                                               ; preds = %6
  %32 = load i32, i32* @edit_map, align 4
  %33 = load i32, i32* @O_player, align 4
  %34 = add nsw i32 256, %33
  %35 = call i32 @stbte_define_tile(i32 %32, i32 %34, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @edit_map, align 4
  %37 = load i32, i32* @O_robot, align 4
  %38 = add nsw i32 256, %37
  %39 = call i32 @stbte_define_tile(i32 %36, i32 %38, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @O_lockeddoor, align 4
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %65, %31
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @O__num_types, align 4
  %44 = sub nsw i32 %43, 2
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %41
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @O_platform, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* @O_vplatform, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @edit_map, align 4
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 256, %56
  %58 = call i32 @stbte_define_tile(i32 %55, i32 %57, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %64

59:                                               ; preds = %50
  %60 = load i32, i32* @edit_map, align 4
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 256, %61
  %63 = call i32 @stbte_define_tile(i32 %60, i32 %62, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %41

68:                                               ; preds = %41
  ret void
}

declare dso_local i32 @stbte_create_map(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @stbte_set_background_tile(i32, i32) #1

declare dso_local i32 @stbte_define_tile(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
